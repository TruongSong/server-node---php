<!DOCTYPE html>
<html lang="en">

<?php
include "../general/head.php";
include "../general/header.php";

?>

<body>
    <div class=" container">
        <div class="row">
            <div class="col-lg-12 text-center border rounded bg-light my-5">
                <?php
                if (empty($_SESSION['cart'])) {
                    echo "<script>
                    alert(' Chưa có sản phẩm nào trong giỏ hàng !') ;
                    window.location.href='index.php';
                         </script>
             ";
                }
                ?>
                <h1 style="color:red; ">Giỏ hàng</ style="color:red;">
            </div>

            <div class="col-lg-12">
                <div class="border bg-light rounded p-4">
                    <table class="table">
                        <thead class="table table-dark table-hover text-center">
                            <tr class="navbar-brand">
                                <th scope="col">Sản Phẩm </th>
                                <th scope="col">Tên </th>
                                <th scope="col">Giá Bán</th>
                                <th scope="col">Số Lượng</th>
                                <th scope="col">Tổng Tiền </th>
                                <th scope="col"></th>

                            </tr>
                        </thead>
                        <tbody class="text-center">
                            <?php
                            $path = "http://localhost:1997/dmsstore";
                            if (isset($_SESSION['cart'])) {
                                foreach ($_SESSION['cart'] as $key => $value) {
                                    echo '
                                <tr class = "navbar-brand" >
                                <th scope="row"> <img src="' . $path . $value["item_image"] . '" style = "width : 50px;" ></th>
                                <td>' . $value["item_name"] . '</td>
                                <td>' . $value["price"] . ' <input type="hidden" class ="iprice" value = "' . $value["price"] . '"></td>
                                <td>
                                <form action = "manage_cart.php" method = "post" >
                                <input class = "text-center iquantity" name = "mod_quantity" onchange = "this.form.submit();" type ="number" value = "' . $value["quantity"] . '" min="1" max="10">
                                <input type = "hidden" name = "item_name" value = "' . $value["item_name"] . '">
                                </form>
                                </td>
                            
                                <td class = "itotal" ></td>
                                <td>
                                <form action = "manage_cart.php" method = "post" >
                                <button  name ="remove_item" class = "btn btn-sm btn-outline-danger" > REMOVE </button> 
                                <input type = "hidden" name = "item_name" value = "' . $value["item_name"] . '">
                                </form>
                                </td>
                            </tr>
                                ';
                                }
                            }
                            ?>
                        </tbody>

                    </table>
                </div>
            </div>
            <div class="col-lg-12 text-center border rounded bg-light my-5">
                <h1 style="color:red;">Đặt hàng</h1>
            </div>
            <div class="col-lg-12 ">
                <div class="border bg-light rounded p-4">
                    <table class="table table-dark table-hover my-4 ">
                        <thead class="my-4">
                            <tr>
                                <th scope="col">Tổng tiền : <span class="text-right" style="color : red;" id="gtotal"></span> </th>
                            </tr>
                        </thead>

                    </table>

                    <h5 class="text-right" style="color:red;" id="gtotal"></h5>
                    <br>
                    <?php
                    if (isset($_SESSION['cart']) && count($_SESSION['cart']) > 0) {
                    ?>
                        <form name="kiemtra" action="purchase.php" onsubmit="return validateform()" method="post">
                            <table class="table table-dark table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">Thông tin người đặt hàng</th>

                                    </tr>
                                </thead>

                            </table>
                            <div class="form-group">
                                <label class="navbar-brand my-2">Họ và tên</label>
                                <input type="text" name="fullname" class="form-control">
                            </div>

                            <div class="form-group my-2">
                                <label class="navbar-brand my-2">Số điện thoại </label>
                                <input type="number" id="telephone" name="telephone" class="form-control">
                            </div>

                            <div class="form-group my-2">
                                <label class="navbar-brand my-2">Địa chỉ </label>
                                <input type="text" name="address" class="form-control ">
                            </div>


                            <table class="table table-dark table-hover my-4 ">
                                <thead class="my-4">
                                    <tr>
                                        <th scope="col">Thông tin khác</th>
                                    </tr>
                                </thead>

                            </table>


                            <div class="mb-3">
                                <label for="exampleFormControlTextarea1" class="form-label navbar-brand">Tin nhắn</label>
                                <textarea class="form-control" name="message" id="exampleFormControlTextarea1" rows="3"></textarea>
                            </div>

                            <table class="table table-dark table-hover my-4 ">
                                <thead class="my-4">
                                    <tr>
                                        <th scope="col">Hình thức thanh toán</th>
                                    </tr>
                                </thead>

                            </table>

                            <div class="form-check my-4">
                                <input class="form-check-input " type="radio" name="pay_mode" value="COD" id="flexRadioDefault1" required>
                                <label class="form-check-label " for="flexRadioDefault1">
                                    Thanh toán tiền mặt
                                </label>
                            </div>
                            <br>
                            <button  style="background-color: #198754; border-color: #198754;" type="submit" class="btn btn-primary btn-block navbar-brand " name="purchase">Đặt hàng</button>
                        </form>
                    <?php
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>

    <script>
        var gt = 0;
        var iprice = document.getElementsByClassName('iprice');
        var iquantity = document.getElementsByClassName('iquantity');
        var itotal = document.getElementsByClassName('itotal');
        var gtotal = document.getElementById('gtotal');

        function subtotal() {
            gt = 0;
            for (i = 0; i < iprice.length; i++) {
                itotal[i].innerHTML = (iprice[i].value) * (iquantity[i].value);
                itotal[i].innerHTML = parseInt(itotal[i].innerHTML).toLocaleString('it-IT', {
                    style: 'currency',
                    currency: 'VND'
                });
                gt = gt + (iprice[i].value) * (iquantity[i].value);
            }
            gtotal.innerHTML = gt;
            gtotal.innerHTML = parseInt(gtotal.innerHTML).toLocaleString('it-IT', {
                style: 'currency',
                currency: 'VND'
            });
        }

        subtotal();
    </script>

    <script>
        function validateform() {

            var fullname = document.kiemtra.fullname.value;
            var telephone = document.kiemtra.telephone.value;
            var address = document.kiemtra.address.value;
            var telephone_input = document.getElementById('telephone');


            if (fullname == null || fullname == "") {
                alert("Họ tên không được để trống !");
                return false;
            } else if (telephone == null || telephone == "") {
                alert("Số điện thoại không được để trống !");
                return false;
            } else if (address == null || address == "") {
                alert("Địa chỉ không được để trống !");
                return false;
            }

            var test_telephone = /((09|03|07|08|05)+([0-9]{8})\b)/g;
            if (!test_telephone.test(telephone_input.value)) {
                alert('Vui lòng nhập đúng số điện thoại của việt nam !');
                telephone_input.focus;
                return false;
            }
        }
    </script>
</body>

</html>