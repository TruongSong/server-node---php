<?php session_start(); ?>
<nav class="navbar navbar-dark bg-dark ">
    <div class="container-fluid">
        <a href="../home/index.php" class="navbar-brand">DMS STORE</a>
        <div style="flex: 0.9 0 0%;">
            <form name="form" action="search.php" method="POST" onsubmit="return validateform()" class="  d-flex">
                <input class="form-control me-2" name="search" type="search" placeholder="Search" aria-label="Search">
                
                <button class="btn btn-success" name="submit" type="submit">Search</button>
            </form>
        </div>
        <div>
            <?php
            $count = 0;
            if (isset($_SESSION['cart'])) {
                $count = count($_SESSION['cart']);
            }
            ?>
            <a href="../home/index.php" class="navbar-brand " style="margin-right: 2.5rem;">Home</a>
            <a href="../home/onepiece.php" class="navbar-brand" style="margin-right: 2.5rem;">Categories</a>
            <a href="../home/contact.php" class="navbar-brand" style="margin-right: 2.5rem;">About Us</a>
            <a href="#" class="navbar-brand" style="margin-right: 2.5rem;">Sign Up</a>
            <a href="../home/mycart.php" class="navbar-brand" style="margin-right: 2.5rem;">My Cart (<?php echo $count ?>)</a>
        </div>


    </div>

</nav>

<script>
    function validateform() {
        var search = document.form.search.value;
        if (search == null || search == "") {
            alert("Bạn chưa nhập từ khóa tìm kiếm !");
            return false;
        }
    }
</script>