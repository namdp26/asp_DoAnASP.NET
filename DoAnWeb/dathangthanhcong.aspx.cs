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
    public partial class dathangthanhcong : System.Web.UI.Page
    {
        string txtSoLuongSp = "";
        string txtMaSp = "";
        string TongTienMotSPTrongGio = "";
        string txtDonGia = "";
        int TongGia = 0;
        int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["giohang"] != null)
            {
                if (Session["username"] == null) //Trường hợp mua hàng mà không đăng nhập
                {
                    InsertCtietDonHang1();
                    // In ra thông tin đơn hàng
                    string donhang = "";
                    SqlConnection conn = new cldb().ketnoi();
                    SqlCommand cmd = new SqlCommand("select  maddh,hovaten,thanhtien,sdt,diachi,ngaytao from DonDatHang where session ='" + Session["anonymous"] + "' order by ngaytao desc", conn);
                    SqlDataReader dulieu = cmd.ExecuteReader();
                    dulieu.Read();
                    madh.Text = (string)dulieu["maddh"].ToString();
                    sdt.Text = (string)dulieu["sdt"].ToString();
                    hovaten.Text = (string)dulieu["hovaten"].ToString();
                    thanhtien.Text = (string)dulieu["thanhtien"].ToString();
                    diachi.Text = (string)dulieu["diachi"].ToString();
                    ngaygiao.Text = DateTime.UtcNow.Date.AddDays(3).ToString();
                    // In ra thông tin đơn hàng
                }
                else // (Session["username"] != null)
                {
                    // In ra thông tin đơn hàng
                    InsertDonDatHang();
                    InsertCtietDonHang2();
                    string donhang = "";
                    SqlConnection conn = new cldb().ketnoi();
                    SqlCommand cmd = new SqlCommand("select  maddh,hovaten,thanhtien,sdt,diachi,ngaytao from DonDatHang where email ='" + Session["username"] + "' order by ngaytao desc", conn);
                    SqlDataReader dulieu = cmd.ExecuteReader();
                    dulieu.Read();
                    madh.Text = (string)dulieu["maddh"].ToString();
                    sdt.Text = (string)dulieu["sdt"].ToString();
                    hovaten.Text = (string)dulieu["hovaten"].ToString();
                    thanhtien.Text = (string)dulieu["thanhtien"].ToString();
                    diachi.Text = (string)dulieu["diachi"].ToString();
                    ngaygiao.Text = DateTime.UtcNow.Date.AddDays(3).ToString();
                    // In ra thông tin đơn hàng
                }
            }
            else
            {
                Response.Redirect("/");
            }
            
        }
        private void InsertCtietDonHang1() //(Session["username"] == null)
        {
            DataTable dtGioHang = (DataTable)Session["giohang"]; //Tạo datatable để lưu datatable của giỏ hàng
            SqlConnection conn = new cldb().ketnoi();
            // Thực hiện truy vấn để lấy ra mã đơn đặt hàng
            SqlCommand sqlcmd = new SqlCommand("select top(1) maddh from DonDatHang where session ='" + Session["anonymous"] + "' order by ngaytao desc", conn);
            SqlDataReader dulieu = sqlcmd.ExecuteReader();
            dulieu.Read();
            var maddh = (string)dulieu["maddh"].ToString();
            // Thực hiện truy vấn để lấy ra mã đơn đặt hàng
            SqlConnection connect = new cldb().ketnoi();
            for (i = 0; i < dtGioHang.Rows.Count; i++)
            {
                txtSoLuongSp = dtGioHang.Rows[i]["soluong"].ToString(); //lấy ra số lượng sản phẩm có trong giỏ
                txtDonGia = dtGioHang.Rows[i]["gia"].ToString(); //Lấy ra đơn giá của mỗi sản phẩm trong giỏ
                int soluong = int.Parse(dtGioHang.Rows[i]["soluong"].ToString());
                int giatien = int.Parse(dtGioHang.Rows[i]["gia"].ToString());
                TongTienMotSPTrongGio += soluong * giatien; //lấy ra tổng số tiền của một sản phẩm
                txtMaSp = dtGioHang.Rows[i]["masp"].ToString();
                //Insert thông tin vào bảng Chitietdonhang
                SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[ChiTietDonDatHang]([masp],[maddh],[soluong],[dongia]) VALUES ('" + txtMaSp + "','" + maddh + "','" + txtSoLuongSp + "','" + txtDonGia + "')", connect);
                cmd.ExecuteNonQuery();
                //Insert thông tin vào bảng Chitietdonhang
            }
            conn.Close();
            connect.Close();
        }
        private void InsertCtietDonHang2() // (Session["username"] != null)
        {
            DataTable dtGioHang = (DataTable)Session["giohang"]; //Tạo datatable để lưu datatable của giỏ hàng
            SqlConnection conn = new cldb().ketnoi();
            // Thực hiện truy vấn để lấy ra mã đơn đặt hàng

            SqlCommand sqlcmd = new SqlCommand("select top(1) maddh from DonDatHang where email ='" + Session["username"] + "' order by ngaytao desc", conn);
            SqlDataReader dulieu = sqlcmd.ExecuteReader();
            dulieu.Read();
            var maddh = (string)dulieu["maddh"].ToString();
            // Thực hiện truy vấn để lấy ra mã đơn đặt hàng
            SqlConnection connect = new cldb().ketnoi();
            for (i = 0; i < dtGioHang.Rows.Count; i++)
            {
                txtSoLuongSp = dtGioHang.Rows[i]["soluong"].ToString(); //lấy ra số lượng sản phẩm có trong giỏ
                txtDonGia = dtGioHang.Rows[i]["gia"].ToString(); //Lấy ra đơn giá của mỗi sản phẩm trong giỏ
                int soluong = int.Parse(dtGioHang.Rows[i]["soluong"].ToString());
                int giatien = int.Parse(dtGioHang.Rows[i]["gia"].ToString());
                TongTienMotSPTrongGio += soluong * giatien; //lấy ra tổng số tiền của một sản phẩm
                txtMaSp = dtGioHang.Rows[i]["masp"].ToString();
                //Insert thông tin vào bảng Chitietdonhang
                SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[ChiTietDonDatHang]([masp],[maddh],[soluong],[dongia]) VALUES ('" + txtMaSp + "','" + maddh + "','" + txtSoLuongSp + "','" + txtDonGia + "')", connect);
                cmd.ExecuteNonQuery();
                //Insert thông tin vào bảng Chitietdonhang
            }
            conn.Close();
            connect.Close();
        }
        private void InsertDonDatHang() // (Session["username"] != null)
        {
            SqlConnection connect = new cldb().ketnoi();
            SqlCommand sqlcmd = new SqlCommand("select matk,hovaten,sdt,email,diachi from taikhoan where email='" + Session["username"] + "'", connect);
            SqlDataReader dulieu = sqlcmd.ExecuteReader();
            dulieu.Read();
            var matk = (string)dulieu["matk"].ToString();
            var hovaten = (string)dulieu["hovaten"].ToString();
            var sdt = (string)dulieu["sdt"].ToString();
            var diachi = (string)dulieu["diachi"].ToString();
            var email = (string)dulieu["email"].ToString();
            DataTable dtGioHang = (DataTable)Session["giohang"];
            for (i = 0; i < dtGioHang.Rows.Count; i++)
            {
                int soluong = int.Parse(dtGioHang.Rows[i]["soluong"].ToString());
                int giatien = int.Parse(dtGioHang.Rows[i]["gia"].ToString());
                TongGia += soluong * giatien; // lấy ra tổng số tiền trong giỏ
            }
            SqlConnection conn = new cldb().ketnoi();
            SqlCommand cmd = new SqlCommand("insert into [dbo].[DonDatHang](matk,hovaten,sdt,email,diachi,ngaytao,thanhtien) values ('" + matk + "',N'" + hovaten + "','" + sdt + "','" + email + "',N'" + diachi + "',Getdate(),'" + TongGia + "')", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        protected void btn_dathang_Click(object sender, EventArgs e)
        {
            Session["giohang"] = null;
            Session["anonymous"] = null;
            Response.Redirect("/");
        }
    }
}