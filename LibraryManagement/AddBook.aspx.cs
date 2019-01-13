using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement
{
    public partial class AddBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            DBAcme DB = (DBAcme)Session["DB"];

            string BookName = bookName.Text;
            string BookDetails = bookDetails.Text;
            string Author = author.Text;
            string Publication = Convert.ToString(publication.SelectedValue);
            decimal Price = Convert.ToDecimal(price.Text);
            int Quantity = Convert.ToInt32(qty.Text);
            string image = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/" + image));
            string Image = "~/Images/" + image.ToString();
            
            int numrow = DB.InsertBook(BookName, BookDetails, Author, Publication, Price, Quantity, Quantity, image,isbn.Text);
            showMessage.Text = "Book added successfully!";
        }
    }
}