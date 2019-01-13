using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement
{
    public partial class Publication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Add(object sender, EventArgs e)
        {
            DBAcme DB = (DBAcme)Session["DB"];


            string publicationName = publicationid.Text;

            int numrow = DB.InsertPublication(publicationName);
            showMessage.Text = "Publication added successfully";
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

    }
}