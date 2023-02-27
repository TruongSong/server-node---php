<?php 
$servername = "localhost";
$username = "root";
$password = "";
$database = "animestore";
$con = mysqli_connect($servername, $username, $password, $database);

if (!$con) {
    echo "error connecting";
} 
?>