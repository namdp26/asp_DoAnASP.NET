<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="DoAnWeb.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <title></title>
    <link rel="stylesheet" type="text/css" href="Content/login.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            -ms-flex: 0 0 25%;
            flex: 0 0 25%;
            max-width: 25%;
            left: -15px;
            top: -179px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</head>
<body>
    <form runat="server">
	<!-- thanhmenu -->
	<div class="container-fluid fixed-top"  id="menu">
		<div class="container">
			<div class="row" >
    		<div class="col-md-3">
    		    <nav class="navbar navbar-expand-lg " id="menu">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                          <ul class="navbar-nav mr-auto">
                                <li class="nav-item active">
                                    <a class="nav-link" href="default.aspx">Trang Chủ<span class="sr-only">(current)</span></a>
                                </li>
                         </ul>
                     </div>
                </nav>  
            </div>
               <%-- Thanh dang nhap--%>
                 <div class="col-md-2" style="margin-top:20px;">
                      <asp:Label ID="thongbao_dn" runat="server" Text="" ForeColor="#e90052" ></asp:Label>
                 </div>
                 <div class="col-md-3" style="margin-top:20px;">
                      <asp:TextBox ID="txtemail" class="form-control" runat="server" placeholder="Email"></asp:TextBox>
                 </div>
                 <div class="col-md-3" style="margin-top:20px;">
                       <asp:TextBox ID="txtpassword_dn" class="form-control" runat="server"  placeholder="Mật khẩu" type="password"></asp:TextBox>
                  </div>
                  <div class="col-md-1" style="margin-top:20px;">
                        <asp:Button ID="btnsign_up" runat="server" class="btn btn-danger" Text="Đăng Nhập" OnClick="btnsign_in_Click" />
                   </div>
    		  <%-- Thanh dang nhap--%>
  		    </div>
		</div>
  		
	</div>
	<!-- thanh menu -->
	<!-- thanh noi dung chinh -->
	<div class="container-fluid " id="bao_content">
		<div class="container" id="main_content">
			<div class="row">
                 <div class="col-md-5">
                 </div>
                 <div class="col-md-6">
                     <span style="color: #38003c; font-weight:bold;">Đăng ký thành viên nếu bạn chưa có tài khoản! </span>
                 </div>
			</div>
                 <div class="row" style="margin-top:15px;">
                      <div class="col-md-5">
                      </div>
                      <div class="col-md-4">
                          <asp:TextBox ID="txt_emaildk" runat="server" class="form-control" placeholder="Email(*)">
                          </asp:TextBox>
                      </div>
                          <asp:Label ID="tb_emaildk" runat="server" Text="" ForeColor="red" ></asp:Label>   
                 </div>
            <div class="row" style="margin-top:15px;">
                 <div class="col-md-5"></div>
                 <div class="col-md-4">
                     <asp:TextBox ID="txtfull_name" runat="server" class="form-control" placeholder="Họ và Tên(*)"></asp:TextBox>
                     <asp:Label ID="tb_namedk" runat="server" Text="" ForeColor="red" ></asp:Label>   
                 </div>
            </div>
            <div class="row" style="margin-top:15px;">
                 <div class="col-md-5"></div>
                 <div class="col-md-4">
                     <asp:TextBox ID="txtdiachi" runat="server" class="form-control" placeholder="Địa Chỉ"></asp:TextBox>
                 </div>
            </div>
              <div class="row" style="margin-top:15px;">
                 <div class="col-md-5"></div>
                 <div class="col-md-4">
                     <asp:TextBox ID="txtsdt" runat="server" class="form-control" placeholder="Số điện thoại"></asp:TextBox>
                 </div>
            </div>
            <div class="row" style="margin-top:15px;">
                <div class="col-md-5">
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txtpassword_dk1" runat="server" type="password" class="form-control"  placeholder="Mật khẩu(*)"></asp:TextBox>
                </div>
                <asp:Label ID="tb_pwd1" runat="server" Text="" ForeColor="red"></asp:Label>   
            </div>
            <div class="row" style="margin-top:15px; padding-bottom:15px;">
                <div class="col-md-5"></div>
                <div class="col-md-4">
                    <asp:TextBox ID="txtpassword_dk2" class="form-control" runat="server" type="password" placeholder="Nhập lại mật khẩu(*)"></asp:TextBox>
                </div>
                    <asp:Label ID="tb_pwd2" runat="server" Text="" ForeColor="red" ></asp:Label>    
           </div>
             <div class="row" style="margin-top:15px; padding-bottom:15px;">
                <div class="col-md-5"></div>
                <div class="col-md-4">
                    <asp:Button ID="Button1" class="btn btn-outline-success" runat="server" Text="Đăng Ký" OnClick="btnsign_up_Click" />
                </div>
            </div>  
			<!-- the bottom noi dung -->
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
        <img src="Img/Tweet.png">Tweeter </div>
        <div style="padding: 5px 5px;"><img src="Img/Gplus.png">Google+
        <img  src="Img/youtube.png">Youtube</div>
        
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
