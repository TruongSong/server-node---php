<?php
include "../general/connect.php";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['submit'])) {
        $fullname = $_POST['name'];
        $email = $_POST['email'];
        $telephone = $_POST['phone'];
        $content = $_POST['content'];

        $query1 = "INSERT INTO tbl_lienhe( hoten, email, sodienthoai, noidung, ngaytao)
         VALUES ('$fullname','$email','$telephone','$content', now())";

        if (mysqli_query($con, $query1)) {
            echo "
            <script>
            alert('Gửi thông tin thành công ! Chúng tôi sẽ liên hệ với bạn sau');
             window.location.href='index.php';
            </script>
            ";
        } else {
            echo "
            <script>
            alert('sql error !');
             window.location.href='contact.php';
            </script>
            ";
        }
    }
}
