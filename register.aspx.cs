using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace applied_project
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 1; i <= 31; i++)
            {
                DropDownList1.Items.Add(i.ToString());
            }
            for (int i = 1; i <= 12; i++)
            {
                DropDownList2.Items.Add(i.ToString());
            }
            for (int i = 1990; i <= 2020; i++)
            {
                DropDownList3.Items.Add(i.ToString());
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();//Add data to the sql database

                string dob1 = DropDownList1.SelectedValue + "/" +DropDownList2.SelectedValue + "/" + DropDownList3.SelectedValue;
                                
                SqlCommand cmd = new SqlCommand("insert into food2(firstname, lastname, email, password, mobile, dob, gender, cuisine)values(@firstname, @lastname, @email, @password, @mobile, @dob, @gender, @cuisine)",conn);
                cmd.Parameters.AddWithValue("@firstname", TextBox1.Text);
                cmd.Parameters.AddWithValue("@lastname", TextBox2.Text);
                cmd.Parameters.AddWithValue("@email", TextBox3.Text);
                cmd.Parameters.AddWithValue("@password", TextBox4.Text);
                cmd.Parameters.AddWithValue("@mobile", TextBox5.Text);
                cmd.Parameters.AddWithValue("@dob", dob1);
                cmd.Parameters.AddWithValue("@gender",RadioButtonList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@cuisine",DropDownList4.SelectedItem.Value);
                cmd.ExecuteNonQuery();

                Response.Redirect("Reg_success.aspx");

                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("Cannot connect to database" + ex.ToString());
            }


        }
        protected void CustomValidator1_ServerValidate(object source,ServerValidateEventArgs args)
        {
            if (args.Value.Length <= 8)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;

            }

        }

        
    }
}
