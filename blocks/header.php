<header class="d-flex justify-content-center py-3">
    <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a href="index.php" class="nav-link px-2 link-secondary">Home</a></li>
        <li><a href="admin.php" class="nav-link px-2 link-dark">Admin Menu</a></li>
    </ul>
</header>

<div class="container">
    <form action="search.php" id="search_form" class="mt-3" method="GET">
        <input required minlength="3" autocomplete="off" class="search" name="word" type="search" placeholder="Find Movie By Title" value="">
        <input type="submit" class="search-btn" value="">
    </form>
</div>

<div class="container">
    <form action="search-star.php" id="search_form" class="mt-3" method="GET">
        <input required minlength="3" autocomplete="off" class="search" name="word" type="search" placeholder="Find Movie By Star Name" value="">
        <input type="submit" class="search-btn" value="">
    </form>
</div>

