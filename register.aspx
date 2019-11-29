<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="applied_project.register" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta name="viewport" content="width=device-width, initial-scale=1" />
 <link href="css/bootstrap.min.css" rel="stylesheet" />
 <script src="js/bootstrap.min.js"></script>
 <link href="js/Styles.css" rel="stylesheet" />
<title>Registration page</title>
</head>
<body>
    <form id="form2" runat="server">
     <div class="container">
      <div class="row">
       <div class="col-md-3"></div>
       <div class="col-md-6">

        <h1 class="text-center">REGISTRATION FORM</h1>

        <div class="row">
        <label class="label col-md-4 control-label">First Name</label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [food2]"></asp:SqlDataSource>
        <div class="col-md-8">
         <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="First Name" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Error:Field Required!!" ControlToValidate="TextBox1" Font-Bold="True" ForeColor="White"  Font-Size="Smaller" SetFocusOnError="True" ValidationGroup="reg"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Error:Contains letters only!! " ValidationExpression="^[A-Za-z]+$" ControlToValidate="TextBox1" Font-Bold="True"  Font-Size="Smaller" ForeColor="White" ValidationGroup="reg"></asp:RegularExpressionValidator>
        </div></div>

       <div class="row">
        <label class="label col-md-4 control-label">Last Name</label>
        <div class="col-md-8">
         <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Last Name" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Error:Field Required!!" ControlToValidate="TextBox2" Font-Bold="True" ForeColor="White"  Font-Size="Smaller" ValidationGroup="reg"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Error:Contains letters only!! " ValidationExpression="^[A-Za-z]+$" ControlToValidate="TextBox2" Font-Bold="True"  Font-Size="Smaller" ForeColor="White" ValidationGroup="reg"></asp:RegularExpressionValidator>
       </div></div>

        <div class="row">
         <label class="label col-md-4 control-label">E-Mail</label>
         <div class="col-md-8">
          <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="E-Mail" />
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Error:Field Required!!" ControlToValidate="TextBox3" Font-Bold="True"  Font-Size="Smaller" ForeColor="White" ValidationGroup="reg"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Error:invalid..email address!! " ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox3" Font-Bold="True" Font-Size="Smaller" ForeColor="White" ValidationGroup="reg"></asp:RegularExpressionValidator>
          </div></div>

        <div class="row">
            <label class="label col-md-4 control-label">Password</label>
        
         <div class="col-md-8">
          <asp:TextBox ID="TextBox4" runat="server" class="form-control" TextMode="Password" placeholder="Password" />
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Error:Field Required!!" ControlToValidate="TextBox4" Font-Bold="True" ForeColor="White" Font-Size="Smaller" ValidationGroup="reg"></asp:RequiredFieldValidator>
             <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Error:Must be 8 character long!!" OnServerValidate="CustomValidator1_ServerValidate" ControlToValidate="TextBox4" Font-Bold="True" ForeColor="White" Font-Size="Smaller"  ValidationGroup="reg"></asp:CustomValidator>
         </div></div>

        <div class="row">
         <label class="label col-md-4 ">Mobile</label>
         <div class="col-md-8">
          <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Mobile" />
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Error:Field Required!!" ControlToValidate="TextBox5" Font-Bold="True"  ForeColor="White" Font-Size="Smaller" ValidationGroup="reg"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Error:Number must be 10 digit long!! " ValidationExpression="^([0-9]{10})$" ControlToValidate="TextBox5" Font-Bold="True" Font-Size="Smaller"  ForeColor="White" ValidationGroup="reg"></asp:RegularExpressionValidator>
         </div></div>

        <div class="row">
         <label class="label col-md-4 control-label">Date Of Birth</label>
         <div class="col-md-8 dropdown">
          <asp:DropDownList ID="DropDownList1" runat="server" Height="38px">
           <asp:ListItem Enabled="true" Text="Select Day" Selected="True" Value="-1"></asp:ListItem>
          </asp:DropDownList>
          <asp:DropDownList ID="DropDownList2" runat="server" Height="38px">
           <asp:ListItem Enabled="true" Text="Select Month" Selected="True" Value="-1"></asp:ListItem>
          </asp:DropDownList>
          <asp:DropDownList ID="DropDownList3" runat="server" Height="38px">
           <asp:ListItem Enabled="true" Text="Select Year" Selected="True" Value="-1"></asp:ListItem>
          </asp:DropDownList>
             <br />
             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" initialvalue="-1"  ErrorMessage="Error:Select day!!" ControlToValidate="DropDownList1" Font-Bold="True" Font-Size="Smaller" ForeColor="White" ValidationGroup="reg"></asp:RequiredFieldValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" initialvalue="-1"  ErrorMessage="Error:Select month!!" ControlToValidate="DropDownList2" Font-Bold="True" Font-Size="Smaller" ForeColor="White" ValidationGroup="reg"></asp:RequiredFieldValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" initialvalue="-1"  ErrorMessage="Error:Select year!!" ControlToValidate="DropDownList3" Font-Bold="True" Font-Size="Smaller" ForeColor="White" ValidationGroup="reg"></asp:RequiredFieldValidator>
          </div></div>

          <div class="row">
           <label class="label col-md-4 control-label">Gender</label>
           <div class="col-md-8">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
             <asp:ListItem>Female &nbsp;&nbsp;</asp:ListItem>
             <asp:ListItem>Male &nbsp;&nbsp;</asp:ListItem>
             <asp:ListItem>Other</asp:ListItem>
             </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"  ErrorMessage="Error:Select gender!!" ControlToValidate="RadioButtonList1" Font-Bold="True" ForeColor="White" Font-Size="Smaller" ValidationGroup="reg"></asp:RequiredFieldValidator>
           </div></div>

           <div class="row">
            <label class="label col-md-4 control-label">Cuisines</label>
            <div class="col-md-8 dropdown2" >
            <asp:DropDownList ID="DropDownList4" runat="server" Height="38px">
             <asp:ListItem Enabled="true" Text="Select cuisine" Selected="True" Value="-1"></asp:ListItem>
             <asp:ListItem>Continental</asp:ListItem>
             <asp:ListItem>Greek</asp:ListItem>
             <asp:ListItem>Italian</asp:ListItem>
             <asp:ListItem>Chinese</asp:ListItem>
             <asp:ListItem>Thai</asp:ListItem>
             <asp:ListItem>Mexican</asp:ListItem>
             <asp:ListItem>Indian</asp:ListItem>
             <asp:ListItem>American</asp:ListItem>
             <asp:ListItem>French</asp:ListItem>
             <asp:ListItem>Contemporary</asp:ListItem>
             <asp:ListItem>Caribbean</asp:ListItem>
             <asp:ListItem>Japanese</asp:ListItem>
             </asp:DropDownList>
                <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" initialvalue="-1"  ErrorMessage="Error:Select cuisine!!" ControlToValidate="DropDownList4" Font-Bold="True" ForeColor="White" Font-Size="Smaller" ValidationGroup="reg"></asp:RequiredFieldValidator>
           </div></div>

           <div class="row">
            <asp:Button ID="Button1" class="btn-info" runat="server" OnClick="Button1_Click" Text="Register" ValidationGroup="reg" />
           </div>
       </div>
       <div class="col-md-3"></div>
      </div>
     </div>
    </form>
</body>
</html>
