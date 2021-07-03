<main>
   <div class="container">
            <div class="flex_wrap">
                <div class="content_wrap">

                    <div class="block_header">
                        <div class="label_block">List of all films</div>
                    </div>

                    <div class="films-list">
                        <?php
                        $pdo = new PDO('mysql:host=localhost;dbname=webbylab','root');
                        $sql = 'SELECT * FROM `movie` ORDER BY `title`';
                        $query = $pdo->prepare($sql);
                        $query->execute();
                        while($row = $query->fetch(PDO::FETCH_OBJ)) {
                            echo "
                                            <div class='prev_block'>
                                                <div class='prev_info'>
                                                <a href='movie.php?id=$row->id'><b>Title:</b> $row->title</a>
                                                <ul class='content_info'>
                                                    <li class='prev_li mb-2'><b>Year:</b> $row->year</li>
                                                    <li class='prev_li mb-2'><b>Format:</b> $row->format</li>
                                                </ul>
                                                </div>
                                            </div>
                                        ";
                        }


                        ?>

                    </div>

                </div>
            </div>
        </div>
</main>
