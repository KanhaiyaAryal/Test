using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //if(Session["reg"]=="Registered")
            {
                message.Text = "Registerd Successfully!";
            }
          
            
            //message.Text = "";
            DBAcme DB = (DBAcme)Session["DB"];

            string user = email.Text;
            //Session["User"] = user;
            string Password = password.Text;
            Boolean flag = DB.GetUser(user, Password);

            
            if(flag)
            {
                Session["UserName"] = user;
                //ScriptManager.RegisterStartupScript(Page, Page.GetType(), "Alert", "Data has been saved", true);

                if(user.Equals("admin@gmail.com") && Password.Equals("123"))
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Success')</script>");
                    Response.Redirect("~/AdminSite.aspx");

                }
                else
                    Response.Redirect("~/Default.aspx");
            }
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Fail')</script>");
        }
    }
}