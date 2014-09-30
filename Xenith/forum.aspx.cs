
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Xenith
{
    public partial class forum: System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["XenithConnectionString"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT [forum_post_id], [forum_topic], [no_of_comments] FROM [forum_posts]", con);
                con.Open();
                
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
                con.Close();
            }

            //    foreach (GridViewRow gr in GridView1.Rows)
            //    {
            //       SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            //      con.Open();
            ///      SqlCommand cmd = new SqlCommand("SELECT [forum_topic] FROM [forum_posts]", con);
            //     HyperLink hp = new HyperLink();
            //      hp.Text = gr.Cells[1].Text;

            //   using (SqlDataReader dr = cmd.ExecuteReader())
            //   {
            //       while (dr.Read())
            //       {
            //var s = dr.GetString(0);
            //          hp.NavigateUrl = "~/view_post.aspx?forum_post_id={0}";
            //          gr.Cells[1].Controls.Add(hp);
            //      }
            //  }






            //     }


        }





        private DataSet GetViewState()
        {
            //Gets the ViewState
            return (DataSet)ViewState["myDataSet"];
        }

        private void SetViewState(DataSet myDataSet)
        {
            //Sets the ViewState
            ViewState["myDataSet"] = myDataSet;
        }

        protected void myGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            DataSet myDataSet = GetViewState();
            DataTable myDataTable = myDataSet.Tables[0];

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/create_post.aspx");


        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/create_post.aspx");
        }
    }
}