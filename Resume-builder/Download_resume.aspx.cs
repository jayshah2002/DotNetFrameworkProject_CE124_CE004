using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Resume_builder
{
    public partial class Download_resume : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataTable dt = new DataTable();
        DataSet ds = new DataSet();
        SqlCommand sql = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email_user"] == null)
            {
                Response.Write("<script>You need to Login first</script>");
                Response.Redirect("Login.aspx");
            }
            else
            {
                con.ConnectionString = ConfigurationManager.ConnectionStrings["resume"].ConnectionString;
                con.Open();
                showname();
                showdata();
            }

        }
        public void showname()
        {
            sql.CommandText = "select * from Registeration where email='" + Session["email_user"] + "'";
            sql.Connection = con;
            sda.SelectCommand = sql;
            sda.Fill(ds);
            display_name.Text = ds.Tables[0].Rows[0]["Name"].ToString();

        }
        public void showdata()
        {
           


        }
    }
}