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
       

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = (@"Data Source=SERVER\SQLEXPRESS;Initial Catalog=neenee;Integrated Security=True;");
            conn.Open();
            SqlCommand cmd = new SqlCommand("monthlyearnings2016", conn);
            SqlCommand do1 = new SqlCommand("totalsave2016", conn);
             SqlCommand cmd1 = new SqlCommand("totalyear2016", conn);
            SqlCommand cmd2 = new SqlCommand("totaltax2016", conn);


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