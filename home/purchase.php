<?php
include "../general/connect.php";
session_start();
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['purchase'])) {
        $fullname = $_POST['fullname'];
        $telephone = $_POST['telephone'];
        $address = $_POST['address'];
        $message = $_POST['message'];
        $pay_mode = $_POST['pay_mode'];

        $query1 = "INSERT INTO tbl_info_customer( hoten, sodienthoai, diachi, tinnhan, pt_thanhtoan, ngaytao)
         VALUES ('$fullname','$telephone','$address','$message','$pay_mode', now())";
        if (mysqli_query($con, $query1)) {
            $order_id = mysqli_insert_id($con);
            $query2 = "INSERT INTO tbl_order_customer( ma_kh, masp, tensp, giasp, soluong, ngaytao)
        VALUES (?, ?, ?, ?, ? ,now())";
            $stmt = mysqli_prepare($con, $query2);
            if ($stmt) {
                mysqli_stmt_bind_param($stmt, "issii", $order_id, $masp, $tensp, $giasp, $soluong);
                foreach ($_SESSION['cart'] as $key => $value) {
                    $masp = $value['item_code'];
                    $tensp = $value['item_name'];
                    $giasp = $value['price'];
                    $soluong = $value['quantity'];
                    mysqli_stmt_execute($stmt);
                }
                unset($_SESSION['cart']);
                echo "
            <script>
            alert('Order successful!');
             window.location.href='index.php';
            </script>
            ";
            } else {
                echo "
            <script>
            alert('sql error !');
             window.location.href='mycart.php';
            </script>
            ";
            }
        } else {
            echo "
                <script>
                alert('sql error !');
                 window.location.href='mycart.php';
                </script>
                ";
        }
    }
}
