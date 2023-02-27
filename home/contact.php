<!DOCTYPE html>
<html lang="en">
<?php
include "../general/head.php";
include "../general/header.php";
?>
<head>
  <link rel="stylesheet" href="../general/css/main.css">

  <title>Trang Liên Hệ & Nhận Phản Hồi Khách Hàng</title>
</head>
<body>
    <form action="handle_contact.php" method="POST">
    <div class="form_feedback">
      <div class="feedback">
          <div class="left"></div>
          <div class="right">
            <h2>Contact Us</h2>
            <div class="input_row">
              <input type="text" class="form_control" id="name" placeholder="Họ và Tên" name="name" required >
              <small class="error">Error Message</small>
            </div>
            <div class="input_row">
              <input type="email" class="form_control" id="email" placeholder="Email" name="email" required>
              <small>Error Message</small>
            </div>
            <div class="input_row">
              <input type="text" class="form_control" id="phone" placeholder="Số Điện Thoại" name="phone" required>
              <small>Error Message</small>
            </div>
            <!-- <div class="input_row">
              <input type="text" class="form_control" id="title" placeholder="Tiêu Đề" name="title" required>
              <small>Error Message</small>
            </div> -->
            <div class="input_row">
              <textarea type="text" class="form_control area" id="content" placeholder="Nội Dung" name="content" required></textarea>
              <small>Error Message</small>
            </div>
            <div class="input_row">
              <button type="submit" class="send" id="btn_send" name = "submit">Send</button>
            </div>
        </div>
      </div>
    </div>
    </form>
</body>

<script src="../general/script/main.js"></script>

</html>