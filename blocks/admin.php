<!DOCTYPE html>
<html lang="ru">

<head>
    <?php require_once 'head.php'; ?>
</head>

<body>

<?php require_once 'header.php'; ?>

<section class="admin">
    <div class="btn-cntl">
        <button type="button" class="btn btn-secondary btn-lg ml-5 mr-1 add_movie">Add Movie</button>
        <button type="button" class="btn btn-secondary btn-lg mr-1 import_movie">Import Movies</button>
    </div>
    <div class="container">

        <div class="admin-menu">
            <div class="successBlock" id="successBlock"></div>
            <div id="errorBlock"></div>
            <form class='add_movie_form' enctype=multipart/form-data>
                <label  for="formGroupExampleInput">Title</label>
                <input  type="text" class="form-control" id="title" required>
                <label  for="formGroupExampleInput">Year</label>
                <input  type="text" class="form-control" id="year" required>
                <label   for="formGroupExampleInput">Format</label>
                <br><br>
                <select class="form-select" id="format">
                    <option value="DVD">DVD</option>
                    <option value="VHS">VHS</option>
                    <option value="BLU-RAY">BLU-RAY</option>
                </select>
                <br><br>
                <label  for="formGroupExampleInput">Stars </label>
                <textarea  type="text" class="form-control" id="stars" required></textarea>
                <label>(Use coma ',' for separating) Example: John Derreck, Will Smith, Lora Tailor</label><br><br>
                <button class="btn btn-secondary mt-3 " type="button">Добавить</button>
            </form>
            <form enctype="multipart/form-data" class='import_movie_form'>
                <label>Import</label>
                <input type="file" accept="text/plain" id="import-file">
                <button class="btn btn-secondary mt-3" type="button">Import</button>
            </form>
        </div>

    </div>


</section>

<?php require_once 'javascript.php'; ?>


<script src="../js/admin.js"></script>


</body>

</html>

