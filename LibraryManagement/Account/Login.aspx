<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LibraryManagement.Account.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8"/>
  <title>Log in Form</title>
  <link rel='stylesheet' href='http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css'/>

     <link href="../Content/StyleSheet1.css" rel="stylesheet" /> 
</head>
<body>
    <div class="wrapper">
     
    <form class="form-signin" runat="server">   
        <div>
        <asp:Label ID="message" runat="server" style="text-align: center; font-weight: 700; color: #00CC66; font-size: large"></asp:Label>
   </div>    
      <h2 class="form-signin-heading">Login</h2>
        <div class="form-group">
        <label for="email">Email</label>
            <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="example@gmail.com"></asp:TextBox>     
            <asp:RequiredFieldValidator runat="server" ControlToValidate="email"
                                CssClass="text-danger" ErrorMessage="The email field is required." ID="Test"/> 
      </div>      
        <div class="form-group">
        <label for="password">Password</label>
        <asp:TextBox ID="password" runat="server" CssClass="form-control" placeholder="*********" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="password"
                                CssClass="text-danger" ErrorMessage="Password Field is required."/> 
      </div>     
      <ul class="list-inline">
          <li>
              <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn--form" OnClick="Button1_Click" style="background-color:#617129; color:white;"/>
          </li>
          <li>
            <a class="signup__link" href="/Account/Register">Create New Account</a>
          </li>
        </ul>  
    </form>

  </div>

</body>

</html>
