using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace DoAnWeb
{
    public partial class chitietsanpham : System.Web.UI.Page
    {
        protected string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Request.QueryString["id"] != null)
            {
                id = Request.QueryString["id"];
                SqlConnection conn = new cldb().ketnoi();
                SqlCommand cmd = new SqlCommand("select * from sanpham where masp ='" + id + "'", conn);
                SqlDataReader dulieu = cmd.ExecuteReader();
                dulieu.Read();
                tensanpham.Text = " <p class='card-text'  > Tên sản phẩm: " + (string)dulieu["tensp"] + "  </p>";
                giasanpham.Text = " <p class='card-text'  > Giá sản phẩm: " + (string)dulieu["gia"].ToString() + " VNĐ  </p>";
                kichcosanpham.Text = " <p class='card-text'  > Size: " + (string)dulieu["size"] + "   </p>"; ;
                anhmota.ImageUrl = (string)dulieu["anhmota"];
                anhsanpham.ImageUrl = (string)dulieu["hinhanh"];
                mota.Text = (string)dulieu["mota"];
            }
            else
            {
                Response.Redirect("/");
            }
        }
        protected void btndang_xuat_Click(object sender, EventArgs e)
        {
            Response.Redirect("xacminhdangnhap");
        }
    }
}