using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace DoAnWeb.quantri
{
    public partial class capnhatsanpham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("../login.aspx");
            }
            else
            {
                hienthidsSP();
            }
        }
        void hienthidsSP()
        {
            SqlConnection conn = new cldb().ketnoi();
            SqlCommand cmd = new SqlCommand("select masp,tensp,hinhanh,gia,size from sanpham", conn);
            DataTable dt = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dt);
            danhsachsp.DataSource = dt;
            danhsachsp.DataBind();
        }
        protected void danhsachsp_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void btntaomoisp_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFiles)
            {
                string fileUrl_1 = "../Img/sanpham/" + "_" + DateTime.Now.ToString("ddMMyyyy_hhmmss_tt_") + ".jpg" + ".png";
                fileUrl_1 = fileUrl_1.Trim();
                string filePath = MapPath(fileUrl_1);
                FileUpload1.SaveAs(filePath);
                string fileUrl_2 = "../Img/anhchitiet/" + "_" + DateTime.Now.ToString("ddMMyyyy_hhmmss_tt_") + ".jpg" + ".png";
                fileUrl_2 = fileUrl_2.Trim();
                string filePath2 = MapPath(fileUrl_2);
                FileUpload2.SaveAs(filePath2);
                SqlConnection conn = new cldb().ketnoi();
                SqlCommand cmd = new SqlCommand("insert into sanpham (tensp,size,gia,hinhanh,mota,anhmota) values (N'" + txtten_sp.Text + "','" + txtsize.Text + "','" + txtgia.Text + "','" + fileUrl_1 + "',N'"+txtmotasp.Text+"','"+fileUrl_2+"')  ", conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                txtten_sp.Text = "";
                txtgia.Text = "";
                txtmotasp.Text = "";
                hienthidsSP();
            }
        }

        protected void btnxoa_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new cldb().ketnoi();
            SqlCommand cmd = new SqlCommand("delete from sanpham where masp='" + txtmasp.Text + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            hienthidsSP();
        }

        protected void btncapnhat_Click(object sender, EventArgs e)
        {
            string fileUrl_1 = "../Img/sanpham/" + "_" + DateTime.Now.ToString("ddMMyyyy_hhmmss_tt_") + ".jpg" ;
            fileUrl_1 = fileUrl_1.Trim();
            string filePath = MapPath(fileUrl_1);
            FileUpload1.SaveAs(filePath);
            string fileUrl_2 = "../Img/anhchitiet/" + "_" + DateTime.Now.ToString("ddMMyyyy_hhmmss_tt_") + ".jpg" ;
            fileUrl_2 = fileUrl_2.Trim();
            string filePath2 = MapPath(fileUrl_2);
            SqlConnection conn = new cldb().ketnoi();
            SqlCommand cmd = new SqlCommand("update sanpham set tensp='"+txtten_sp.Text+"',mota=N'"+txtmotasp.Text+"',size='"+txtsize.Text+"',gia='"+txtgia.Text+"',hinhanh='"+fileUrl_1+"',anhmota='"+fileUrl_2+"' where masp='"+txtmasp.Text+"'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            hienthidsSP();
        }
    }
}