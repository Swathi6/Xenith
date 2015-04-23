using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized;

namespace Xenith
{
    public partial class order_cab_process : System.Web.UI.Page
    {
        public string item_amount;
        public string appurl;

        protected void Page_Load(object sender, EventArgs e)
        {


            appurl = HttpContext.Current.Request.Url.GetLeftPart(UriPartial.Authority) + ResolveUrl("~/");


           
            if (PreviousPage != null)
            {
                ContentPlaceHolder MainContent = PreviousPage.Master.FindControl("CPHMainContainer") as ContentPlaceHolder;
                DropDownList oc_package_ddl = MainContent.FindControl("oc_package_ddl") as DropDownList;

                TextBox datepicker1 = MainContent.FindControl("datepicker1") as TextBox; 
                TextBox timepicker1 = MainContent.FindControl("timepicker1") as TextBox; 


                    if (oc_package_ddl != null)
                    {
                        item_amount = oc_package_ddl.SelectedItem.Value;
                    }

                    
                
                    Session["errorMsg"] = null;

                    if (datepicker1.Text.Length == 0)
                    {
                        Session["errorMsg"] = Session["errorMsg"] + "Please enter valid Date<br/>";   
                    }

                    if (timepicker1.Text.Length == 0)
                    {
                        Session["errorMsg"] = Session["errorMsg"] + "Please enter valid Time<br/>";   
                    }

                    if (item_amount.Length == 0)
                    {
                        Session["errorMsg"] = Session["errorMsg"] + "Please enter valid Package<br/>";   
                    }


                    if (Session["errorMsg"] != null)
                    {
                        Response.Redirect("order_cab.aspx");
                    }


               
            }
            




            //System.Text.StringBuilder displayValues =
            //        new System.Text.StringBuilder();
            //System.Collections.Specialized.NameValueCollection
            //    postedValues = Request.Form;
            //String nextKey;
            //for (int i = 0; i < postedValues.AllKeys.Length; i++)
            //{
            //    nextKey = postedValues.AllKeys[i];
            //    if (nextKey.Substring(0, 2) != "__")
            //    {
            //        displayValues.Append("<br>");
            //        displayValues.Append(nextKey);
            //        displayValues.Append(" = ");
            //        displayValues.Append(postedValues[i]);
            //    }
            //}
            //Response.Write(displayValues.ToString());

            //System.Text.StringBuilder displayValues =
            //        new System.Text.StringBuilder();
            //System.Collections.Specialized.NameValueCollection
            //    postedValues = Request.Form;
            //String nextKey;
            //for (int i = 0; i < postedValues.AllKeys.Length; i++)
            //{
            //    nextKey = postedValues.AllKeys[i];
            //    if(nextKey.EndsWith("oc_package_ddl"))
            //    {
            //        item_amount = postedValues[i];
            //    }
            //}

            



        }
    }
}