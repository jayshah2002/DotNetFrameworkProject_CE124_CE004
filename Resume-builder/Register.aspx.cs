using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resume_builder
{
    public partial class Register : System.Web.UI.Page
    {
         
         SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["resume"].ConnectionString;
            con.Open();
        }

        protected void onRegister(object sender, EventArgs e)
        {
            SqlCommand main = new SqlCommand("Select count(*) from Registeration where Password='"+Password.Value+"'",con);
            SqlCommand mail = new SqlCommand("Select count(*) from Registeration where Email='" + email.Value + "'",con);
            main.Parameters.AddWithValue("@Password", Password.Value);
            mail.Parameters.AddWithValue("@Email", email.Value);
            if ((int)main.ExecuteScalar() > 0)
            {
                Response.Write("<script>alert('Password Alreay Exists!!')</script>");
            }
            else if ((int)mail.ExecuteScalar() > 0)
            {
                Response.Write("<script>alert('Email address Alreay Exists!!')</script>");
            }
            else
            {
                string pass = Password.Value;
                string con_pass = confirmPassword.Value;
                if (pass == con_pass)
                {
                    SqlCommand cmd = new SqlCommand("insert into Registeration" + "(Name,Email,Mobileno,Address,Password)values(@Name,@Email,@Mobileno,@Address,@Password)",con);
                    cmd.Parameters.AddWithValue("@Name",name.Value);
                    cmd.Parameters.AddWithValue("@Email", email.Value);
                    cmd.Parameters.AddWithValue("@Mobileno", Mobile.Value);
                    cmd.Parameters.AddWithValue("@Address", address_input.Value);
                    cmd.Parameters.AddWithValue("@Password", Password.Value);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('You have successfully register.')</script>");
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Password and Confirm Password do not match.')</script>");
                   
                }
            }
            //Label.Text = "Inserted";

        }
    }
}