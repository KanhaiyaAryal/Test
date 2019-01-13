using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement
{
    public partial class Student_Penalty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(GridView1.Rows.Count==0)
            {
                dvempty.Visible = true;
               
            }
        }
    }
}