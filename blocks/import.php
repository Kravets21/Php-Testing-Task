<?php

$importFile = $_FILES['importFile'];

$fileName = basename($importFile['name']);

if ($fileName) {

    move_uploaded_file($importFile['tmp_name'], $fileName);

    $file = fopen($fileName, "r");
}

if (filesize($fileName) == 0) {
    echo "The file is empty";
    exit();
}

$title = null;
$year = null;
$format = null;
$stars = [];

$savedCount = 0;

if ($file) {
    while(!feof($file)) {


        $data = explode(" ", fgets($file));

        if (isset($data[1]) && (strlen($data[1]) != '' || strlen($data[1]) != ' ')) {

            if ($data[0] == 'Title:') {
                unset($data[0]);
                $title = implode(' ', $data);
            }

            if (isset($data[0]) && $data[0] == 'Release') {
                $year = $data[2];
            }

            if (isset($data[0]) && $data[0] == 'Format:') {
                $format = $data[1];
            }

            if (isset($data[0]) && $data[0] == 'Stars:') {
                unset($data[0]);

                foreach ($data as $key => $value) {

                    if (strripos($data[$key], ',')) { // if comma is in string then combine privious + current to make full name
                        $name = $data[$key-1].' '. $value;
                        $stars[] = chop($name, ','); // remove coma
                    }
                }

                if ($title && $year && $format && $stars) {
                    $starNames = [];

                    foreach ($stars as $starName) {
                        $starNames[] = ltrim($starName);
                    }

                    $starNames = array_unique($starNames); // delete not unique stars

                    $pdo = new PDO('mysql:host=localhost;dbname=webbylab;port=3306','root');

                    $sql = 'SELECT id FROM `movie` WHERE title = :title';
                    $query = $pdo->prepare($sql);
                    $query->execute(['title' => $title]);

                    $notUniqueMovie = $query->fetch(PDO::FETCH_OBJ);

                    if ($notUniqueMovie) {
                        continue;
                    }

                    $sql = 'INSERT INTO movie (title, year, format) VALUES(?,?,?)'; // add MOVIE

                    $query = $pdo->prepare($sql);
                    $query->execute([$title, $year, $format]);

                    $sql = 'SELECT id FROM movie WHERE title = :title'; // FIND MOVIE ID
                    $query = $pdo->prepare($sql);
                    $query->execute(['title' => $title]);

                    $fetchedMovieId = $query->fetch(PDO::FETCH_NUM);
                    $movieId = 0;

                    foreach ($fetchedMovieId as $id) { // convert array to int
                        $movieId = $id;
                        break;
                    }

                    foreach ($starNames as $starName) { // VERY bad choice to do query in a loop BUT i was in a hurry :(
                        $sql = 'INSERT INTO star (name) VALUES(?)'; // add star

                        $query = $pdo->prepare($sql);
                        $query->execute([$starName]);

                        $sql = 'SELECT id FROM star WHERE name = :starName'; // FIND star ID
                        $query = $pdo->prepare($sql);
                        $query->execute(['starName' => $starName]);

                        $fetchedStarId = $query->fetch(PDO::FETCH_NUM);
                        $starId = 0;

                        foreach ($fetchedStarId as $id) { // convert array to int
                            $starId = $id;
                            break;
                        }

                        $sql = 'INSERT INTO movie_star (movie_id, star_id) VALUES(?,?)'; // insert many to many relation

                        $query = $pdo->prepare($sql);
                        $query->execute([$movieId, $starId]);
                    }

                    $savedCount++;
                }
                $stars = null;
            }

        }

    }

    fclose($file);
}

if ($savedCount == 0) {
    echo $savedCount.' Movies were added';
} else {
    echo 'Done';
}
