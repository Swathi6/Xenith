using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Xenith
{
    public partial class view_post : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["XenithConnectionString"].ConnectionString))
            {

                var id = Request.QueryString.ToString();

                SqlCommand cmd;
                cmd = new SqlCommand("SELECT [forum_topic],[forum_content] FROM [forum_posts] WHERE [forum_post_id]=@id", con);
                cmd.Parameters.AddWithValue("@id", Request.QueryString.ToString());
                con.Open();
                ListView2.DataSource = cmd.ExecuteReader();
                ListView2.DataBind();
                con.Close();

                con.Open();
                cmd = new SqlCommand("SELECT [comment] FROM [forum_comments] WHERE forum_comments.forum_post_id =@id", con);
                cmd.Parameters.AddWithValue("@id", Request.QueryString.ToString());
                ListView1.DataSource = cmd.ExecuteReader();
                ListView1.DataBind();
                con.Close();
            }

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


        protected void ClearTextBoxes(Control p1)
        {
            foreach (Control ctrl in p1.Controls)
            {
                if (ctrl is TextBox)
                {
                    TextBox t = ctrl as TextBox;

                    if (t != null)
                    {
                        t.Text = String.Empty;
                    }
                }
                else
                {
                    if (ctrl.Controls.Count > 0)
                    {
                        ClearTextBoxes(ctrl);
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            using (SqlConnection db = new SqlConnection(ConfigurationManager.ConnectionStrings["XenithConnectionString"].ConnectionString))
            {
                db.Open();
                SqlCommand cmd;
                SqlCommand cmd2;

                cmd = new SqlCommand("insert into forum_comments (comment, created_date, user_id, forum_post_id) values (@comment, @time, @default_user_id, @forum_post_id)", db);

                //  cmd1 = new SqlCommand("SELECT [no_of_comments] as number from [forum_posts] WHERE forum_posts.forum_post_id =@id", db);
                //  cmd1.Parameters.AddWithValue("@id", Request.QueryString.ToString());
                cmd.Parameters.AddWithValue("@comment", TextBox1.Text.Substring(0));

                cmd.Parameters.AddWithValue("@time", System.DateTime.Now);
                cmd.Parameters.AddWithValue("@default_user_id", "ID_034");
                cmd.Parameters.AddWithValue("@forum_post_id", Request.QueryString.ToString());
                cmd.ExecuteNonQuery();

                //  SqlDataReader dr = cmd1.ExecuteReader();


                //   int i = Convert.ToInt32(dr["number"]);
                //    i = i + 1;
                cmd2 = new SqlCommand("update forum_posts SET no_of_comments=[no_of_comments]+1 where forum_posts.forum_post_id = @id", db);
                cmd2.Parameters.AddWithValue("@id", Request.QueryString.ToString());
                ///   cmd2.Parameters.AddWithValue("@i", i);
                //    dr.Close();
                cmd2.ExecuteNonQuery();



                db.Close();

            }

            Response.Redirect(Request.RawUrl);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/forum.aspx");
        }


    }
}