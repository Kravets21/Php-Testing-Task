<?php

$title = $_POST['title'];

$msg = 'Error. Empty Field';

if ($title) {
    $msg = 'Done';

    $user = 'root';
    $pdo = new PDO('mysql:host=localhost;dbname=webbylab;port=3306',$user);

    $sql = 'DELETE FROM `movie` WHERE `title`= :title';
    $query = $pdo->prepare($sql);
    $query->execute(['title' => $title]);
}


echo $msg;

?>
