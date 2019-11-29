<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="applied_project.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta name="viewport" content="width=device-width, initial-scale=1" />
 <link href="css/bootstrap.min.css" rel="stylesheet" />
 <script src="js/bootstrap.min.js"></script>
    <link href="js/login_Style.css" rel="stylesheet" />
<title>Login Page</title>
</head>
<body>
 <form id="form1" runat="server">
  <div class="container">
   <div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
        <span class="img">
            <center><asp:Image ID="Image1" runat="server" ImageUrl="~/images/o.jpg" Height="126px" /></center>
        </span>
        <h3 class="text-center">Food Connect
            <br />
        Connecting Foodies to share their interests in various cuisines.</h3>
        <div class="row">
         <label class="label col-md-4 control-label">User Name</label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [food2]"></asp:SqlDataSource>
         <div class="col-md-8">
          <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="A@gmail.com" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Error:Field Required!!" ControlToValidate="TextBox3" Font-Bold="True"  Font-Size="Smaller" ForeColor="White" ValidationGroup="log" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Error:invalid..email address!! " ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox3" Font-Bold="True" Font-Size="Smaller" ForeColor="White" ValidationGroup="log"></asp:RegularExpressionValidator>
          </div></div>

        <div class="row">
         <label class="label col-md-4 control-label">Password</label>
         <div class="col-md-8">
          <asp:TextBox ID="TextBox4" runat="server" class="form-control" TextMode="Password" placeholder="Password" />
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Error:Field Required!!" ControlToValidate="TextBox4" Font-Bold="True" ForeColor="White" Font-Size="Smaller" ValidationGroup="log"></asp:RequiredFieldValidator>
         </div>
        </div>

        <div class="row">
           <div class="col-sm-4">
            <asp:CheckBox ID="CheckBox1" runat="server" /><small>Remember me</small>
           </div>
           <div class="col-md-4">
            <asp:Button ID="Button1" class="btn-info" runat="server" OnClick="Button1_Click" Text="Sign-In" ValidationGroup="log" />
           </div>
           <div class="col-md-4">
            <asp:Button ID="Button2" class="btn-info" runat="server" OnClick="Button2_Click" Text="Sign-Up"  />
           </div>
        </div>

    
    </div>
    <div class="col-md-3"></div>
   </div>
  </div>

 </form>
</body>
</html>
