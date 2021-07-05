<?php

$id = $_GET['id'];

if ($id) {
    $user = 'root';
    $pdo = new PDO('mysql:host=localhost;dbname=webbylab;port=3306',$user);

    $sql = 'DELETE FROM `movie` WHERE `id`= :id';
    $query = $pdo->prepare($sql);
    $query->execute(['id' => $id]);

    header('Location: ' . $_SERVER['HTTP_REFERER']);
}

?>
