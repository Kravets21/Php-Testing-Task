<?php

    $title = $_POST['title'];
    $year = $_POST['year'];
    $format = $_POST['format'];
    $stars = $_POST['stars'];

if ($title && $year && $format && $stars) {
    $starNames = explode(",", $stars); // array of star names

    $pdo = new PDO('mysql:host=localhost;dbname=webbylab;port=3306','root');

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

    echo 'Done';
} else {
    echo 'Error - empty field(s)';
}






?>
