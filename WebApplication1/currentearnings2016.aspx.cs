using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Drawing;
using System.Reflection;




namespace WebApplication1
{

    public partial class WebForm1 : System.Web.UI.Page
    {
       
        
        
       

       

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            string Date = TextBox4.Text;
            string ID = TextBox6.Text;
            int Money_Earned = Convert.ToInt32(TextBox3.Text);
            Money_Earned = int.Parse(TextBox3.Text);
            int Money_Saved = Convert.ToInt32(TextBox2.Text);
            Money_Saved = int.Parse(TextBox2.Text);
            int Money_Used_As_Taxes = Convert.ToInt32(TextBox5.Text);
            Money_Used_As_Taxes = int.Parse(TextBox5.Text);

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = (@"Data Source=SERVER\SQLEXPRESS;Initial Catalog=neenee;Integrated Security=True;");

            SqlCommand dataCommand = new SqlCommand();
            dataCommand.Connection = conn;
            conn.Open();
            dataCommand.CommandText = ("select * from earnings2016");
            dataCommand.CommandText = ("insert into earnings2016 ( Date, [Money Earned], [Money Saved], [Money Used As Taxes],[ID] ) values ('" + @Date + "', '" + @Money_Earned + "', '" + @Money_Saved + "', '" + @Money_Used_As_Taxes + "','"+ID+"')"); 
            
            dataCommand.Parameters.AddWithValue("@Date", Date);
            dataCommand.Parameters.AddWithValue("@Money_Earned", Money_Earned);
            dataCommand.Parameters.AddWithValue("@Money_Saved", Money_Saved);
            dataCommand.Parameters.AddWithValue("@Money_Used_As_Taxes", Money_Used_As_Taxes);
            dataCommand.Parameters.AddWithValue("@ID", ID);
            
            dataCommand.ExecuteNonQuery();
            conn.Close();
            
        }

        protected void SqlDataSource2_Deleted(object sender, System.Web.UI.WebControls.SqlDataSourceStatusEventArgs e)
        {

        }
    }
}