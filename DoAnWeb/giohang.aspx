<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giohang.aspx.cs" Inherits="DoAnWeb.giohang" %>

<!DOCTYPE html>
<html>
<head>
	<title>abc</title>
	<link rel="stylesheet" type="text/css" href="Content/giohang.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="Scripts/jquery-3.3.1.js"></script>
    <script src="Scripts/jquery-3.3.1.min.js"></script>
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
                            <input class="form-control mr-sm-2" type="search" placeholder="tìm kiếm trong trang" aria-label="Search">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit" style="font-weight: bold; color: white; border-color: white;">Tìm Kiếm</button>
                        </form>
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
                        <h4 class="modal-title" id="exampleModalLabel">Bạn đang có <asp:Label ID="sosanphamtronggio" runat="server" Text="0"></asp:Label> sản phẩm trong giỏ hàng.</h4>

                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <a aria-hidden="true"></a>
                        </button>
                    </div>
                    <form action="/cart" method="post" id="cartform" style="display: block;">
                        <div class="modal-body">
                            <table style="width:100%;" id="cart-table">
                                <tbody>
                                    <tr>
                                        <th></th>
                                        <th>Tên sản phẩm</th>
                                        <th>Số lượng</th>
                                        <th>Giá tiền</th>
                                        <th></th>
                                    </tr>
                                    <tr class="line-item original">
                                        <td class="item-image"></td>
                                        <td class="item-title">
                                            <a></a>
                                        </td>
                                        <td class="item-quantity"></td>
                                        <td class="item-price"></td>
                                        <td class="item-delete"></td>
                                    </tr>
                                   <%-- in ra san pham--%>
                                  <%--  <tr class="line-item">
                                        <td class="item-image">
                                            <img src="Img/sp03.jpg" width="150px" height="75px"/></td>
                                        <td class="item-title">
                                            <a href="">Giày Puma<br></a>
                                        </td>
                                        <td class="item-quantity"><input id="quantity1" name="updates[]" min="1" type="number" value="1" class=""></td>
                                        <td class="item-price">240,000</td>
                                        <td class="item-delete"><a href="#" onclick="deleteCart(1007742474)">Xóa</a></td>
                                    </tr>--%>
                                    <asp:Literal ID="show_giohang" runat="server"></asp:Literal>
                                     <%-- in ra san pham--%>
                                </tbody>
                            </table>
                        </div>
                       </form>
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
                                 <a id="btn_dathang" href="capnhatthongtin.aspx" class="btn btn-info">Đặt hàng</a>
                             </div>
                         </div>
                   </div>
                </div>
            </div>
            </div>
        </div>
    </div>
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
    <script>
        $(document).ready(function () {
            $(".xoa").click(function () {
                var masp = $(this).attr('masp');
                $.post('../ajax/ajax_xoa_gio_hang', {masp: masp,}, function () {
                  location.reload(); 
                });
            });
            var soluong = $("#soluongtronggio").val();
            if (soluong == 0) {
                $("#btn_dathang").hide();
            }
        });
    </script>
</body>
</html>
