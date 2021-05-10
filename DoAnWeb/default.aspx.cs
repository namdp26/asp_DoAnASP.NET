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
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string san_pham = "";
            int i = 0;
            SqlConnection conn = new cldb().ketnoi();
            SqlCommand sqlcmd = new SqlCommand("select top(6) masp,tensp,size,gia,hinhanh from sanpham order by gia  ", conn);
            SqlDataReader dulieu = sqlcmd.ExecuteReader();
            while (dulieu.Read())
            {
                san_pham += "<div class='card' style='float: right; width: 15rem;  margin-bottom: 15px; margin-left: 15px;'>";
                san_pham += "<img src='" + (string)dulieu["hinhanh"] + "' class='card-img-top' alt='...'>";
                san_pham += " <div class='card-body'>";
                san_pham += " <h5 class='card-title'>" + (string)dulieu["tensp"] + "</h5>";
                san_pham += " <p class='card-text'>Giá: " + (string)dulieu["gia"].ToString() + " VNĐ  </p>";
                san_pham += "  <p class='card-text'>Size: " + (string)dulieu["size"] + "  </p>";
                san_pham += " <a href='chitietsanpham?id=" + (Int32)dulieu["masp"] + "' class='btn btn-light' style='border-color:#e90052;' target='_blank' >Xem chi tiết</a>";
                san_pham += " </div></div>";
            }
            load_san_pham.Text = san_pham;
        }
    }
}