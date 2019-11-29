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
    public partial class login : System.Web.UI.Page
    {
     
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string check = "select count(*) from [food2] where email ='" + TextBox3.Text + "' and password = '" + TextBox4.Text + "' ";
            SqlCommand com = new SqlCommand(check, conn);
            

            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
            if (temp == 1)
            {
                Session["email"] = TextBox3.Text;
                Response.Redirect("home.aspx");
            }
            else
            {

                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Incorrect Username and Password');</script>");

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }
    }
}