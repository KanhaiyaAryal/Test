using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement
{
    public partial class BookReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                foreach (GridViewRow gr in GridView1.Rows)
                {
                    string borrowDate = GridView1.Rows[gr.RowIndex].Cells[4].Text;
                    DateTime bDate = DateTime.Parse(borrowDate);
                    DateTime rDate = bDate.AddDays(7);
                    DateTime nowDate = DateTime.Now;
                    TimeSpan resultDate = rDate.Subtract(nowDate);
                    ((Label)gr.FindControl("rDays")).Text = resultDate.ToString();
                } 
            }
            if (GridView1.Rows.Count==0)
            {
                dvempty.Visible = true;
            }
            
        }
    }
}