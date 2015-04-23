using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Xenith
{
    public partial class Xenith : System.Web.UI.MasterPage
    {
        public string menu_home;
        public string menu_explorehotel;
        public string menu_forum;
        public string menu_explorecity;
        public string menu_entertainment;
        public string menu_transportation;
        public string menu_roomservice;
        public string menu_tools;
        public string menu_contact;

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AppendHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
            Response.AppendHeader("Pragma", "no-cache"); // HTTP 1.0.
            Response.AppendHeader("Expires", "0"); // Proxies.

            if (Session["usernamex"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                // Do whatever you were going to do.
            }


            String curr_file = System.IO.Path.GetFileNameWithoutExtension(HttpContext.Current.Request.FilePath);
            
            switch(curr_file)
            {
                case "index":
                menu_home="selected";
                break;

                case "explore_the_hotel":
                menu_explorehotel="selected";
                break;

                case "forum":
                menu_forum="selected";
                break;

                case "explore_the_city":
                menu_explorecity="selected";
                break;

                case "entertainment":
                menu_entertainment="selected";
                break;

                case "public_transportation":
                menu_transportation="selected";
                break;

                case "order_cab":
                menu_transportation="selected";
                break;

                case "room_service":
                menu_roomservice="selected";
                break;

                case "currency_converter":
                menu_tools="selected";
                break;

                case "contact_us":
                menu_contact="selected";
                break;

                case "send_feedback":
                menu_contact="selected";
                break;

            }





        }

 
       
    }
}