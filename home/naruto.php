<!DOCTYPE html>
<html lang="en">

<?php
include "../general/head.php";
include "../general/connect.php";
// $sql = "SELECT *  FROM tbl_mohinh WHERE ma_danhmuc = 3 ";
// $result = $con->query($sql);
// $array = [];
// include "../general/getdatabase.php";
$data = file_get_contents("http://localhost:3000/mohinhs/3");
$json = json_decode($data, true);
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
                    <a href='detail_paradigm.php?masp=<?php echo $value["ma_mohinh"]; ?>' class='card-link'><button type='button' class='btn btn-success'>See</button></a>
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

    <?php
    include "../general/header.php";
    ?>

    <div class="container-fluid">
        <div class="row">

            <?php
            include "../general/menuright.php";
            ?>
            <div class="col-lg-9 p-5">
                <h4 class="text-center"> Mô Hình Sản Phẩm Naruto</h4>
                <form name="kiemtra" action="manage_sort.php" method="GET" onsubmit="return validateform()">
                    <div>
                        <select name="sort_numeric" style="width: 195px; margin-bottom: 15px; font-size: 1rem;font-weight: 400;padding: 0.375rem 0.75rem;">
                            <option value="">Select option</option>
                            <option value="low-high" <?php if (isset($_GET['sort_numeric']) && $_GET['sort_numeric'] == "low-high") {
                                                            echo "selected";
                                                        } ?>>Tăng theo giá</option>
                            <option value="high-low" <?php if (isset($_GET['sort_numeric']) && $_GET['sort_numeric'] == "high-low") {
                                                            echo "selected";
                                                        } ?>>Giảm theo giá</option>
                        </select>
                        <button type="submit" style="background-color: #198754; border-color: #198754; vertical-align: unset;" class="input-group-text btn btn-primary" id="basic-addon2">Sort</button>
                        <input type="hidden" name="ma_danh_muc" value="3">
                    </div>
                </form>
                <div class="row">
                    <?php

                    foreach ($json as $key => $value) {
                        echo RenderColunsanpham($value);
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

    <script>
        function validateform() {
            var sort_numeric = document.kiemtra.sort_numeric.value;
            if (sort_numeric == null || sort_numeric == "") {
                alert("Bạn chưa lựa chọn loại sắp xếp theo giá !");
                return false;
            }
        }
    </script>
</body>

</html>