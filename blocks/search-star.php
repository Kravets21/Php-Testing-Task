<!DOCTYPE html>
<html lang="ru">

<head>
    <?php require_once 'head.php'; ?>
</head>

<body>

<?php require_once 'header.php'; ?>

<main>
    <div class="container">

        <div class="block_header">
            <div class="label_block">Star Search Results</div>
        </div>

            <?php
            $url = $_SERVER['REQUEST_URI'];
            $parts = parse_url($url);
            parse_str($parts['query'], $get_arguments);
            $search = $get_arguments['word'];

            $pdo = new PDO('mysql:host=localhost;dbname=webbylab','root');

            $sql = "SELECT id FROM `star` WHERE `name` LIKE '%$search%'";
            $query = $pdo->prepare($sql);
            $query->execute();
            $starsIds = $query->fetch(PDO::FETCH_ASSOC);
            $array = implode("','",$starsIds);
            $sqlForStars = 'SELECT * 
                            FROM `movie` 
                            WHERE `id` IN(
                            SELECT `movie_id` 
                            FROM `movie_star` 
                            WHERE `star_id` IN ('.$array.')
                            );';

            $query = $pdo->prepare($sqlForStars);
            $query->execute($starsIds);

            while($row = $query->fetch(PDO::FETCH_OBJ)) {
                echo "
                                <div class='prev_block'>
                                    <div class='prev_info'>
                                    <a href='movie.php?id=$row->id'>
                                        <ul class='content_info'>
                                            <li class='prev_li mb-2'><b>Title:</b> $row->title</li>
                                            <li class='prev_li mb-2'><b>Year:</b> $row->year</li>
                                            <li class='prev_li mb-2'><b>Format:</b> $row->format</li>
                                        </ul>
                                    </a>
                                    </div>
                                </div>
                            ";
            }
            ?>
    </div>
</main>

<?php require_once 'javascript.php'; ?>
</body>

</html>



    

