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
          <a class="nav-link active" aria-current="page" onclick="onlogout">Logout</a>
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
        <!--<div id="download_resume">

           <div id="personal_info">
               <center>
                   <h3>All details about me</h3>
                   <p>
                       <asp:Label ID="details" runat="server" Text="Label"></asp:Label>
                   </p>
               </center>
               
           </div>
           <div id="Education_info">
               <center>
                   <h3>All details about me</h3>
               </center>
               <div id="edu_details"></div>
           </div>
           <div id="skill_info">
               <center>
                   <h3>All details about me</h3>
               </center>
               <div id="skill_details"></div>
           </div>
           

        </div>-->
        
    </form>
</body>
</html>
