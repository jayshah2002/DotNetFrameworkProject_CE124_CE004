using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Resume_builder
{
    public partial class Personalinfo : System.Web.UI.Page
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
        protected void Personal_details(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Personaldetails" + "(Name,Email,Mobileno,State,City,Gender)values(@Name,@Email,@Mobileno,@State,@City,@Gender)", con);
            cmd.Parameters.AddWithValue("@Name",name_input.Text );
            cmd.Parameters.AddWithValue("@Email", email_input.Text);
            cmd.Parameters.AddWithValue("@Mobileno", mobile_input.Text);
            cmd.Parameters.AddWithValue("@State", state_input.Text);
            cmd.Parameters.AddWithValue("@City",city_input.Text);
            cmd.Parameters.AddWithValue("@Gender",gender.SelectedItem.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Your data is recorded')</script>");
            con.Close();
        }
        protected void next1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Education.aspx");
        }
        protected void onlogout(object sender,EventArgs e)
        {

            Session["email_user"] = null;
            Response.Redirect("Login.aspx");
           
        }
    }
}