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
            <div class="label_block">List of all films</div>
        </div>

        <div class="row films-list">
            <?php
            $pdo = new PDO('mysql:host=localhost;dbname=webbylab','root');
            $sql = 'SELECT * FROM `movie` ORDER BY `title`';
            $query = $pdo->prepare($sql);
            $query->execute();
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
                                    <a href='delete.php?id=$row->id' class='btn btn-danger delete_movie_form'>Delete</a>
                                    </div>
                                </div>
                        
                            ";
            }


            ?>

        </div>
   </div>
</main>

<?php require_once 'javascript.php'; ?>
</body>

</html>