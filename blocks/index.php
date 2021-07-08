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

       <ul class="pagination">
           <?php
           $pdo = new PDO('mysql:host=localhost;dbname=webbylab','root');
           $url = $_SERVER['REQUEST_URI'];
           $parts = parse_url($url);
           if(isset($parts['query']))
           {
               parse_str($parts['query'], $get_arguments);
               $page = $get_arguments['page'];
           }
           else
           {
               $page = 1;
           }

           $items_on_page = 14; // сколько на одной страничке будет мультиков
           $from = ($page - 1) * $items_on_page; // формула для показа С КАКОГО начинать на след страничке
           $sql = "SELECT COUNT(*) as count FROM `movie`";
           $query = $pdo->prepare($sql);
           $query->execute();
           $count = $query->fetch(PDO::FETCH_ASSOC); // кол-во movie ВСЕГО
           $page_numbers = ceil($count['count']/ $items_on_page); // сколько у нас будет страничек для пагинации
           $prev = $page-1;
           $next = $page+1;
           if($page != 1 && $page_numbers)
           {
               echo "<li class=\"disabled next\"><a href=\"index.php?page=$prev\"> < </a></li>";
           }
           for($i = 1; $i <= $page_numbers; $i++)
           {
               if($page == $i)
               {
                   $class = ' class="active"';
               }
               else
               {
                   $class = '';
               }
               echo "<li$class><a href=\"index.php?page=$i\">$i</a></li>";
           }
           if($page != $page_numbers && $page_numbers)
           {
               echo "<li class=\"disabled next\"><a href=\"index.php?page=$next\"> > </a></li>";
           }
           ?>
       </ul>

        <div class="row films-list">
            <?php
            $sql = "SELECT * FROM `movie` ORDER BY LOWER(title) COLLATE 'utf8_unicode_ci' LIMIT $from, $items_on_page";
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
                                    <a class='btn btn-danger delete_movie_form' type='button' data-toggle='modal' data-target='#deleteModal'>Delete</a>
                                    </div>
                                </div>
                                
                                <div class='modal fade' id='deleteModal' tabindex='-1' role='dialog' aria-labelledby='deleteModalLabel' aria-hidden='true'>
                                    <div class='modal-dialog' role='document'>
                                        <div class='modal-content'>
                                            <div class='modal-header'>
                                                <h5 class='modal-title' id='deleteModalLabel'>Delete</h5>
                                                <button type='button' class='close' data-dismiss='modal' aria-label='Close'>
                                                    <span aria-hidden='true'>&times;</span>
                                                </button>
                                            </div>
                                            <div class='modal-body'>
                                                Are you sure you want to delete this movie?
                                            </div>
                                            <div class='modal-footer'>
                                                <button type='button' class='btn btn-secondary' data-dismiss='modal'>Close</button>
                                                <a href='delete.php?id=$row->id' class='btn btn-primary'>Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        
                            ";
            }


            ?>
        </div>
   </div>
</main>

<?php require_once 'javascript.php'; ?>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>

</html>