<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chitietsanpham.aspx.cs" Inherits="DoAnWeb.chitietsanpham" %>

<!DOCTYPE html>
<html>
<head>
    <script src="Scripts/jquery-3.3.1.js"></script>
	<title>abc</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
	<link rel="stylesheet" type="text/css" href="Content/ctietsp.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style type="text/css">
        .auto-style1 {
            width: 101px;
            height: 71px;
            margin-left: 0px;
        }
    </style>
</head>
<body>
     <form runat="server">
	<!-- thanhmenu -->
	<div class="container-fluid fixed-top"  id="menu">
        <div class="col-md-1"></div>
		<div class="container">
            
			<div class="row" >
    		<div class="col-md-11">
    			  <nav class="navbar navbar-expand-lg " id="menu">
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                      <li class="nav-item">
                        <a class="nav-link" href="default.aspx">Trang Chủ</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="sanpham.aspx">Sản Phẩm</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="giohang.aspx">Giỏ Hàng</a>
                      </li>
                        <li class="nav-item">
                        <a class="nav-link" href="#">Liên Hệ</a>
                      </li>
                   <li class="nav-item">
                        <a class="nav-link" href="capnhatthongtin.aspx">Tài Khoản</a>
                      </li>
   
                       </ul>
                    <form class="form-inline my-2 my-lg-0" id="search1">
                      <input class="form-control mr-sm-2" type="search"  id="timkiem" placeholder="tìm kiếm trong trang" aria-label="Search">
                      <button class="btn btn-outline-success my-2 my-sm-0" type="submit" style="font-weight: bold; color: white; border-color: white;">Tìm Kiếm</button>
                    </form>
                  </div>
                </nav>
    		</div>
                <div class="col-md-1" id="btndangxuat">
                    <asp:Button ID="btndang_xuat" class="btn btn-danger"  runat="server" Text="Đăng Xuất" OnClick="btndang_xuat_Click"/>
                </div>
    		
  		</div>
		</div>
  		
	</div>
	<!-- thanh menu -->
	<!-- thanh slide quang cao -->	
	<!-- thanh quang cao -->
	<!-- thanh mat hang -->
	<!-- thanh noi dung chinh -->
    
	<div class="container-fluid " id="bao_content">
		<div class="container" id="main_content">
			<div class="row" >
			<div class="col-md-3">
                <!--The Menu trai-->
               	<div class="list-group">
				  <a href="#" class="list-group-item list-group-item-action">Giá: Cao -> Thấp</a>
				  <a href="#" class="list-group-item list-group-item-action">Giá: Thấp -> Cao</a>
				  <a href="#" class="list-group-item list-group-item-action">Mức độ nổi tiếng</a>
				  <a href="#" class="list-group-item list-group-item-action">Yêu Thích</a>
				</div>
				<div class="list-group" style="margin-top: 15px;">
				  <a href="#" class="list-group-item list-group-item-action">Adidas</a>

				  <a href="#" class="list-group-item list-group-item-action">Nike</a>
				
				</div>
				<!--The Menu trai-->
			</div>
			<!-- the bottom noi dung -->
                <asp:Literal ID="load_ctsp" runat="server">

                </asp:Literal>
            <div class="col-md-4" >
                <div style="">
                    <asp:Image ID="anhsanpham" alt="..." class="img" width="350px" height="200px" runat="server" />
                   <br /> <span style="font-size:15px; font-weight:bold">Chia sẻ sản phẩm</span> <img src="Img/Facebook-2-512.png" width="40px" height="40px" />
                    <img src="Img/zalo.png" width="40px" height="40px" />
                    <img src="Img/twitter.png" width="40px" height="40px" />
                    <img src="Img/insta.png" width="40px" height="40px" />
                </div>
            </div>
            <div class="col-md-5">
                <span  style="font-size:25px;" class="badge badge-secondary">Thông Tin Chi Tiết Về Sản Phẩm</span>
                <span><asp:Label ID="tensanpham" runat="server" Text="Label" Font-Size="20px"  ></asp:Label></span>
                <span> <asp:Label ID="giasanpham" runat="server" Text="Label" Font-Size="20px"  ></asp:Label>  </span> 
                <span><asp:Label ID="kichcosanpham" runat="server" Text="Label" Font-Size="20px"  ></asp:Label></span>
                <div class="soluong">
                     <span style="font-size:20px; ">Số lượng</span>
                     <input id="quantity" type="number" name="quantity" min="1" value="1" class="tc item-quantity">
                </div>
                <br />
               <a id="themvaogio" class="btn btn-light"  style="border-color:#e90052;" href="javascript:ThemVaoGioHang()" >Thêm vào giỏ</a> 
                <a id="muangay" class="btn btn-light"  style="border-color:#e90052;"  href="javascript:MuaNgay()" >Mua ngay</a> 
               
            </div>
			<!-- the bottom noi dung -->
		    </div>
            <div class="row">
                <div class="col-md-3" ></div>
                <div class="col-md-9" style="text-align:justify">
                    <h2 style="font-size:20px;">Mô tả sản phẩm:</h2>
                    <figure class="figure" >
                        <asp:Image ID="anhmota" class="figure-img img-fluid rounded" runat="server"  />
                        <figcaption class="figure-caption">Hình ảnh trên chân với đôi giày Nike Air</figcaption>
                    </figure>
                    <br />
                    <span>
                        <asp:Literal ID="mota" runat="server"></asp:Literal></span>
                </div>
            </div>
            <!--The san pham khác-->
            <div class="row" style="margin-top:20px;">
                <div class="col-md-3"></div>
                <div class="col-md-9" >
                    <span style="font-size:15px; margin-left:280px;" class="badge badge-secondary";" >Bảng Hướng Dẫn Chọn Size Giày
                    </span>
                    <div style="margin:15px;">
                         <img src="Img/giay-nam-ha-noi.png"/>
                    </div>
                </div>
            </div>
            <!--The san pham khác-->
	</div>
    </div>
	<!-- thanh noi dung chinh -->
	<!-- thanh mat hang -->
	 <!-- thanh footer -->
	 <div id="footer">
	 	<div class="container" id="content_foot">
	 		<div class="row">
	 			<div class="col-md-3">
	 			<span>Hỗ trợ khách hàng</span>
	 			<ul>
         		 <li><a href="">Liên hệ</a> </li>

         		 <li><a href="">Hướng dẫn thanh toán</a></li>
         		 <li><a href="">Chính sách đổi trả</a></li>
         		 <li><a href="">Câu hỏi thường gặp</a></li>
    		    </ul>
	 		</div>
	 		<div class="col-md-3">
	 			<span>Tin tức - sự kiện</span>
	 			<ul>
         		 <li><a href="">Cách chọn giày bóng đá hợp chân</a> </li>

         		 <li><a href="">Adidas tung ra thị trường mẫu giày mới 2019</a></li>
    		    </ul>
	 		</div>
	 		<div class="col-md-3">
	 			<span>Sản phẩm ưa chuộng</span>
	 			<ul>
          <li><a href="">Adidas Predator 19.1</a></li>

          <li><a href="">Adidas Copa 19</a></li>

          <li><a href="">Nike Mercurial XL</a></li>
        </ul>
	 		</div>
	 		<div class="col-md-3">
	 			<span>Kết nối với chúng tôi</span>
	 			<div style="padding: 5px 5px;"><img src="Img/facebook.png">Facebook
                        <img src="Img/Tweet.png">Tweeter 

	 			</div>
                 <div style="padding: 5px 5px;"><img src="Img/Gplus.png">Google+
                 <img  src="Img/youtube.png">Youtube

                </div>
        <div style="padding: 5px 5px;">
           <img src="Img/phone2.png"> Hotline: 0337731177
        </div>
	 		</div>
	 		</div>
	 		
	 	</div>
	 </div>
     </form>
</body>
     <script type="text/javascript">
         function ThemVaoGioHang() {
             var id = "<%=id%>";
             soLuong = $("#quantity").val();
             $.post("ajax/ajax_giohang", {
                 "ThaoTac": "ThemVaoGioHang",
                 "id": id,
                 "soLuong": soLuong,
             },
                 function (data) {
                     $.alert({
                            title: 'Thông báo!',
                            content: 'Sản phẩm đã được thêm vào giỏ!',
                        });
                 });
         }
    </script>
</html>
