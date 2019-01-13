using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Diagnostics;

public class DBAcme
{
    private string connStr = @"Data Source=KANAIYAARYA2F15\KANAIYA;Initial Catalog=LibaryManagement;Integrated Security=True";
    private SqlCommand cmd;
    private SqlConnection conn;

    public DBAcme()
    {
        conn = new SqlConnection();
        conn.ConnectionString = connStr;
        cmd = conn.CreateCommand();
    }
    public int InsertUser(string email, string fullname, string password, string confirmPassword, string phone, int postal)
    {
        cmd.CommandText =
            "insert into Register (Email,Fullname, Password, ConfirmPassword, Phone,PostalCode)" +
            "values (@email,@fullName, @password, @confirmPassword, @phone,@postalCode)";
        conn.Close();

        cmd.Parameters.Clear();
        SqlParameter p = new SqlParameter("@fullName", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = fullname;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@password", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = password;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@confirmPassword", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = confirmPassword;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@email", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = email;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@phone", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = phone;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@postalCode", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = postal;
        cmd.Parameters.Add(p);

        conn.Open();
        int numrow = cmd.ExecuteNonQuery();
        conn.Close();
        return numrow;

    }
    public int InsertStudent(string studetID, string studentName, string email, string password, string confirmPassword, string phone)
    {
        cmd.CommandText =
            "insert into Student (StudentID,StudentName,Email, Password, ConfirmPassword, Phone)" +
            "values (@studentID,@studentName,@email, @password, @confirmPassword, @phone)";
        conn.Open();

        cmd.Parameters.Clear();
        SqlParameter p = new SqlParameter("@studentID", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = studetID;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@studentName", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = studentName;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@email", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = email;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@password", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = password;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@confirmPassword", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = confirmPassword;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@phone", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = phone;
        cmd.Parameters.Add(p);

        //conn.Open();
        int numrow = cmd.ExecuteNonQuery();
        conn.Close();
        return numrow;

    }
    public Boolean GetUser(string email, string password)
    {
        Boolean flag = false;
        cmd.CommandText = "select Email,Password from Student where Email=@email and Password=@password";
        cmd.Parameters.Clear();
        conn.Open();
        SqlParameter p = new SqlParameter("@Email", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = email;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@password", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = password;
        cmd.Parameters.Add(p);

        //conn.Open();
        string reader = (string)cmd.ExecuteScalar();
        if (reader != null)
        {
            flag = true;
        }
        conn.Close();
        return flag;
    }
    public int InsertPublication(string publicationName)
    {
        cmd.CommandText =
            "insert into Publication (PublicationName)" +
            "values (@publicationName)";
        //conn.Open();

        cmd.Parameters.Clear();
        SqlParameter p = new SqlParameter("@publicationName", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = publicationName;
        cmd.Parameters.Add(p);

        conn.Open();
        int numrow = cmd.ExecuteNonQuery();
        conn.Close();
        return numrow;

    }
    public int InsertBook(string bookName, string bookDetails, string author, string publication, decimal price, int quantity, int availableQty, string bookImage, string isbn)
    {
        cmd.CommandText =
            "insert into Book (BookName, BookDetails, Author, Publication, Price,Quantity,AvailableQty,BookImage,isbn)" +
            "values (@bookName, @bookDetails, @author, @publication, @price, @quantity, @availableQty, @bookImage, @ISBN)";
        //conn.Open();

        cmd.Parameters.Clear();
        SqlParameter p = new SqlParameter("@bookName", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = bookName;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@bookDetails", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = bookDetails;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@author", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = author;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@publication", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = publication;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@price", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = price;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@quantity", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = quantity;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@availableQty", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = availableQty;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@bookImage", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = bookImage;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@ISBN", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = isbn;
        cmd.Parameters.Add(p);

        conn.Open();
        int numrow = cmd.ExecuteNonQuery();
        conn.Close();
        return numrow;

    }
    public int InsertBorrowBook(string studentId, string studentName, string email, string bookName, string author, string borrowDate)
    {
        cmd.CommandText =
            "insert into BorrowBook (StudentID,StudentName, Email, BookName, Author,BorrowDate)" +
            "values (@studentId,@studentName, @email, @bookName, @author,@borrowDate)";
        //conn.Open();
        // cmd.CommandText = "update Book set AvailableQty=AvailableQty-1, RentQty=RentQty+1 where BookName='" + Session["UserName"].to+ "'";
        cmd.Parameters.Clear();
        SqlParameter p = new SqlParameter("@studentId", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = studentId;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@studentName", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = studentName;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@email", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = email;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@bookName", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = bookName;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@author", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = author;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@borrowDate", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = borrowDate;
        cmd.Parameters.Add(p);

        conn.Open();
        int numrow = cmd.ExecuteNonQuery();
        conn.Close();
        return numrow;

    }
    public int InsertFeedback(string name,string email,string subject, string message)
    {
        cmd.CommandText =
            "insert into FeedBack (Name,Email,Subject,Message)" +
            "values (@name,@email,@subject,@message)";
        //conn.Open();

        cmd.Parameters.Clear();
        SqlParameter p = new SqlParameter("@name", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = name;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@email", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = email;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@subject", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = subject;
        cmd.Parameters.Add(p);

        p = new SqlParameter("@message", DbType.String);
        p.Direction = ParameterDirection.Input;
        p.Value = message;
        cmd.Parameters.Add(p);

        conn.Open();
        int numrow = cmd.ExecuteNonQuery();
        conn.Close();
        return numrow;

    }

}
