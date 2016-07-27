using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication1
{
    public partial class stats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = (@"Data Source=SERVER\SQLEXPRESS;Initial Catalog=neenee;Integrated Security=True;");
            conn.Open();
            SqlCommand cmd = new SqlCommand("monthlyearnings", conn);
            SqlCommand do1 = new SqlCommand("totalsave", conn);
             SqlCommand cmd1 = new SqlCommand("totalyear", conn);
            SqlCommand cmd2 = new SqlCommand("totaltax", conn);


            cmd.CommandType = CommandType.StoredProcedure;
            do1.CommandType = CommandType.StoredProcedure;
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd2.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            do1.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
        }
    }
}