using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement
{
    public partial class ReturnBook : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=KANAIYAARYA2F15\KANAIYA;Initial Catalog=LibaryManagement;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            bookName.Text = gr.Cells[4].Text;

            borrowDate.Text = gr.Cells[7].Text;
            borrowID.Text = gr.Cells[1].Text;
            BorrowForm.Visible = true;
        }
        protected void btnReturn(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            string testDate = "2/10/18 12:33:33 AM";
            //DateTime returnDate = DateTime.Now;
            DateTime returnDate = DateTime.Parse(testDate);
            SqlCommand cmd1 = conn.CreateCommand();
            cmd1.CommandText = "update BorrowBook set ReturnDate='" + returnDate + "' where BorrowBookID='" + borrowID.Text + "'";
            conn.Open();
            cmd1.ExecuteNonQuery();

            SqlCommand cmd = conn.CreateCommand();
            cmd1.CommandText = "update Book set AvailableQty=AvailableQty+1,RentQty=RentQty-1 where BookName='" + bookName.Text + "' and Author='" + gr.Cells[6].Text + "'";
            cmd1.ExecuteNonQuery();
            conn.Close();
            showMessage.Text = "Book return successfully!";

            SqlCommand com;
            string str;
            str = "select BorrowDate, ReturnDate from BorrowBook where BorrowBookID='" + borrowID.Text + "'";
            com = new SqlCommand(str, conn);
            conn.Open();
            SqlDataReader reader = com.ExecuteReader();
            int result=0,calculateFine=0;
            if(reader.Read())
            {
                string borrowDate= reader["BorrowDate"].ToString();
                string newReturnDate = reader["ReturnDate"].ToString();
                
                DateTime bDate = DateTime.Parse(borrowDate);
                DateTime rDate = DateTime.Parse(newReturnDate);
                //DateTime rDate = DateTime.Parse(testDate);
                //result = DateTime.Compare(rDate, bDate);
                TimeSpan resultDate = rDate.Subtract(bDate);
                int d = resultDate.Days;
                if(d>6)
                {
                    calculateFine = (d-6);
                }

                
                Console.WriteLine(result);
            }
            conn.Close();

            SqlCommand cmd3 = conn.CreateCommand();
            cmd1.CommandText = "update BorrowBook set Fine='" + calculateFine + "' where BorrowBookID='" + borrowID.Text + "'";
            conn.Open();
            cmd1.ExecuteNonQuery();
            conn.Close();


        }

        protected void stdDrop_SelectedIndexChanged1(object sender, EventArgs e)
        {
            BorrowForm.Visible = false;
        }

        protected void bookDrop_SelectedIndexChanged1(object sender, EventArgs e)
        {
            BorrowForm.Visible = false;
        }

      
    }
}