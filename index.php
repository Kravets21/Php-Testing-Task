<!DOCTYPE html>     <!-- Точка вхождения сайта(шаблон). В файле .htaccess сделали перенаправление в этот файл  -->
<html lang="ru">

<head>
    <?php require_once 'blocks/head.php'; ?>    <!-- все подключения из тега head  -->
</head>

<body>

<?php require_once 'blocks/header.php'; ?> <!-- шапка сайта -->

<?php
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);
    $current_page = explode('?', $_SERVER['REQUEST_URI']);  // считываем адресс текущей странички, чтобы понять какой контент на ней должен быть
    $current_page = $current_page[0];
    $current_page = substr($current_page, strrpos($current_page, '/' )+1);  // после вхождения символа "/" последняя строка

    if ($current_page === '') {
        require_once 'blocks/index.php';
    } else {
        require_once 'blocks/'.$current_page; // контент сайта
    }
?>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="./js/script.js"></script>

</body>

</html>