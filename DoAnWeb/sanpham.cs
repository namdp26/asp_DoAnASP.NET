//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Data;
//using System.Data.SqlClient;

//namespace DoAnWeb
//{
//    public class sanpham_cs
//    {
//        public static DataTable thongtin_sp_byid(string masp)
//        {
//            SqlConnection conn = new cldb().ketnoi();
//            SqlCommand cmd = new SqlCommand("thongtin_sp_byid");
//            cmd.CommandType = CommandType.StoredProcedure;
//            cmd.Parameters.AddWithValue("@masp", masp);
//            return SQLDatabase.GetData(cmd);
//        }
//    }
//}