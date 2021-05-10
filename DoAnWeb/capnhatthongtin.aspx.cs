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
    public partial class capnhatthongtin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { 
            if (Session["username"] != null)  // Nếu người dùng đã đăng nhập
            {
                var email = Session["username"];
                SqlConnection conn = new cldb().ketnoi();
                SqlCommand cmd = new SqlCommand("select * from taikhoan where email='" + email + "' ", conn);
                SqlDataReader dulieu = cmd.ExecuteReader();
                dulieu.Read();
                string sdt = (string)dulieu["sdt"];
                var diachi = dulieu["diachi"];
                if (sdt.Length > 9 && sdt.Length < 11) //Xét điều kiện nếu số điện thoại đã hợp lệ thì điều hướng đến đặt hàng thành công
                {
                    Response.Redirect("dathangthanhcong");
                }
                else
                {

                }
            }
            else 
            {
                if(Session["giohang"]==null)
                {
                    Response.Redirect("login.aspx");
                }
                else
                {

                }
            }
        }
         protected void btndang_xuat_Click(object sender, EventArgs e)
        {
            Response.Redirect("xacminhdangnhap");
        }
        protected void capnhat_Click(object sender, EventArgs e)
        {
            if (Session["username"] == null) //Trường hợp người dùng chưa đăng nhập
            {
                if (txt_hovaten.Text == "") 
                {
                    tb_hovaten.Text = "Bạn chưa nhập họ và tên!";
                }
                else if (txtsdt.Text == "")
                {
                    tb_sdt.Text = "Bạn chưa nhập số điện thoại!";
                    
                }
                else //Trường hợp đã nhập cả 2
                {
                    if (txtsdt.Text.Length < 9 || txtsdt.Text.Length > 11) //Kiểm tra xem số diện thoại nhập có đúng không?
                    {
                        tb_sdt.Text = "Số điện thoại không hợp lệ!";
                    }
                    else 
                    {
                        DataTable dtGioHang = (DataTable)Session["giohang"]; //Tạo datatable để lưu datatable của giỏ hàng
                        Session["anonymous"] = txt_hovaten.Text;
                        int TongGia = 0;
                        int i = 0;
                        for (i = 0; i < dtGioHang.Rows.Count; i++) //Dùng vòng lặp để tính tổng giá tiền trong giỏ
                        {
                            int soluong = int.Parse(dtGioHang.Rows[i]["soluong"].ToString());
                            int giatien = int.Parse(dtGioHang.Rows[i]["gia"].ToString());
                            TongGia += soluong * giatien; // lấy ra tổng số tiền trong giỏ
                        }
                        SqlConnection conn = new cldb().ketnoi();
                        SqlCommand cmd = new SqlCommand("insert into [dbo].[DonDatHang](hovaten,sdt,email,diachi,ngaytao,thanhtien,session) values (N'" + txt_hovaten.Text + "','" + txtsdt.Text + "','" + txtemail.Text + "',N'" + txtdiachi.Text + "',Getdate(),'"+TongGia+"','"+Session["anonymous"]+"')", conn);
                        cmd.ExecuteNonQuery();
                        conn.Close();
                        Response.Redirect("dathangthanhcong");
                    }
                }
            }
            else //Người dùng đã đăng nhập
            {
                if (txtsdt.Text == "")
                {
                    tb_sdt.Text = "Bạn chưa nhập số điện thoại!";
                }
                else
                {
                    if (txtsdt.Text.Length < 9 || txtsdt.Text.Length > 11) //Kiểm tra xem số diện thoại nhập có đúng không?
                    {
                        tb_sdt.Text = "Số điện thoại không hợp lệ!";
                    }
                    else //Thực hiện update vào bảng taikhoan với người dùng đẫ đăng nhập 
                    {
                        SqlConnection conn = new cldb().ketnoi();
                        SqlCommand cmd = new SqlCommand("update taikhoan set sdt='" + txtsdt.Text + "',diachi='" + txtdiachi.Text + "',hovaten='"+txt_hovaten.Text+"',email='"+txtemail.Text+"' where email='"+Session["username"]+"' ", conn);
                        cmd.ExecuteNonQuery();
                        conn.Close();
                        Response.Redirect("dathangthanhcong");
                    }
                }
            }
        }
    }
}