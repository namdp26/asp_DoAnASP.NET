using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace DoAnWeb.ajax
{
    public partial class ajax_xoa_gio_hang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string masp = Request.Form["masp"];
            //khoi tao datatable moi luu vao session gio hang
            DataTable gio_hang = (DataTable)Session["giohang"];
            //voi hang cua data bang hang co chua masp
            DataRow[] _row = gio_hang.Select("masp="+masp);
            foreach (DataRow row in _row)
            //thuc hien xoa hang voi masp tuong ung
            gio_hang.Rows.Remove(row);
            gio_hang.AcceptChanges();
            Session["giohang"] = gio_hang;
        }
    }
}