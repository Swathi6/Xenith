using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;

namespace Xenith
{
    public partial class order_cab : System.Web.UI.Page
    {
        //create a connection to database using connection string
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["XenithConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["errorMsg"] != null)
            {
                ValidationMsg.Text = Session["errorMsg"].ToString();

                Session["errorMsg"] = null;
            }


            //call the method to fetch data from database
            if (!Page.IsPostBack)
            {
                FillList();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Add code here to call the payment method through PayPal API.  


        }

        private void FillList()
        {
            oc_package_ddl.Items.Clear();

            string selectSQL = "SELECT package_number, package_hours, package_cost,package_miles FROM package_types";
            // Define the ADO.NET objects.

            SqlCommand cmd = new SqlCommand(selectSQL, con);
            SqlDataReader reader;
            // Try to open database and read information.       
            con.Open();
            reader = cmd.ExecuteReader();
            // Iterate through each item             
            while (reader.Read())
            {
                string strText, strValue;
                strText = reader["package_hours"].ToString() + " Hour-$" + reader["package_cost"].ToString() + "-" + reader["package_miles"].ToString() + " Miles";
                strValue = reader["package_number"].ToString();
                oc_package_ddl.Items.Add(new ListItem(strText, strValue));
            }
            reader.Close();
            con.Close();
        }
    }
}


