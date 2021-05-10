<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="sanpham.aspx.cs" Inherits="DoAnWeb.sanpham" %>

<asp:Content ID="Content_Left" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-md-9" style="float:right">
        <asp:Literal ID="load_san_pham" runat="server"></asp:Literal>
	</div>
  
      
        <div class="col-md-6" style="margin-left:590px">
        <nav aria-label="Page navigation example">
          <ul class="pagination">
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
              </a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
              </a>
            </li>
          </ul>
        </nav>
    </div>
   
  
    
</asp:Content>

