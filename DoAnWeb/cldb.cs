using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace DoAnWeb
{
    public class cldb
    {
        public SqlConnection ketnoi()
        {
            string connect_string = @"server=DESKTOP-6RPTFPA\SQLEXPRESS;uid=sa;pwd=123;database=website_bangiay";
            SqlConnection conn = new SqlConnection(connect_string);
            conn.Open();
            return conn;
        }
    }
}