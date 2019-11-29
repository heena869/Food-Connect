<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="applied_project.home" %>


<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta name="viewport" content="width=device-width, initial-scale=1" />
 <link href="css/bootstrap.min.css" rel="stylesheet" />
 <script src="js/bootstrap.min.js"></script>
 <link href="js/home_Style.css" rel="stylesheet" />
<title>Profile page</title>
    
</head>
<body>
    <form id="form2" runat="server">
    <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
           <h1 class="text-center">Food Connect</h1>
           <h4>Connecting Foodies to share their interests in various cuisines.</h4>
       </div></div>

      <div class="row">
          <div class="col-md-3">
              <div class="row">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/profile.jpg" Height="226px" Width="272px"  CssClass="rounded-circle" ImageAlign="Left"/>
            </div>
           <div class="row">               
           <asp:Button ID="Button2" class="btn-info" runat="server" Text="Account" OnClick="Button2_Click" Width="161px"  />
          </div>
              <div class="row">               
           <asp:Button ID="Button1" class="btn-info" runat="server" Text="Sign Out" Width="161px" OnClick="Button1_Click1"  />
          </div>

          </div>
          <div class="col-md-9"> 
              <div class="container">
      <div class="row">
       <div class="col-md-1"></div>
       <div class="col-md-10">
        <h1 class="text-center">Welcome
       <asp:label id="lblFullName" runat="server" xmlns:asp="#unknown"></asp:label>
        </h1>
           <div class="row">
         <label class="label col-md-4 control-label">E-Mail</label>
         <div class="col-md-8">
          <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="E-Mail" ReadOnly="True"  ForeColor="White" BackColor="#800000"  />
         </div></div>

           
        <div class="row">
        <label class="label col-md-4 control-label">First Name</label>
        <div class="col-md-8">
         <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="First Name" ReadOnly="True" ForeColor="White" BackColor="#800000"   />
         </div></div>

       <div class="row">
        <label class="label col-md-4 control-label">Last Name</label>
        <div class="col-md-8">
         <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Last Name" ReadOnly="True" ForeColor="White" BackColor="#800000"    />
        </div></div>

        
        <div class="row">
            <label class="label col-md-4 control-label">Password</label>
          <div class="col-md-8">
          <asp:TextBox ID="TextBox4" runat="server" class="form-control"  placeholder="Password" ReadOnly="True" ForeColor="White" BackColor="#800000"     />
          </div></div>

        <div class="row">
         <label class="label col-md-4 ">Mobile</label>
         <div class="col-md-8">
          <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Mobile" ReadOnly="True" ForeColor="White" BackColor="#800000"  />
              </div></div>

        <div class="row">
         <label class="label col-md-4 control-label">Date Of Birth</label>
         <div class="col-md-8 dropdown">
          <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="Date of birth" ReadOnly="True" ForeColor="White" BackColor="#800000"   />
          </div></div>

          <div class="row">
           <label class="label col-md-4 control-label">Gender</label>
           <div class="col-md-8">
            <asp:TextBox ID="TextBox7" runat="server" class="form-control"  placeholder="gender" ReadOnly="True" ForeColor="White" BackColor="#800000"     />
           </div></div>

           <div class="row">
            <label class="label col-md-4 control-label">Cuisines</label>
            <div class="col-md-8 dropdown2" >
              <asp:TextBox ID="TextBox8" runat="server" class="form-control"  placeholder="Cuisine" ReadOnly="True" ForeColor="White" BackColor="#800000"     />
            </div></div>

           
       </div>
       <div class="col-md-1"></div>
      </div>
     </div>

           
       </div>
       
      </div>
     </div>

     







               
      </form>
</body>
</html>
