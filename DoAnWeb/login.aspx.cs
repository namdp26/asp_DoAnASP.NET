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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"]!= null)
            {
                Response.Redirect("/");
            }

        }
    
        protected void btnsign_in_Click(object sender, EventArgs e)
        {
            SqlConnection connect = new cldb().ketnoi();
            SqlCommand sqlcmd = new SqlCommand("SELECT email,password from taikhoan where email='" + txtemail.Text + "' and password = '" + txtpassword_dn.Text + "'", connect);
            DataSet ds = new DataSet();
            SqlDataAdapter adap = new SqlDataAdapter(sqlcmd);
            adap.Fill(ds);
            if(txtemail.Text =="" ) 
            {
                thongbao_dn.Text = "Có vẻ như bạn chưa nhập Email !";
            }
            else if (txtemail.Text == "admin" && ds.Tables[0].Rows.Count > 0)
            {
                Session["username"] = txtemail.Text;
                Response.Redirect("/quantri/capnhatsanpham.aspx");
            }
            else if(ds.Tables[0].Rows.Count >0)
            {
                
                Session["username"] = txtemail.Text;
                Response.Redirect("/");
            }
            else
            {
                thongbao_dn.Text= "Email hoặc Password bạn nhập chưa hợp lệ !!! ";
            }
            connect.Close();
        }
        protected void btnsign_up_Click(object sender, EventArgs e)
        {
            if(txt_emaildk.Text=="") // chua nhap email
            {
                tb_emaildk.Text = "Bạn chưa nhập email";
                tb_namedk.Text = "";
                txtfull_name.Text = "";
            }
            else //da nhap email
            {
                var email_tontai = txt_emaildk.Text;
                SqlConnection conn_email = new cldb().ketnoi();
                SqlCommand cmd = new SqlCommand("select email,hovaten,password from taikhoan where email='" + email_tontai + "' ", conn_email);
                DataSet dulieu_email = new DataSet();
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(dulieu_email);
                tb_emaildk.Text = "";
                if(txtfull_name.Text=="") //chua nhap ho ten
                {
                    tb_namedk.Text = "Bạn chưa nhập họ tên";

                }
                else if(dulieu_email.Tables[0].Rows.Count>0)
                {
                    tb_emaildk.Text = "Email đã tồn tại";
                    conn_email.Close();
                }
                else // da nhap ho ten
                {
                    tb_namedk.Text = "";
                    if(txtpassword_dk1.Text.Length < 6)
                    {
                        tb_pwd1.Text = "Mật khẩu tối thiểu 6 ký tự";
                    }
                    else 
                    {
                        tb_pwd1.Text = "";
                        if(txtpassword_dk2.Text!=txtpassword_dk1.Text)
                        {
                            tb_pwd2.Text = "Mật khẩu không khớp";
                        }
                        else
                        {
                            SqlConnection connect = new cldb().ketnoi();
                            SqlCommand sqlcmd = new SqlCommand("INSERT INTO [dbo].[taikhoan]([email],[hovaten],[diachi],[sdt],[password]) VALUES ('" + txt_emaildk.Text + "',N'" + txtfull_name.Text + "',N'" + txtdiachi.Text + "','" +txtsdt.Text+ "','" + txtpassword_dk1.Text + "')", connect);
                            sqlcmd.ExecuteNonQuery();
                            connect.Close();
                            txt_emaildk.Text = "";
                            txtfull_name.Text = "";
                            txtdiachi.Text = "";
                            txtpassword_dk1.Text = "";
                            txtpassword_dk2.Text = "";
                            Session["username"] = txt_emaildk.Text;
                        }
                       
                    }
                }
            }
          
        }
    }
}