<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Getstarted.aspx.cs" Inherits="Resume_builder.WebForm1" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    
    <style>
        body{
            background-image:url('https://image.winudf.com/v2/image1/Y29tLnN0dWR6b25lLnJlc3VtZWJ1aWxkZXJfaWNvbl8xNTkxODUwNTM2XzAzMA/icon.png?w=&fakeurl=1') ;
            background-position: center;
            background-repeat:no-repeat;
            background-size:cover;
            background-position-y:top;
        }
        .btn{
            margin-top:280px;
            background-color:orangered;
        }
 
        .footer {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: cornflowerblue;
            color: white;
            text-align: center;
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
            </li <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Register.aspx">Register</a>
            </li>
           <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Login.aspx">Login</a>
            </li>
          <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Contact.aspx">Contact us</a>
            </li>
      </ul>
    </div>
  </div>
</nav>
        <!--Main page content holder -->
        <div class="main">
        <center><a href="Login.aspx"><button type="button" class="btn btn-primary">Create your Resume</button></a></center>
        </div>
       
        <!-- footer -->
       
        <div class="footer">
            <p>&copy All Rights are Resersed.</p>
        </div>
        
    
    </form>
</body>
</html>
