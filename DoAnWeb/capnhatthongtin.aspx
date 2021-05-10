<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="capnhatthongtin.aspx.cs" Inherits="DoAnWeb.capnhatthongtin" %>

<!DOCTYPE html>
<html>
<head>
	<title>abc</title>
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
     <form method="post" runat="server">
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
                      <li class="nav-item active">
                        <a class="nav-link" href="default.aspx">Trang Chủ <span class="sr-only">(current)</span></a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="sanpham.aspx">Sản Phẩm</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#">Liên Hệ</a>
                      </li>
      
                        <li class="nav-item">
                        <a class="nav-link" href="#">Giới Thiệu</a>
                      </li>
                   <li class="nav-item">
                        <a class="nav-link" href="">Tài Khoản</a>
                      </li>
   
                       </ul>
                   
                      <input class="form-control mr-sm-2" type="search" placeholder="tìm kiếm trong trang" aria-label="Search">
                      <button class="btn btn-outline-success my-2 my-sm-0" type="submit" style="font-weight: bold; color: white; border-color: white;">Tìm Kiếm</button>
                    
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
			<div class="row">
                    <div class="col-md-3">
                    </div>
                    <div class="col-md-9">
                        <h5 style="color: #38003c; font-weight:bold;">Cập nhật thông tin của bạn</h5>
                    </div>
			</div>
                    <div class="row" style="margin-top:15px;">
                            <div class="col-md-3">
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="txt_hovaten" runat="server" class="form-control" placeholder="Họ và tên(*)">
                                </asp:TextBox>
                                <asp:Label ID="tb_hovaten" runat="server" Text="" ForeColor="red" ></asp:Label>   

                            </div>
                    </div>
                    <div class="row" style="margin-top:15px;">
                          <div class="col-md-3"></div>
                          <div class="col-md-9">
                                <asp:TextBox ID="txtsdt" runat="server" class="form-control" placeholder="Số Điện Thoại(*)"></asp:TextBox>
                                <asp:Label ID="tb_sdt" runat="server" Text="" ForeColor="red" ></asp:Label>   
                          </div>
                    </div>
                    <div class="row" style="margin-top:15px;">
                          <div class="col-md-3">
                          </div>
                          <div class="col-md-9">
                               <asp:TextBox ID="txtemail" runat="server" class="form-control"  placeholder="Email"></asp:TextBox>
                          </div>
                                <asp:Label ID="tb_email" runat="server" Text="" ForeColor="red"></asp:Label>   
                    </div>
                    <div class="row" style="margin-top:15px; padding-bottom:15px;">
                        <div class="col-md-3">
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtdiachi" class="form-control" runat="server" placeholder="Địa chỉ(*)"></asp:TextBox>
                        </div>
                             <asp:Label ID="tb_diachi" runat="server" Text="" ForeColor="red" ></asp:Label>    
                    </div>
                    <div class="row" style="margin-top:15px; padding-bottom:15px;">
                            <div class="col-md-3">
                            </div>
                            <div class="col-md-9">
                                <asp:Button ID="capnhat" class="btn btn-outline-success" runat="server" Text="Cập nhật" OnClick="capnhat_Click" />
                            </div>
                    </div>  
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
         		     <li><a href="">Cách chọn giày hợp với chân</a> </li>
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
	 			    <div style="padding: 5px 5px;">
                         <img src="Img/facebook.png">Facebook
                         <img src="Img/Tweet.png">Tweeter 
	 			    </div>
                    <div style="padding: 5px 5px;">
                        <img src="Img/Gplus.png">Google+
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
