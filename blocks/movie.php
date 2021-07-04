<!DOCTYPE html>
<html lang="ru">

<head>
    <?php require_once 'head.php'; ?>
</head>

<body>

<?php require_once 'header.php'; ?>

<?php
    $pdo = new PDO('mysql:host=localhost;dbname=webbylab','root');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $url = $_SERVER['REQUEST_URI'];

    $parts = parse_url($url);
    parse_str($parts['query'], $get_arguments); // получаем айди мультика из url

    $id = $get_arguments['id'];

    $sql = 'SELECT * FROM `movie` WHERE `id` = :id';

    $sqlForStars =
    'SELECT * 
    FROM `star` 
    WHERE `id` IN(
    SELECT `star_id` 
    FROM `movie_star` 
    WHERE `movie_id` = :id);';

    try {
        $query = $pdo->prepare($sql);
        if (!$query) {
            echo "\nPDO::errorInfo():\n";
            print_r($pdo->errorInfo());
        }
        $query->execute(['id' => $id]);
    } catch (PDOException $e) {
        if ($e->getCode() != '00000')
            echo "Error: ".$e->getMessage();
    }
    $movie = $query->fetch(PDO::FETCH_OBJ);

    $movie_title = $movie->title;
    $movie_year = $movie->year;
    $movie_format = $movie->format;
?>

<section>
    <div class="container">
        <div class="row movie-item">
            <div class="column">
                <p>Title: <?=$movie_title?></p>
                <p>Year: <?=$movie_year?></p>
                <p>Format: <?=$movie_format?></p>
                <p></p>
            </div>
             <div class="column">
                <ul><p><b>Stars</b></p>
                    <?php
                    $query = $pdo->prepare($sqlForStars);
                    $query->execute(['id' => $id]);
                    while($star = $query->fetch(PDO::FETCH_OBJ)) {
                        echo "<li class='prev_li mb-2'> $star->name</li> ";
                    }
                    ?>
                </ul>
             </div>
        </div>
    </div>
</section>

<?php require_once 'javascript.php'; ?>
</body>

</html>
