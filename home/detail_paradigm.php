<!DOCTYPE html>
<html lang="en">
<?php include "../general/head.php"; ?>

<body>
    <?php
    include "../general/connect.php";

    include "../general/header.php";
    $masp = $_GET['masp'];
    //$sql = "SELECT *  FROM tbl_mohinh where ma_mohinh = '$masp'";
    //$result = $con->query($sql);
    //$array = [];
    //include "../general/getdatabase.php";

    $data = file_get_contents("http://localhost:3000/mohinhsDetail/".$masp);
    $json = json_decode($data,true);
    ?>
    <div class="container-fluid">

        <?php
        foreach ($json as $key => $value) {
            echo ' <div class="row">

            <div class="col-5 p-5">
                <img class = "img-thumbnail" src="http://localhost:1997/dmsstore' . $value["hinhnen"] . '">
            </div>
            <div class="col-5 p-5">
                <h1>' . $value["ten"] . '</h1>
                <div class="navbar-brand p-4">
                ' . $value["thongso"] . '
                </div>
            </div>

        </div>

        <div class="row p-4" style="display:block;">
            <div class="col navbar-brand p-4" style="white-space: normal;">
            ' . $value["mota"] . '
            </div>

            <div class="col navbar-brand p-4">
            ' . $value["danhgia"] . '
            </div>


        </div>';
        }
            
        ?>

    </div>
</body>

</html>