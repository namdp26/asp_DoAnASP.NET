<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dathangthanhcong.aspx.cs" Inherits="DoAnWeb.dathangthanhcong" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>abc</title>
	<link rel="stylesheet" type="text/css" href="Content/giohang.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="Scripts/jquery-3.3.1.js"></script>
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <style type="text/css">
        .auto-style2 {
            width: 19%;
    /* color: #3399cc; */
            font-size: 14px;
        }
        .auto-style3 {
            width: 19%
        }
        .auto-style4 {
            width: 162px;
        }
        .auto-style5 {
            width: 187px;
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
                                    <a class="nav-link" href="login.aspx">Tài Khoản</a>
                                  </li>
                             </ul>
                        </div>
                            <input class="form-control mr-sm-2" type="search" placeholder="tìm kiếm trong trang" aria-label="Search">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit" style="font-weight: bold; color: white; border-color: white;">Tìm Kiếm</button>
                      </div>
                    </nav>
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
			  <div id="trangphai">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="exampleModalLabel">Thông tin chi tiết về đơn hàng của bạn</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <a aria-hidden="true"></a>
                        </button>
                    </div>
                        <div class="modal-body">
                            <table style="width:100%;" id="cart-table">
                                <tbody>
                                    <tr >
                                        <th class="border-right">Mã Đơn Hàng</th>
                                        <th class="border-right">Tên Khách Hàng</th>
                                        <th class="border-right">Số điện thoại</th>
                                        <th class="border-right">Tổng số tiền</th>
                                        <th class="border-right">Địa chỉ nhận hàng</th>
                                        <th>Thời gian nhận hàng (dự kiến)</th>
                                    </tr>
                                    <tr class="font-italic" style=" color:#e90052;" >
                                        <td style >
                                            <asp:Label ID="madh" runat="server" ></asp:Label></td>
                                        <td class="auto-style2">
                                            <asp:Label ID="hovaten" runat="server" ></asp:Label></td>
                                        <td >
                                            <asp:Label ID="sdt" runat="server" ></asp:Label>
                                           </td>
                                        <td class="auto-style5">
                                            <asp:Label ID="thanhtien" runat="server" ></asp:Label></td>
                                        <td class="auto-style4">
                                            <asp:Label ID="diachi" runat="server" ></asp:Label>
                                            </td>
                                        <td>
                                            <asp:Label ID="ngaygiao" runat="server" ></asp:Label></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                     <div  >
                         <div class="row">
                             <div class="col-md-12">
                                  <div style="margin-left:725px;">
                                      <asp:Label ID="tongia" runat="server" Text=""></asp:Label></span>
                                   </div>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col-md-3" style="margin-left:20px; text-decoration:none ; font-weight:bold; ">
                                 <a href="sanpham.aspx" style="color: #e90052;">Tiếp tục mua hàng
                                 </a>
                             </div>
                             <div class="col-md-9" style="margin-left:800px; ">
                                 <asp:Button ID="btn_dathang" class="btn btn-info" runat="server" Text="Hoàn thành" OnClick="btn_dathang_Click" />
                             </div>
                         </div>
                   </div>
                </div>
            </div>
            </div>
        </div>
    </div>
	 </form>
	<!-- thanh noi dung chinh -->
	<!-- thanh mat hang -->
	 <!-- thanh footer -->
	 <div id="footer">
	 	<div class="container " id="content_foot">
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
</html>
