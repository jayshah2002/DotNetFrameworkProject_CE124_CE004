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
    public partial class Login : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email_user"] != null)
            {
                Response.Redirect("Personalinfo.aspx");
            }
            else
            {
                con.ConnectionString = ConfigurationManager.ConnectionStrings["resume"].ConnectionString;
                con.Open();
            }
        }
        
        protected void onlogin(object sender, EventArgs e)
        {
            string email_user = email.Value.Trim();
            cmd.CommandText = "Select * from Registeration where Email='"+email.Value+"'and Password='"+Password.Value+"'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "Registeration");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["email_user"] = email_user;
                if (true)
                {
                    Response.Redirect("Personalinfo.aspx");
                }

            }
            else
            {
                // Label1.Text = "Data not found";
                Response.Write("<script>alert('Your Email address or Password is invalid')</script>");
                //Response.Write("If you have not register.First register now {'Register.aspx'}");
            }
        }

       
    }
}