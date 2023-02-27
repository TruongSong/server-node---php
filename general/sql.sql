create database animestore;

create table animestore.tbl_danhmuc(
ma_danhmuc int(5) not null primary key AUTO_INCREMENT ,
ten_danhmuc varchar(20)  unique not null,
ngaytao datetime
);

create table animestore.tbl_mohinh(
ma_danhmuc int(5) not null,
ma_mohinh varchar(20)  unique not null,
ten varchar(50) not null,
gia int ,
danhgia varchar(2000) not null,
thongso varchar(2000) not null,
mota varchar(2000) not null,
hinhnen varchar(100),
ngaytao datetime
CONSTRAINT fk_key FOREIGN KEY (ma_danhmuc) REFERENCES animestore.tbl_danhmuc(ma_danhmuc)
);

insert into 
animestore.tbl_danhmuc (ten_danhmuc, ngaytao) 
values (N'Mô hình One Piece', now()),
(N'Mô hình Dragon Ball', now()),
(N'Mô hình Naruto', now());


insert into 
animestore.tbl_mohinh (ma_danhmuc, ma_mohinh, ten, gia, danhgia, thongso, mota, hinhnen, ngaytao) 
values (1, 'msp001_onepiece',N'Mô hình Ace',529000,N'<h5>TẠI SAO NÊN MUA HÀNG TẠI DMS STORE </h5>
                <P>Sản phẩm độc lạ được chọn lọc kỹ càng.</P>
                <P>Cửa hàng đồ chơi uy tín, giá rẻ nhiều ưu đãi.</P>
                <P>Chế độ bảo hành 1:1 không tính chi phí phát sinh.</P>
                <P>Tập trung vào những sản phẩm mô hình anime chất lượng.</P>' ,N'<h3>Thông số sản phẩm</h3>
                    <p>Nhân Vật: Portgas D Ace</p>
                    <p>Series: One Piece</p>
                    <p>Chất Liệu : Nhựa PVC cao cấp</p>
                    <p>Tình trạng: New, full box</p>
                    <p>Kích thước: 25cm</p>
                    <p>Mô hình Portgas D Ace Gear 4 cực ngầu được làm từ nhựa PVC cao cấp </p>' ,N'<h5>MỘT VÀI THÔNG TIN VỀ ACE </h5>
                <p> Tên tiếng Anh : Portgas D Ace.</p>
                <p> Xuất hiện lần đầu: Chapter 154; Episode 91.</p>
                <p> Tổ chức: Băng hải tặc Râu Trắng.</p>
                <p> Nghề nghiệp: Hải tặc, Đội trưởng đội 2 băng hải tặc Râu Trắng , Đặc điểm dễ nhận dạng nhất của anh là những hình xăm trên cơ thể.
                    Ace có một hình xăm lớn mang biểu tượng của băng hải tặc Râu Trắng trên lưng – hai chiếc xương chéo màu tím phía sau đầu lâu màu tím với bộ râu trắng.</p>
                <p> Portgas D Ace tuy không cùng chung máu mủ ruột thịt với người em trai nuôi Luffy, nhưng ngoại hình hai anh em khá giống nhau.</p>' , '/general/image/ace.png' , now()),
(1, 'msp002_onepiece',N'Mô hình Donflamingo',1290000,N'<h5>TẠI SAO NÊN MUA HÀNG TẠI DMS STORE </h5>
                <P>Sản phẩm độc lạ được chọn lọc kỹ càng.</P>
                <P>Cửa hàng đồ chơi uy tín, giá rẻ nhiều ưu đãi.</P>
                <P>Chế độ bảo hành 1:1 không tính chi phí phát sinh.</P>
                <P>Tập trung vào những sản phẩm mô hình anime chất lượng.</P>' ,N'<h3>Thông số sản phẩm</h3>
                    <p>Nhân Vật: Donquixote Doflamingo</p>
                    <p>Series: One Piece</p>
                    <p>Chất Liệu : Nhựa PVC cao cấp</p>
                    <p>Tình trạng: New, full box</p>
                    <p>Kích thước: 35cm</p>
                    <p>Mô hình Donquixote Doflamingo cực ngầu được làm từ nhựa PVC cao cấp. Sản phẩm mô phỏng nhân vật Doflamingo – nhân vật phản diện chính trong Arc Dressrosa. </p>' ,N'<h5>MỘT VÀI THÔNG TIN VỀ DONQUIXOTE DOFLAMINGO </h5>
                <p> Tên tiếng Anh: Donquixote Doflamingo.</p>
                <p> Nghề nghiệp: Hải tặc, Thuyền trưởng, Vua của Dressrosa, Môi giới Thế giới ngầm.</p>
                <p> Biệt danh: “Thiên Dạ Xoa”.</p>
                <p> Donquixote Doflamingo là một thành viên trong Thất Vũ Hải, là thuyền trưởng của băng hải tặc Donquixote, là Vua của Dressrosa và cũng là người môi giới trong Thế giới ngầm – nơi mà anh ta sử dụng bí danh “Joker”.</p>
                <p> Tiền treo thưởng của anh trước khi gia nhập Thất Vũ Hải là 340,000,000. Mặc dù xuất hiện thường xuyên trong nửa đầu của seri nhưng khi đó anh chưa có nhiều vai trò lắm trong cốt truyện. Sau timeskip, Joker là nhân vật phản diện chính trong Arc Dressrosa và là nhân vật phản diện trung tâm trong Saga Liên minh Hải tặc.</p>' , '/general/image/donflamingo.png' , now()),
(1, 'msp003_onepiece',N'Mô hình Katakuri',1500000,N'<h5>TẠI SAO NÊN MUA HÀNG TẠI DMS STORE </h5>
                <P>Sản phẩm độc lạ được chọn lọc kỹ càng.</P>
                <P>Cửa hàng đồ chơi uy tín, giá rẻ nhiều ưu đãi.</P>
                <P>Chế độ bảo hành 1:1 không tính chi phí phát sinh.</P>
                <P>Tập trung vào những sản phẩm mô hình anime chất lượng.</P>' ,N'<h3>Thông số sản phẩm</h3>
                    <p>Nhân Vật: Charlotte Katakuri</p>
                    <p>Series: One Piece</p>
                    <p>Chất Liệu : Nhựa PVC cao cấp</p>
                    <p>Tình trạng: New, full box</p>
                    <p>Kích thước: 37cm</p>
                    <p>Mô hình Charlotte Katakuri cực ngầu được làm từ nhựa PVC cao cấp. Sản phẩm mô phỏng nhân vật Katakuri – một Tư lệnh ngọt mạnh nhất của bằng Big Mom với cây thương Mogura. </p>' ,N'<h5>MỘT VÀI THÔNG TIN VỀ CHARLOTTE KATAKURI </h5>
                <p> VỊ TRÍ: Là con trai thứ 2, đứa con thứ 3 của Tứ hoàng Big Mom. Bộ trưởng bột mì (Đảo Komugi), Chỉ huy Ngọt.</p>
                <p> NGOẠI HÌNH: Là thành viên mạnh nhất trong băng hải tặc Big Mom, Katakuri là một người hoàn hảo đến từng centimet, hơn nữa anh còn rất mạnh từ khi còn nhỏ. Một vụ tai nạn đã khiến anh có hai vết sẹo lớn từ mép miệng đến gần mang tai khiến anh trông rất đáng sợ cùng bộ răng.</p>
                <p> Tổ chức: Băng hải tặc Big Mom.</p>
                <p> Nghề nghiệp: Hải tặc, Đội trưởng đội 1 băng hải tặc Bid Mom ,
                    Đặc điểm dễ nhận dạng nhất của anh là những hình xăm trên cơ thể.
                    katakuri có một hình xăm lớn mang biểu tượng của băng hải tặc Bid Mom trên lưng
                    – hai chiếc xương chéo màu tím phía sau đầu lâu màu tím với bộ Bid Mom.</p>
                <p> TÍNH CÁCH: Mặc dù Katakuri có vẻ nghiêm túc, lạnh lùng boy, mặt ngầu không cảm xúc nhưng thực chất anh là một người nghiện bánh donut nặng.</p>' , '/general/image/katakuri.jpg' , now()),
(1, 'msp004_onepiece',N'Mô hình zoro',1150000,N'<h5>TẠI SAO NÊN MUA HÀNG TẠI DMS STORE </h5>
                <P>Sản phẩm độc lạ được chọn lọc kỹ càng.</P>
                <P>Cửa hàng đồ chơi uy tín, giá rẻ nhiều ưu đãi.</P>
                <P>Chế độ bảo hành 1:1 không tính chi phí phát sinh.</P>
                <P>Tập trung vào những sản phẩm mô hình anime chất lượng.</P>' 
                ,N'<h3>Thông số sản phẩm</h3>
                    <p>Nhân Vật : Roronoa Zoro (Arc Wano)</p>
                    <p>Series: One Piece</p>
                    <p>Chất Liệu : Nhựa PVC cao cấp</p>
                    <p>Tình trạng: New, full box</p>
                    <p>Kích thước: 25cm</p>
                    <p>Mô hình Roronoa Zoro  cực ngầu được làm từ nhựa PVC cao cấp </p>' 
                    ,N'<h5>MỘT VÀI THÔNG TIN VỀ RORONOA ZORO </h5>
                <p> Tên tiếng Anh : Roronoa Zoro.</p>
                <p> Xuất hiện lần đầu: Chapter 1; Episode 1.</p>
                <p> Tổ chức: Băng hải tặc Luffy.</p>
                <p> Nghề nghiệp: Hải tặc, Đội trưởng đội 1 băng hải tặc luffy ,
                    Đặc điểm dễ nhận dạng nhất của anh là những hình xăm trên cơ thể.
                    Zoro có một hình xăm lớn mang biểu tượng của băng hải tặc luffy trên lưng
                    – hai chiếc xương chéo màu tím phía sau đầu lâu màu tím với bộ luffy.</p>
                <p> Roronoa Zoro tuy không cùng chung máu mủ ruột thịt với Luffy,
                    nhưng luôn chiến đấu cùng nhau qua các trận đấu.</p>' , '/general/image/zoro.png' , now()),
                    (2, 'msp001_dragon',N'Mô hình goku ssj4',829000,N'<h5>TẠI SAO NÊN MUA HÀNG TẠI DMS STORE </h5>
                <P>Sản phẩm độc lạ được chọn lọc kỹ càng.</P>
                <P>Cửa hàng đồ chơi uy tín, giá rẻ nhiều ưu đãi.</P>
                <P>Chế độ bảo hành 1:1 không tính chi phí phát sinh.</P>
                <P>Tập trung vào những sản phẩm mô hình anime chất lượng.</P>' 
                ,N'<h3>Thông số sản phẩm</h3>
                    <p>Nhân Vật : Goku SSJ4</p>
                    <p>Series: Bảy viên ngọc rồng z</p>
                    <p>Chất Liệu : Nhựa PVC cao cấp</p>
                    <p>Tình trạng: New, full box</p>
                    <p>Kích thước: 16cm x 8cm</p>
                    <p>Mô hình Goku SSJ4  cực ngầu được làm từ nhựa PVC cao cấp </p>' 
                    ,N'<h5>MỘT VÀI THÔNG TIN VỀ MÔ HÌNH GOKU SSJ4 2D </h5>
                <p> Siêu sai jan cấp 4 được coi là sư tiến hóa khủng khiếp nhất của goku kể cả sức mạnh lẫn ngoại hình.</p>
                <p>  Sự thay đổi rõ rệt từ màu da và chiếc đuôi cực chiến này là giai đoạn rất mong chờ của anh em yêu thích goku.</p>
                <p> Ngoại hình cứng cáp, các chi tiết như ánh mắt hay tổng thể ngoại hình đều được làm tỉ mỉ. </p>
                <p> Màu sắc em này thì khỏi phải bàn màu tươi, đậm do được sơn bàng sơn cao cấp nên vấn đề bong tróc là không thể sảy ra.</p>
                <p> Theo đánh giá tại cửa hàng thì đây sẽ là sản phẩm cực hót trong thời gian tới.</p>' , '/general/image/goku_ssj4.jpg', now()),
(2, 'msp002_dragon',N'Mô hình goku ssj2',449000,N'<h5>TẠI SAO NÊN MUA HÀNG TẠI DMS STORE </h5>
                <P>Sản phẩm độc lạ được chọn lọc kỹ càng.</P>
                <P>Cửa hàng đồ chơi uy tín, giá rẻ nhiều ưu đãi.</P>
                <P>Chế độ bảo hành 1:1 không tính chi phí phát sinh.</P>
                <P>Tập trung vào những sản phẩm mô hình anime chất lượng.</P>' 
                ,N'<h3>Thông số sản phẩm</h3>
                    <p>Nhân Vật : Goku SJJ cấp 2</p>
                    <p>Series: One Piece</p>
                    <p>Chất Liệu : Nhựa PVC cao cấp</p>
                    <p>Tình trạng: New, full box</p>
                    <p>Kích thước: 32cm x 24cm</p>
                    <p>Mô hình Goku cấp 2  cực ngầu được làm từ nhựa PVC cao cấp </p>' 
                    ,N'<h5>MỘT VÀI THÔNG TIN VỀ GOKU </h5>
                <p> Son Goku – với cái tên ban đầu là Kakarotto, sinh ra trong gia đình Bardock sống tại hành tinh Vegeta.</p>
                <p> Kakarotto được cử đến Trái Đất khi còn rất nhỏ với mưu đồ lớn lên sẽ xâm chiếm hành tinh này.</p>
                <p> Khi xuống đến Trái Đất, Kakarotto được ông Gohan nhặt được và nhận nuôi, đặt tên là Son Goku.</p>
                <p>  Son Goku là một người có tâm hồn thuần khiết, khá ngây thơ, vui vẻ và rất dũng cảm, luôn sẵn sàng hy sinh bản thân mình để bảo vệ cho sự an toàn cũng như hòa bình của Trái Đất.</p>
                <p> Son Goku được xem là một trong những nhân vật mạnh mẽ nhất trong toàn bộ series Bảy viên ngọc rồng và hiện là người Saiyan mạnh nhất từng sống.</p>' , '/general/image/goku_ssj2.jpg', now()),
(2, 'msp003_dragon',N'Mô hình marinbu',288000,N'<h5>TẠI SAO NÊN MUA HÀNG TẠI DMS STORE </h5>
                <P>Sản phẩm độc lạ được chọn lọc kỹ càng.</P>
                <P>Cửa hàng đồ chơi uy tín, giá rẻ nhiều ưu đãi.</P>
                <P>Chế độ bảo hành 1:1 không tính chi phí phát sinh.</P>
                <P>Tập trung vào những sản phẩm mô hình anime chất lượng.</P>' 
                ,N'<h3>Thông số sản phẩm</h3>
                    <p>Nhân Vật : Ma Bư</p>
                    <p>Series: Bảy viên ngọc rồng</p>
                    <p>Chất Liệu : Nhựa PVC cao cấp</p>
                    <p>Tình trạng: New, full box</p>
                    <p>Kích thước: 14cm x 9cm</p>
                    <p>Mô hình Ma Bư  cực ngầu được làm từ nhựa PVC cao cấp </p>' 
                    ,N'<h5>MỘT VÀI THÔNG TIN VỀ  MA BƯ MẬP </h5>
                <p> Ma bư ban đầu là một người có tính cách hiền lành, chân thật và rất tốt bụng, đáng yêu, dễ thương.</p>
                <p> Sau khi bị thôi thúc với sự tức giận và để cái ác xâm chiếm, tên này đã có tính cách độc ác, ích kỷ và xấu xa hơn.</p>
                <p>  Hắn gây nên những trận chiến kinh điển và biến hóa với nhiều hình dạng khác nhau.</p>
                <p> Ma bư có cấu tạo như cao su, có thể bất tử dù bị nổ tung thì hắn vẫn có thể trở lại hình dạng ban đầu bằng cách kết dính các phần lại với nhau. </p>
                <p> Hầu như với khả năng tái sinh của mình thì Ma bư chưa bao giờ thua trong bất kỳ trận chiến nào.</p>' ,'/general/image/marinbu.jpg', now()),
(2, 'msp004_dragon',N'Mô hình Cell',590000,N'<h5>TẠI SAO NÊN MUA HÀNG TẠI DMS STORE </h5>
                <P>Sản phẩm độc lạ được chọn lọc kỹ càng.</P>
                <P>Cửa hàng đồ chơi uy tín, giá rẻ nhiều ưu đãi.</P>
                <P>Chế độ bảo hành 1:1 không tính chi phí phát sinh.</P>
                <P>Tập trung vào những sản phẩm mô hình anime chất lượng.</P>' 
                ,N'<h3>Thông số sản phẩm</h3>
                    <p>Nhân Vật : Xên bọ hung</p>
                    <p>Series: Bảy viên ngọc rồng</p>
                    <p>Chất Liệu : Nhựa PVC cao cấp</p>
                    <p>Tình trạng: New, full box</p>
                    <p>Kích thước: 15cm x 9cm</p>
                    <p>Mô hình Cell  cực ngầu được làm từ nhựa PVC cao cấp </p>' 
                    ,N'<h5>MỘT VÀI THÔNG TIN VỀ  XÊN BỌ HUNG CELL </h5>
                <p> Ở trạng thái đầu tiên, hắn có khả năng đánh thắng được cả Android 17 và Piccolo sau khi hấp thụ đủ con người.</p>
                <p> Cell gần như có tất cả các khả năng của các nhân vật mà hắn có gen. Ngoài ra, hắn còn có khả năng tự phục hổi của Namek và Zenkai của người Saiyan.</p>
                <p> Sang trạng thá bán hoàn hảo, đôi cánh của hắn không còn quá dài như ở trạng thái đầu .</p>
                <p> Trạng thái hoàn hảo  là trạng thái mà Cell giống con người nhất. Đuôi của hắn đã thu gọn lại để phục vụ cho việc sinh ra những Cell Jr. Giống như 2 trạng thái đầu, luồng hào quang hắn phát ra có màu vàng giống như các Super Saiyan.</p>
                <p> Ở trạng thái tối thượng , ngoại hình của Cell không quá khác so với trạng thái hoàn hảo, ngoài việc luồng KI của hắn đã có những tia sét giống như Super Saiyan 2.</p>' , '/general/image/cell.jpeg', now()),
                (3, 'msp001_naruto',N'Mô hình Hatake Kakashi Anbu Dog Resin',1600000,N'<h5>TẠI SAO NÊN MUA HÀNG TẠI DMS STORE </h5>
                <P>Sản phẩm độc lạ được chọn lọc kỹ càng.</P>
                <P>Cửa hàng đồ chơi uy tín, giá rẻ nhiều ưu đãi.</P>
                <P>Chế độ bảo hành 1:1 không tính chi phí phát sinh.</P>
                <P>Tập trung vào những sản phẩm mô hình anime chất lượng.</P>' 
                ,N'<h3>Thông số sản phẩm</h3>
                    <p>Nhân Vật : Hatake Kakashi Anbu Dog Resin</p>
                    <p>Series: Naruto</p>
                    <p>Chất Liệu : Nhựa PVC cao cấp</p>
                    <p>Tình trạng: New, full box</p>
                    <p>Kích thước: 25cm</p>
                    <p>Mô hình kakashi  cực ngầu được làm từ nhựa PVC cao cấp </p>' 
                    ,N'<h5>MỘT VÀI THÔNG TIN VỀ KAKASHI </h5>
                <p> Kakashi được coi là một shinobi thiên tài; anh tốt nghiệp trường đào tạo ninja khi 5 tuổi, thành Chunin năm 6 tuổi. </p>
                <p> Cha của anh là 1 trong những ninja huyền thoại của làng Lá từng được so sánh với Sannin, được gọi là "Nanh Trắng của làng Lá." Sau đó vài năm, cha của Kakashi bị buộc tội vì đã bỏ nhiệm vụ đi cứu một người đồng đội của mình. </p>
                <p> Năm 13 tuổi, Kakashi đã đạt danh hiệu Jounin và sáng tạo ra chiêu thức Chidori (Thiên điểu)theo tên của thầy mình là Minato (Hokage đệ tứ).</p>
                <p> Anh được giao nhiệm vụ làm đội trưởng cùng các đồng đội là Uchiha Obito và Rin, tuy nhiên, quan hệ giữa anh và Obito không được tốt đẹp. Nhóm anh có nhiệm vụ đánh bom cây cầu của địch.</p>
                <p>  Khi nỗ lực cứu Rin, Kakashi mất con mắt trái lúc đỡ đòn cho Obito. Trong khoảnh khắc đó, lần đầu tiên trong đời, Obito đánh thức sức mạnh con mắt Sharingan của mình và giết chết kẻ thù..</p>' , '/general/image/kakashi_reshin.png', now()),
(3, 'msp002_naruto',N'Mô hình Hatake Kakashi Dog Resin',2000000,N'<h5>TẠI SAO NÊN MUA HÀNG TẠI DMS STORE </h5>
                <P>Sản phẩm độc lạ được chọn lọc kỹ càng.</P>
                <P>Cửa hàng đồ chơi uy tín, giá rẻ nhiều ưu đãi.</P>
                <P>Chế độ bảo hành 1:1 không tính chi phí phát sinh.</P>
                <P>Tập trung vào những sản phẩm mô hình anime chất lượng.</P>' 
                ,N'<h3>Thông số sản phẩm</h3>
                    <p>Nhân Vật : Hatake Kakashi Dog Resin</p>
                    <p>Series: Naruto</p>
                    <p>Chất Liệu : Nhựa PVC cao cấp</p>
                    <p>Tình trạng: New, full box</p>
                    <p>Kích thước: 15cm x 9cm</p>
                    <p>Mô hình Hatake Kakashi  cực ngầu được làm từ nhựa PVC cao cấp </p>'
                     ,N'<h5>MỘT VÀI THÔNG TIN VỀ  HATAKE KAKASHI </h5>
                <p> Kakashi được biết đến với tên gọi ninja copy và Sharingan Kakashi do khả năng dùng con mắt Sharingan bên trái của anh để copy lại các thuật ninja của đối phương.</p>
                <p> Con mắt này lúc Obito trao tặng cho Kakashi mới chỉ phát triển ở dạng một của Sharingan nhưng Kakashi đã luyện tập và phát triển lên dạng 2 của con mắt này.</p>
                <p> Ở phần 2 Kakashi đã luyện thành công Mangekyo Sharingan có khả năng di chuyển một vật thể sang 1 không gian khác.</p>
                <p> Khả năng dùng Sharigan của Kakashi đã được Uchiha Itachi đánh giá là không thua kém gì mình.</p>
                <p> Tuy nhiên do con mắt Sharigan của Kakashi là con mắt cấy ghép nên nó luôn ở trạng thái hoạt động tiêu tốn rất nhiều Chakra. Sau khi sử dung Mangekyo Sharingan 3 lần trong 1 ngày, Kakashi đã phải nằm viện trong 1 tuần do kiệt sức. Vì thế, Kakashi luôn che con mắt trái lại và chỉ dùng đến trong những trận đánh quan trọng. Với con mắt Sharigan, Kakashi đã copy hơn 1000 thuật ninja.</p>' , '/general/image/kakashi.png', now()),
(3, 'msp003_naruto',N'Mô hình Akatsuki Pain Resin Naruto',550000,N'<h5>TẠI SAO NÊN MUA HÀNG TẠI DMS STORE </h5>
                <P>Sản phẩm độc lạ được chọn lọc kỹ càng.</P>
                <P>Cửa hàng đồ chơi uy tín, giá rẻ nhiều ưu đãi.</P>
                <P>Chế độ bảo hành 1:1 không tính chi phí phát sinh.</P>
                <P>Tập trung vào những sản phẩm mô hình anime chất lượng.</P>' 
                ,N'<h3>Thông số sản phẩm</h3>
                    <p>Nhân Vật : Akatsuki Pain Resin Naruto</p>
                    <p>Series: Naruto</p>
                    <p>Chất Liệu : Nhựa PVC cao cấp</p>
                    <p>Tình trạng: New, full box</p>
                    <p>Kích thước: 25cm x 9cm</p>
                    <p>Mô hình Akatsuki Pain  cực ngầu được làm từ nhựa PVC cao cấp </p>' 
                    ,N'<h5>MỘT VÀI THÔNG TIN VỀ  PAIN LỤC ĐẠO </h5>
                <p> Cậu bé Uzumaki PAIN sinh ra tại làng Mưa, ngôi làng bị tàn phá bởi chiến tranh.</p>
                <p>Từ khi cậu còn nhỏ, Uchiha Madara đã bí mật cấy ghép đôi mắt Rinnegan lên người cậu.</p>
                <p> PAIN trở thành trẻ mồ côi khi cha mẹ cậu bị giết hại và cũng chính khoảnh khắc này, PAIN đã lần đầu tiên kích động thức tỉnh sức mạnh của đôi mắt Rinnegan và giết chết hai ninja làng Lá. .</p>
                <p>  Sau khi mất cha mẹ, PAIN lang thang kiếm thức ăn và gặp hai đứa trẻ mồ côi khác như cậu: Yahiko và Konan. .</p>
                <p>Họ cùng nương tựa vào nhau và ăn trộm thức ăn của những người bán hàng. Trong một lần họ được gặp những Sannin làng Lá, cho họ thức ăn. Khi Orochimaru đề nghị giết họ để không phải chịu đựng nỗi đau của chiến tranh, Jiraiya đã chọn ở lại và dạy họ cách tự chăm sóc nhau.</p>' , '/general/image/naruto.png', now()),
(3, 'msp004_naruto',N'Mô hình Akatsuki Uchiha Obito',750000,N'<h5>TẠI SAO NÊN MUA HÀNG TẠI DMS STORE </h5>
                <P>Sản phẩm độc lạ được chọn lọc kỹ càng.</P>
                <P>Cửa hàng đồ chơi uy tín, giá rẻ nhiều ưu đãi.</P>
                <P>Chế độ bảo hành 1:1 không tính chi phí phát sinh.</P>
                <P>Tập trung vào những sản phẩm mô hình anime chất lượng.</P>' 
                ,N'<h3>Thông số sản phẩm</h3>
                    <p>Nhân Vật : Akatsuki Uchiha Obito</p>
                    <p>Series:Naruto</p>
                    <p>Chất Liệu : Nhựa PVC cao cấp</p>
                    <p>Tình trạng: New, full box</p>
                    <p>Kích thước: 22cm</p>
                    <p>Mô hình Obito  cực ngầu được làm từ nhựa PVC cao cấp </p>' 
                    ,N'<h5>MỘT VÀI THÔNG TIN VỀ  XÊN BỌ HUNG OBITO </h5>
                <p>Obito lớn lên mà không biết cha mẹ mình là ai; trong anime, anh được để lại cho bà ngoại chăm sóc.</p>
                <p> Cảm thấy cô độc trên thế giới, Obito mơ ước trở thành Hokage để người dân trong làng thừa nhận sự tồn tại của anh.</p>
                <p> Anh đăng ký vào Học viện để giúp anh đạt được mục tiêu đó, nơi anh phát triển sự cạnh tranh một chiều với Kakashi, người có tài năng thiên bẩm và sự nổi tiếng mà anh ghen tị. Anh cũng trở thành bạn thân của Rin Nohara , người mà cuối cùng anh đã yêu .</p>
                <p> Cuối cùng sau khi tốt nghiệp vài năm sau, Obito, Rin và Kakashi được xếp vào một đội dưới sự lãnh đạo của Minato Namikaze.</p>
                <p>  Trong anime, như một bài kiểm tra vòng loại cuối cùng, 
                Minato đã cho cả đội đánh chuông để kiểm tra kỹ năng hợp tác của họ. 
                Obito không thể tự mình hoàn thành điều này nhưng bằng cách hợp lực với Rin và Kakashi, họ đã thành công trong việc lấy chuông, dạy cho Obito giá trị của tinh thần đồng đội. 
                 Đội sau đó tham gia Kỳ thi Chūnin , nơi Obito bị đánh bại ở vòng thứ ba trong trận đấu một chọi một với Might Guy . 
                 Kakashi sẽ tiếp tục đánh bại Guy trong một trận đấu tiếp theo, thăng cấp anh lên chūnin và gây ấn tượng với Rin. Háo hức với sự chú ý của Rin, Obito đã tập luyện không ngừng, cuối cùng tự mình vươn lên cấp bậc chūnin.
                  Sự phấn khích của anh ấy chỉ tồn tại trong thời gian ngắn khi Kakashi ngay sau đó trở thành một jōnin, một lần nữa nhận được lời khen ngợi của Rin và sự oán giận của Obito.</p>' , '/general/image/obito.jpg', now());








// bang mua hang va thanh toan

create table animestore.tbl_info_khachhang(
ma_kh int(100) primary key auto_increment,
hoten varchar(100),
sodienthoai varchar(15),
diachi varchar(100),
tinnhan varchar(200),
pt_thanhtoan varchar(100),
ngaytao datetime
);

create table animestore.tbl_order_khachhang(
ma_kh int(100) ,
masp varchar(20),
tensp varchar(100),
giasp int(100),
soluong int(100),
ngaytao datetime
);

create table animestore.tbl_lienhe(
ma int(5) not null primary key AUTO_INCREMENT ,
hoten varchar(100),
email varchar(100),
sodienthoai varchar(15),
noidung varchar(100),
ngaytao datetime
);
