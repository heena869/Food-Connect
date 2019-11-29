<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg_success.aspx.cs" Inherits="applied_project.Reg_success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta name="viewport" content="width=device-width, initial-scale=1" />
 <link href="css/bootstrap.min.css" rel="stylesheet" />
 <script src="js/bootstrap.min.js"></script>
 <link href="js/Rg-success_Style.css" rel="stylesheet" />
<title>Successfully Register</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="row">
            <div class ="col-md-3"></div>
            <div class="col-md-6">

            <div class="col-md-12">
                <center><asp:HyperLink href="register.aspx" ID="HyperLink1" runat="server">Create New Account</asp:HyperLink></center>
            </div>

            <div class="col-md-12">
               <label class="label">You have registered successfully.You can login now </label>
        </div>

            <div class="col-md-12">
                <center><label class="label control-label">Already have an account?</label>
                <asp:HyperLink href="login.aspx" ID="HyperLink2" runat="server">Sign In</asp:HyperLink></center>
       </div> </div>
            <div class="col-md-3"></div>
    </div></div>
</form>
</body>
</html>
