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
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                btndang_xuat.Text = "Đăng Xuất";
            }
            else
            {
                btndang_xuat.Text = "Đăng Nhập";
            }
        }

        protected void btndang_xuat_Click(object sender, EventArgs e)
        {
            Response.Redirect("xacminhdangnhap");
           
        }
    }
}