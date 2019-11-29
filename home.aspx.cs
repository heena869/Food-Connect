using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace applied_project
{
    public partial class home : System.Web.UI.Page
    {
        string str;

        SqlCommand com;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        


        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
        

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            
            str = "select * from food2 where email='" + Session["email"] + "'";
            com = new SqlCommand(str, conn);
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            lblFullName.Text = TextBox1.Text + " " + TextBox2.Text;
            TextBox1.Text = ds.Tables[0].Rows[0]["firstname"].ToString();
            TextBox2.Text = ds.Tables[0].Rows[0]["lastname"].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0]["email"].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0]["password"].ToString();
            TextBox5.Text = ds.Tables[0].Rows[0]["mobile"].ToString();
            TextBox6.Text = ds.Tables[0].Rows[0]["dob"].ToString();
            TextBox7.Text = ds.Tables[0].Rows[0]["gender"].ToString();
            TextBox8.Text = ds.Tables[0].Rows[0]["cuisine"].ToString();









        }


    }
}
