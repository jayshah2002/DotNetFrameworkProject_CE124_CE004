<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Download_resume.aspx.cs" Inherits="Resume_builder.Download_resume" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <title>Download_Resume</title>
    <style>
         .intro{
        margin-left:700px;
    }
         #lout{
         background-color:cornflowerblue;
         border:none;
     }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color:cornflowerblue;">
  <div class="container-fluid">
      
    <a class="navbar-brand" href="#">Resume Builder</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Getstarted.aspx">Home</a>
            </li> 
          <li class="nav-item">
           <asp:Button ID="lout" class="nav-link active" runat="server" Onclick="onlogout" Text="Logout" />
         
            </li>
           
          <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Contact.aspx">Contact us</a>
            </li>
          <li class="nav-item intro">
              <h5>Hello,
              <asp:Label ID="display_name" runat="server" Text="Label"></asp:Label></h5>
          </li>
      </ul>
    </div>
  </div>
</nav>
        <br />
        <br />
        <h3>MyDetails:</h3>
        <asp:GridView ID="Personal_details" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="InfoSqlDataSource" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Mobileno" HeaderText="Mobileno" SortExpression="Mobileno" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="InfoSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Email], [Mobileno], [State], [City], [Gender] FROM [Personaldetails] WHERE ([Email] = @Email)">
            <SelectParameters>
                <asp:SessionParameter Name="Email" SessionField="email_user" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
      <br />
        <br />
        
        
       <br />
        <br />
        <h3>Education:</h3>
        <asp:GridView ID="Education_details" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataSourceID="EduSqlDataSource">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="SSC" HeaderText="SSC" SortExpression="SSC" />
                <asp:BoundField DataField="HSC" HeaderText="HSC" SortExpression="HSC" />
                <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SkillsSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Skill], [Hobbies], [Courses] FROM [Skills] WHERE ([Email] = @Email)">
            <SelectParameters>
                <asp:SessionParameter Name="Email" SessionField="email_user" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
       <br />
        <br />
        <h3>Skills</h3>
        <asp:GridView ID="Skills_details" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataSourceID="SkillsSqlDataSource">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Skill" HeaderText="Skill" SortExpression="Skill" />
                <asp:BoundField DataField="Hobbies" HeaderText="Hobbies" SortExpression="Hobbies" />
                <asp:BoundField DataField="Courses" HeaderText="Courses" SortExpression="Courses" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
       
        
        <asp:SqlDataSource ID="EduSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [SSC], [HSC], [Degree] FROM [Education] WHERE ([Email] = @Email)">
            <SelectParameters>
                <asp:SessionParameter Name="Email" SessionField="email_user" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
       
        
    </form>
</body>
</html>
