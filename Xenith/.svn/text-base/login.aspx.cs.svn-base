using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace Xenith
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AppendHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
            Response.AppendHeader("Pragma", "no-cache"); // HTTP 1.0.
            Response.AppendHeader("Expires", "0"); // Proxies.

            if (Session["useridx"] != null)
            {
                
                Response.Redirect("index.aspx");
            }
            

        }

        protected void Signin_Click(object sender, EventArgs e)
        {
            string inpusername = inputusername.Text;
            string inppassword = inputpassword.Text;

            string zpwd = "";
            string zfname = "";
            string zlname = "";
            string zuserid = "";

            // declare the SqlDataReader, which is used in
            // both the try block and the finally block
            SqlDataReader rdr = null;

            // create a connection object
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["XenithConnectionString"].ConnectionString);

            // create a command object
            String qry1 = "select * from sysuser where sysuser_login='" + inpusername + "' and sysuser_role=3";
            SqlCommand cmd = new SqlCommand(qry1, conn);

            System.Diagnostics.Debug.WriteLine(qry1);

            bool allowlogin = false;

            try
            {
                // open the connection
                conn.Open();

                // 1. get an instance of the SqlDataReader
                rdr = cmd.ExecuteReader();


                // 2. print necessary columns of each
                while (rdr.Read())
                {
                    // get the results of each column
                    
                    zpwd = (string)rdr["sysuser_pwd"];

                    zuserid = (string)rdr["sysuser_id"].ToString();

                    zfname = (string)rdr["sysuser_fname"];
                    zlname = (string)rdr["sysuser_lname"];
                    
                    if (zpwd == inppassword)
                    {
                        allowlogin = true;
                    }

                }
            }
            finally
            {
                // 3. close the reader
                if (rdr != null)
                {
                    rdr.Close();
                }

                // close the connection
                if (conn != null)
                {
                    conn.Close();
                }
            }



            if (allowlogin == true)
            {
                Session["usernamex"] = inpusername;
                Session["useridx"] = zuserid;
                Session["fnamex"] = zfname;
                Session["lnamex"] = zlname;
                Response.Redirect("index.aspx");
            }
            else
            {
                ValidationMsg.Text = "Invalid username or password ! Please try again !";
            }
        }
    }
}