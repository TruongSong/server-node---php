<!DOCTYPE html>
<html lang="en">
<?php
include "../general/head.php";
include "../general/header.php";
include "../general/connect.php";
if (isset($_POST['search'])) {
    $search = $_POST['search'];
    // $sql = "SELECT *  FROM tbl_mohinh  WHERE ten like '%$search%'";
    // $result = $con->query($sql);
    // $array = [];
    // include "../general/getdatabase.php";
    $data = file_get_contents("http://localhost:3000/mohinhsSearch/".$search);
    $json = json_decode($data, true);
}

function RenderColunsanpham($value)
{
    ob_start();
?>

    <div class='col-3 p-2'>
        <form action="manage_cart.php" method="post">
            <div class='card'>
                <img src='http://localhost:1997/dmsstore/<?= $value["hinhnen"] ?>' class='card-img-top' alt='...'>
                <div class='card-body'>
                    <h5 class='card-title '><?= $value["ten"] ?></h5>

                </div>
                <ul class='list-group list-group-flush'>
                    <li class='list-group-item'> Giá : <b style='color:red;' name='giathue'> <?= $value["gia"] ?></b></li>
                </ul>
                <div class='card-body'>
                    <a href='detail_paradigm.php?masp=<?php echo $value["ma_mohinh"]; ?>' class='card-link'><button type='button' class='btn btn-success'>See </button></a>
                    <button type='submit' name="add_to_cart" class='btn btn-success '>Add To Cart</button>
                    <input type="hidden" name="item_code" value="<?php echo $value["ma_mohinh"]; ?>">
                    <input type="hidden" name="item_image" value="<?php echo $value["hinhnen"]; ?>">
                    <input type="hidden" name="item_name" value="<?php echo $value["ten"]; ?>">
                    <input type="hidden" name="price" value="<?php echo $value["gia"]; ?>">

                </div>
            </div>
        </form>
    </div>

<?php
    return ob_get_clean();
}
?>

<body>
    <div class="container-fluid">
        <div class="row">

            <?php
            include "../general/menuright.php";
            ?>
            <div class="col-lg-9 p-5">

                <div class="row">
                    <?php

                    if (empty($json)) {
                        echo "
                        <script>
                          alert ('Không có kết quả tìm kiếm cho từ khóa : $search ');
                          window.location.href='index.php';
                        </script>
                        
                        ";
                    } else {
                        echo "<h4 class='text-center'> Mô Hình Sản Phẩm</h4>";
                        foreach ($json as $key => $value) {
                            echo RenderColunsanpham($value);
                        }
                    }

                    ?>
                </div>
            </div>
        </div>
    </div>

    <script>
        var listGiaTien = document.getElementsByName("giathue");
        listGiaTien.forEach(element => {
            element.innerHTML = parseInt(element.innerHTML).toLocaleString('it-IT', {
                style: 'currency',
                currency: 'VND'
            });
        });
    </script>
</body>

</html>