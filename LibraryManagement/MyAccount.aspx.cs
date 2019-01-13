using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement
{
    public partial class MyAccount : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=KANAIYAARYA2F15\KANAIYA;Initial Catalog=LibaryManagement;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                SqlCommand com;
                string str;
                str = "select * from Student where Email='" + Session["UserName"] + "'";
                //str = "select * from Student where Email='" + Session["UserName"].ToString() + "'";
                com = new SqlCommand(str, conn);
                conn.Open();
                SqlDataReader reader = com.ExecuteReader();

                if (reader.Read())
                {
                    studentid.Text = reader["StudentID"].ToString();
                    stdname.Text = reader["StudentName"].ToString();
                    email.Text = reader["Email"].ToString();
                    phone.Text = reader["Phone"].ToString();
                }
                conn.Close();
                setFalse();
                
            }
            Cancel.Visible = false;
        }

        private void setFalse()
        {
            studentid.Enabled = false;
            stdname.Enabled = false;
            email.Enabled = false;
            phone.Enabled = false;
            update.Visible = false;
        }
        private void setTrue()
        {
            stdname.Enabled = true;
            email.Enabled = true;
            phone.Enabled = true;
            update.Visible = true;
            edit.Visible = false;
        }
        protected void Edit_Click(object sender, EventArgs e)
        {
            setTrue();
            Cancel.Visible = true;
        }

        protected void Update_Click(object sender, EventArgs e)
        {
          
            conn.Open();
            SqlCommand cmd1 = conn.CreateCommand();
           cmd1.CommandText = "update Student set StudentName='"+stdname.Text+"',Email='"+email.Text+"',Phone='"+phone.Text+"' where StudentID='" + studentid.Text + "'";
            cmd1.ExecuteNonQuery();
            message.Text = "Data has been updated!";

            setFalse();
            edit.Visible = true;
            
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            setFalse();
            edit.Visible = true;
        }
    }
}