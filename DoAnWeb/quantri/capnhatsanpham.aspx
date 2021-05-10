<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="capnhatsanpham.aspx.cs" Inherits="DoAnWeb.quantri.capnhatsanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript" src="../Scripts/jquery-3.3.1.js"></script>
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function ()
        {
          $images = $('.imageOutput')

    $("#ContentPlaceHolder1_FileUpload1").change(function (event) {
        readURL(this);
       
    });

    function readURL(input) {

        if (input.files && input.files[0] ) {
            $.each(input.files, function () {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $images.append('<img width="50%"  src="' + e.target.result + '" />')
                }
                reader.readAsDataURL(this);
            });

        }
    }

        });
    </script>
    <table class="auto-style5">
           <tr>
               <td class="auto-style9" style="width: 219px"><strong></strong></td>
               <td class="text-center" style="color: #FF0000"><a target="_blank" href="../sanpham.aspx">Xem trang sản phẩm</a> </td>
               <td class="auto-style2" style="width: 212px">&nbsp;</td>
               <td class="auto-style19" style="width: 280px"><strong></strong></td>
           </tr>
           <tr>
               <td class="auto-style9" style="width: 219px"><strong>Mã sản phẩm:</strong></td>
               <td class="text-center" style="color: #FF0000"><strong>
                   <asp:TextBox ID="txtmasp" runat="server" Width="280px"></asp:TextBox>
                   </strong> </td>
               <td class="auto-style2" style="width: 212px">&nbsp;</td>
               <td class="auto-style19" style="width: 280px">&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style9" style="width: 219px"><strong>Tên sản phẩm:</strong></td>
               <td class="auto-style3"><strong>
                   <asp:TextBox ID="txtten_sp" runat="server" Width="280px" CssClass="offset-sm-0"></asp:TextBox>
                   </strong></td>
               <td class="auto-style2" style="width: 212px">&nbsp;</td>
               <td class="auto-style19" style="width: 280px"><strong></strong></td>
           </tr>
           <tr>
               <td class="auto-style9" style="width: 219px"><strong>Size :</strong></td>
               <td class="auto-style3">
                   <strong>
                   <asp:TextBox ID="txtsize" runat="server" Width="280px"></asp:TextBox>
                   </strong>
               </td>
               <td class="auto-style2" style="width: 212px">&nbsp;</td>
               <td class="auto-style19" style="width: 280px"><strong></strong></td>
           </tr>
           <tr>
               <td class="auto-style9" style="width: 219px"><strong>Giá sản phẩm: </strong></td>
               <td class="auto-style3"><strong>
                   <asp:TextBox ID="txtgia" runat="server" Width="280px"></asp:TextBox>
                   </strong></td>
               <td class="auto-style2" style="width: 212px">&nbsp;</td>
               <td class="auto-style19" style="width: 280px"><strong></strong></td>
           </tr>
           <tr>
               <td class="auto-style9" style="width: 219px"><strong>Mô tả:</strong></td>
               <td class="auto-style3"><strong>
                   <asp:TextBox ID="txtmotasp" runat="server" Width="280px"></asp:TextBox>
                   </strong></td>
               <td class="auto-style2" style="width: 212px">&nbsp;</td>
               <td class="auto-style19" style="width: 280px">&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style9" style="width: 219px"><strong>Hình ảnh:</strong></td>
               <td class="auto-style3">
                   <div class="imageOutput"></div>
               </td>
               <td class="auto-style2" style="width: 212px">&nbsp;</td>
               <td class="auto-style19" style="width: 280px">&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style9" style="width: 219px"><strong>Chọn ảnh sản phẩm:</strong></td>
               <td class="auto-style3">
                 
                   <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-check-label" />
               </td>
               <td class="auto-style2" style="width: 212px">&nbsp;</td>
               <td class="auto-style19" style="width: 280px">&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style9" style="width: 219px"><strong>Chọn ảnh chi tiết:</strong></td>
               <td class="auto-style3">
                 
                   
                 
                   <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-check-label" />
                   </td>
               <td class="auto-style2" style="width: 212px">&nbsp;</td>
               <td class="auto-style19" style="width: 280px">&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style9" style="width: 219px">&nbsp;</td>
               <td class="auto-style3">
                 
                   &nbsp;</td>
               <td class="auto-style2" style="width: 212px">&nbsp;</td>
               <td class="auto-style19" style="width: 280px">&nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style9" style="width: 219px">
                   
                   &nbsp;</td>
               <td class="auto-style3">
                   
                   <table class="w-100">
                       <tr>
                           <td class="auto-style19" style="width: 73px">
                   
                   <asp:Button ID="btntaomoisp" runat="server" Text="Thêm" OnClick="btntaomoisp_Click" Width="60px" />
                   
                           </td>
                           <td style="width: 73px">
                   
                   <asp:Button ID="btnxoa" runat="server" Text="Xóa" OnClick="btnxoa_Click" Width="60px" />
                   
                           </td>
                           <td>
                   
                   <asp:Button ID="btncapnhat" runat="server" Text="Cập Nhật" OnClick="btncapnhat_Click" Width="80px" />
                   
                           </td>
                       </tr>
                   </table>
                   
               </td>
               
               <td class="auto-style2" style="width: 212px">
             
               </td>
               
           </tr>
           <tr>
               <td class="auto-style9" style="width: 219px">&nbsp;</td>
               <td class="auto-style3">&nbsp;</td>
               <td class="auto-style2" style="width: 212px">&nbsp;</td>
               <td class="auto-style19" style="width: 280px">&nbsp;</td>
           </tr>
       </table>
    <asp:GridView ID="danhsachsp" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" style="margin-left: 0px; margin-top: 0px;" Width="871px" Height="208px" AutoGenerateColumns="False" OnSelectedIndexChanged="danhsachsp_SelectedIndexChanged">
        
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
        <Columns>
                     <asp:BoundField DataField="masp" HeaderText="MaSP" />
                     <asp:BoundField DataField="tensp" HeaderText="Tên Sản Phẩm" />
                     <asp:BoundField DataField="size" HeaderText="Size" />
                     <asp:BoundField DataField="gia" HeaderText="giá" />
                     <asp:ImageField  HeaderText="Hình Ảnh" DataImageUrlField="hinhanh" ControlStyle-Height="50px" ControlStyle-Width="100px" DataAlternateTextField="hinhanh" >
                     <ControlStyle Height="50px" Width="100px"></ControlStyle>
                    </asp:ImageField>
        </Columns>
   
     
    </asp:GridView>
</asp:Content>
