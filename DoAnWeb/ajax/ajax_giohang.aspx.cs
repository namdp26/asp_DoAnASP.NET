using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace DoAnWeb.ajax
{
    public partial class ajax_giohang : System.Web.UI.Page
    {
        private string thaotac = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            thaotac = Request.Form["thaotac"];
            if(thaotac== "ThemVaoGioHang")
            {
                ThemVaoGioHang();
            }
        }
        private void ThemVaoGioHang()
        {
            string id = Request.Params["id"];
            string soLuong = Request.Params["soLuong"];
            //Lay thong tin chi tiet san pham vao gio hang -> truy van sql truc tiep//
            if (Session["giohang"] == null)
                {
                SqlConnection conn = new cldb().ketnoi();
                SqlCommand cmd = new SqlCommand("select * from sanpham where masp='" + id + "'", conn);
                SqlDataReader dulieu = cmd.ExecuteReader();
                dulieu.Read();
                DataTable dtGioHang = new DataTable();
                dtGioHang.Columns.Add("masp");
                dtGioHang.Columns.Add("tensp");
                dtGioHang.Columns.Add("hinhanh");
                dtGioHang.Columns.Add("gia");
                dtGioHang.Columns.Add("SoLuong");
                dtGioHang.Rows.Add((string)dulieu["masp"].ToString(), (string)dulieu["tensp"].ToString(), (string)dulieu["hinhanh"].ToString(),
                   (string)dulieu["gia"], soLuong);
                //Lưu các thông tin của sản phẩm hiện tại vào datatable
                Session["giohang"] = dtGioHang;
                Response.Write("Sản phẩm đã được thêm vào giỏ!");
                dulieu.Close();
                }
            else
            {
                DataTable dtGioHang = new DataTable();
                dtGioHang = (DataTable)Session["giohang"];
                //Kiểm tra xem trong giỏ hàng có sản phẩm này chưa
                //Nếu có --> tăng số lượng ở dòng chứa sản phẩm này
                //Nếu chưa có --> thêm sản phẩm vào dòng cuối giỏ hàng
                int SoSpTrongGio = -1;
                for (int i = 0; i < dtGioHang.Rows.Count; i++)
                {
                    if (dtGioHang.Rows[i]["masp"].ToString() == id)
                    {
                        //sanphamda co trong gio hang
                        SoSpTrongGio = i;
                        break;
                    }
                }
                if (SoSpTrongGio != -1)
                {
                    //Lấy ra số lượng hiện tại của sản phẩm đó trong giỏ hàng
                    int soluonghientai = int.Parse(dtGioHang.Rows[SoSpTrongGio]["soluong"].ToString());
                    //Tăng số lượng lên
                    soluonghientai += int.Parse(soLuong);
                    //Cập nhật vào dòng chứa thông tin sản phẩm hiện tại
                    dtGioHang.Rows[SoSpTrongGio]["soluong"] = soluonghientai;
                    //Gán lại giá trị của bảng tạm vào giỏ hàng
                    Session["giohang"] = dtGioHang;
                }
                else //Nếu không có trong giỏ hàng
                {
                    ////Lưu các thông tin của sản phẩm hiện tại vào datatable
                    SqlConnection conn = new cldb().ketnoi();
                    SqlCommand cmd = new SqlCommand("select * from sanpham where masp='" + id + "'", conn);
                    SqlDataReader dulieu = cmd.ExecuteReader();
                    dulieu.Read();
                    dtGioHang.Rows.Add((string)dulieu["masp"].ToString(), (string)dulieu["tensp"].ToString(), (string)dulieu["hinhanh"].ToString(),
                   (string)dulieu["gia"].ToString(), soLuong);
                    Session["giohang"] = dtGioHang;
                    dulieu.Close();
                }
                Response.Write("Sản phẩm đã được thêm vào giỏ!");
            }
        }
     
    }
   
}