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
    public partial class knowledge : System.Web.UI.Page
    {
        
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
        SqlCommand sql = new SqlCommand();
        public void showname()
        {
            sql.CommandText = "select * from Registeration where email='" + Session["email_user"] + "'";
            sql.Connection = con;
            sda.SelectCommand = sql;
            sda.Fill(ds);
            display_name.Text = ds.Tables[0].Rows[0]["Name"].ToString();

        }
        protected void onSkill(object sender,EventArgs e)
        {
            SqlCommand skil = new SqlCommand("insert into Skills" + "(Skill,Hobbies,Courses)values(@Skill,@Hobbies,@Courses)", con);
            skil.Parameters.AddWithValue("@Skill", skills_input.Text);
            skil.Parameters.AddWithValue("@Hobbies", hobbie_input.Text);
            skil.Parameters.AddWithValue("@Courses", course_input.Text);
            skil.ExecuteNonQuery();
            Response.Write("<script>alert('Your Data is recorded successfully')</script>");
            con.Close();

        }
        protected void generate_resume(object sender,EventArgs e)
        {
            Response.Redirect("Download_resume.aspx");
        }

        protected void onlogout(object sender, EventArgs e)
        {
            Session["email_user"] = null;
            Response.Redirect("Login.aspx");

        }
    }
}