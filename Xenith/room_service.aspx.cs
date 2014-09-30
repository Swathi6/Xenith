using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace Xenith
{
    public partial class room_service : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["XenithConnectionString"].ConnectionString);
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextArea1.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid order')", true);
                return;
            }
            con.Open();          
            cmd = new SqlCommand("insert into room_service (user_id, user_request) values (@userid,@content)", con);
            cmd.Parameters.AddWithValue("@userid", "ID_007");
            cmd.Parameters.Add(new SqlParameter("@content", TextArea1.Text.Substring(0)));
            cmd.ExecuteNonQuery();
            con.Close();
            TextArea1.Text = "";
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Order successfully placed.')", true);
            Response.Redirect("index.aspx");
        }
    }
}