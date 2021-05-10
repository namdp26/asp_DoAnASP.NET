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
    public partial class giohang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int TongGia = 0;
            if (Session["giohang"] != null)
            {
                DataTable dtGioHang = (DataTable)Session["giohang"];
                var soluongtronggio = dtGioHang.Rows.Count; //so hang trong gio//
                int i = 0;
                string ngaytao = DateTime.Now.ToString();
                string txtgiohang = "";
                for (i = 0; i < dtGioHang.Rows.Count; i++)
                {
                    txtgiohang += " <tr class='line-item'>";
                    txtgiohang += " <td class='item-image'>";
                    txtgiohang += "  <img src='" + dtGioHang.Rows[i]["hinhanh"] + "' width='150px' height='75px'/></td>";
                    txtgiohang += "   <td class='item-title'>";
                    txtgiohang += "   <a href=''>" + dtGioHang.Rows[i]["tensp"] + "<br></a></td>";
                    txtgiohang += "<td class='item-quantity'>" + dtGioHang.Rows[i]["soluong"] + "</td>";
                    int soluong = int.Parse(dtGioHang.Rows[i]["soluong"].ToString());
                    int giatien = 299000;
                    txtgiohang += " <td class='item-price'>" + soluong * giatien + " VNĐ</td>";
                    txtgiohang += " <td class='item-delete'><a href='#' masp='" + dtGioHang.Rows[i]["masp"] + "' class='xoa' >Xóa</a></td> </tr>";
                    TongGia += soluong * giatien;
                    sosanphamtronggio.Text = soluongtronggio.ToString();
                }
                tongia.Text = "Tổng tiền :" + TongGia.ToString() + " VNĐ"; //In tổng số tiền các sản phẩm đang có trong giỏ
                show_giohang.Text = txtgiohang; //In ra sản phẩm trong giỏ hàng.
            }
            else
            {
                Response.Write("<input id='soluongtronggio' type=hidden value = '0'/>");
            }
        }
        protected void btndang_xuat_Click(object sender, EventArgs e)
        {
            Response.Redirect("xacminhdangnhap");
        }


    }
}