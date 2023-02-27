<?php 
class thongtin {
    
    public $ma_sp;
    public $ten_sp;
    public $gia_sp;
    public $ghichu_sp;
    public $thongso_sp;
    public $mota_sp;
    public $hinhnen_sp;
}

if ($result->num_rows > 0) {
    // Load dữ liệu lên website
    while ($row = $result->fetch_assoc()) {
        $thongtin = new Thongtin();
        $thongtin->ma_sp = $row["ma_mohinh"];
        $thongtin->ten_sp = $row["ten"];
        $thongtin->gia_sp = $row["gia"];
        $thongtin->ghichu_sp = $row["danhgia"];
        $thongtin->thongso_sp = $row["thongso"];
        $thongtin->mota_sp = $row["mota"];
        $thongtin->hinhnen_sp = $row["hinhnen"];
        array_push($array, $thongtin);
    }
} 