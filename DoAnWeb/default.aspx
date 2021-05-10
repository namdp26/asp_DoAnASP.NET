<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="DoAnWeb._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
                <div class="carousel-item active">
                  <img src="Img/adidas.jpg" height="500px;" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item ">
                    <img src="Img/nikeair.jpg" height="500px;" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item ">
                    <img src="Img/copa.jpg" height="500px;" class="d-block w-100" alt="...">
                </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
</div>
</asp:Content>




<asp:Content ID="Content_Left" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
      <ul class="list-group">
          <li class="list-group-item d-flex justify-content-between align-items-center">
            <a href="sanpham.aspx">Sản Phẩm</a>
            <span class="badge badge-primary badge-pill">25</span>
          </li>
          <li class="list-group-item d-flex justify-content-between align-items-center">
            <a href="">Tin Tức</a>
            <span class="badge badge-primary badge-pill">5</span>
          </li>
          <li class="list-group-item d-flex justify-content-between align-items-center">
           <a href="">Hướng Dẫn Mua Hàng</a>
            <span class="badge badge-primary badge-pill">2</span>
          </li>
             <li class="list-group-item d-flex justify-content-between align-items-center">
           <a href="">Flash Sale</a>
            <span class="badge badge-primary badge-pill">6</span>
          </li>
     </ul>
            <div class="card" style="width: 16rem;">
          <div class="card-body">
            <h5 class="card-title"><img src="Img/hotrokh.jpg" width="214rem" /></h5>
            <h6 class="card-subtitle mb-2 text-muted">Hỗ trợ khách hàng</h6>
            <img src="Img/phone.png"><span style="color:  #e90052;">Hotline: 0337731177</span> 
            <img src="Img/facebook.png">Facebook
            <img src="Img/Tweet.png">Tweeter 
          </div>
        </div>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-md-9">
        <asp:Literal ID="load_san_pham" runat="server"></asp:Literal>	
	</div>
    			
</asp:Content>