using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Resume_builder
{
    public partial class Education : System.Web.UI.Page
    {
        SqlCommand sql = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
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
                
            }
        }

        protected void onEdu(object sender,EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Education" + "(Degree,HSC,SSC,Email)values(@Degree,@HSC,@SSC,@Email)", con);
            cmd.Parameters.AddWithValue("@Degree", degree_input.Text);
            cmd.Parameters.AddWithValue("@HSC", hsc_input.Text);
            cmd.Parameters.AddWithValue("@SSC", ssc_input.Text);
            cmd.Parameters.AddWithValue("@Email", Session["email_user"]);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Your Data is recorded successfully')</script>");
            con.Close();
        }
        
        public void showname()
        {
            sql.CommandText = "select * from Registeration where email='" + Session["email_user"] + "'";
            sql.Connection = con;
            sda.SelectCommand = sql;
            sda.Fill(ds);
            display_name.Text = ds.Tables[0].Rows[0]["Name"].ToString();

        }
        protected void next_click(object sender,EventArgs e)
        {
            Response.Redirect("knowledge.aspx");
        }
        protected void onlogout(object sender,EventArgs e)
        {
            Session["email_user"] = null;
            Response.Redirect("Login.aspx");
        }

    }
}