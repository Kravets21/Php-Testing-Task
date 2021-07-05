<?php

$title = strip_tags(trim(filter_var($_POST['title'], FILTER_SANITIZE_STRING)));
$year = strip_tags(trim(filter_var($_POST['year'], FILTER_SANITIZE_STRING)));
$format = strip_tags(trim(filter_var($_POST['format'], FILTER_SANITIZE_STRING)));
$stars = strip_tags(trim(filter_var($_POST['stars'], FILTER_SANITIZE_STRING)));


$error = '';
$success = 'done';

if (strlen($title) <=3)
{
    $error="Incorrect title!";
}

if ($year < 1850 || $year > 2021)
{
    $error="Incorrect year!";
}

if (!$format)
{
    $error="Incorrect format!";
}

if (strlen($stars) <=3)
{
    $error="Incorrect stars field!";
} elseif (preg_match("/(\d+)/s", $stars)) {
    $error="Incorrect stars field: it contains digits!";
} elseif (preg_match('[!"#$%&()*+./:;<=>?@[\\\]_`{|}~]*', $stars)) {
    $error="Incorrect stars field: it contains incorrect symbols!";
}

if($error!='')
{
    echo $error;
    exit();
}

$pdo = new PDO('mysql:host=localhost;dbname=webbylab;port=3306','root');

$sql = 'SELECT id FROM `movie` WHERE title = :title';
$query = $pdo->prepare($sql);
$query->execute(['title' => $title]);

$notUniqueMovie = $query->fetch(PDO::FETCH_OBJ);

if ($notUniqueMovie) {
    echo 'This Movie has been already added!';
    exit();
}

if (($title && $year  && $format && $stars)
    &&($title != ' ' && $year != ' ' && $format != ' ' && $stars != ' ')
) {
    $starNames = explode(",", $stars); // array of star names



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
