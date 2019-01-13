using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement
{
    public partial class AddStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUser_Click(object sender, EventArgs e)
        {
            DBAcme DB = (DBAcme)Session["DB"];
            string StudentID = studentID.Text;
            string StudentName = studentname.Text;
            string password = Password.Text;
            string confirmPassword = ConfirmPassword.Text;
            string email = Email.Text;
            string phone = Phone.Text;
            int numrow = DB.InsertStudent(StudentID, StudentName, email, password, confirmPassword, phone);
            showMessage.Text = "Student added successfully!";
        }
    }
}