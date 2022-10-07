<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Education.aspx.cs" Inherits="Resume_builder.Education" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <style>
     body{
            background-color:lightyellow;
            background-blend-mode:saturation;
        }
     #lout{
         background-color:cornflowerblue;
         border:none;
     }
      .intro{
        margin-left:700px;
    }
     .container{
         margin-left:15%;
         border:outset;
         max-width:70%;
         margin-top:1%;
         color:white;
         box-shadow:5px 10px cornflowerblue;
         padding:40px 0px 40px;
         background-image:url('https://media.istockphoto.com/photos/education-concept-school-supplies-in-a-shopping-cart-on-the-desk-in-picture-id1165486680?b=1&k=20&m=1165486680&s=170667a&w=0&h=gKqgk0N0pS61UlWOu-t6bZpD7n3M0Iyhw2JqZMamk7U=');
         background-size:cover;
     }
     :root {
            --link-color: #6C4BB4;
            --primary-color-opacity: #e9d5ff;
            --white-shade: #f0f8ff;
            --secondary-color: #1e293b;
            --primary-padding: 8px;
            --pilled-shape-radius: 40px;
            --color1: #36EB84;
            --color2: #2BCDB5;
           --primary-gradient: linear-gradient(to right,var(--color2), var(--color1))
        }
     .item-container button {
            border-radius: 50%;
            border: none;
            padding: 5px;
            background-color: black ;
            margin-left: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            box-shadow: 2px 2px 5px #353636;
        }
    
    .footer {
            position:fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: cornflowerblue;
            color: white;
            text-align: center;
         }
    
        .auto-style1 {
            width: 485px;
        }
        .auto-style2 {
            width: 100%;
            height: 246px;
        }
        .info {
            margin-top:35px;
            text-align:center;
            font-size: 35px;
            color: var(--secondary-color);
        }

        .info::after {
                content: "";
                display: block;
                width: 20%;
                height: 3px;
                margin-top: 8px;
                background: var(--primary-gradient);
                margin-inline: auto;
        }
    
        .auto-style3 {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #212529;
            background-clip: padding-box;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
    
    </style>
    <title>Education</title>
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
          <a class="nav-link active" aria-current="page" href="Download_resume.aspx">MyResume</a>
            </li>
          <li class="nav-item intro">
              <h5>Hello,
              <asp:Label ID="display_name" runat="server" Text="Label"></asp:Label></h5>
          </li>
      </ul>
    </div>
  </div>
</nav>
        <div class="item-container">
            <h2 class="info">Education</h2>
        </div>
        <div class="container">

        <table class="auto-style2">
             <tr>
                <td class="auto-style1 top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="description" runat="server" Text="Objective:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="description_input" runat="server" CssClass="auto-style3" Height="48px" Width="415px" required></asp:TextBox>
                </td>
                <td class="top">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="auto-style1 top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="degree" runat="server" Text="Degree at:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="degree_input" runat="server" CssClass="auto-style3" Height="48px" Width="415px" required></asp:TextBox>
                </td>
                <td class="top">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="hsc" runat="server" Text="HSC details:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="hsc_input" runat="server" class="form-control" Width="410px" Height="46px" required></asp:TextBox>
                </td>
                <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="ssc" runat="server" Text="SSC results:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="ssc_input" runat="server" class="form-control" Width="405px" Height="56px"></asp:TextBox>
                </td>
                <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            
            <tr>
                <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="submit" runat="server" OnClick="onEdu" Text="Submit" />
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                   <asp:Button ID="next1" runat="server" Text="Next" OnClick="next_click"></asp:Button>
                </td>
            </tr>
        </table>
        </div>
    </form>
        <div class="footer">
            <p>&copy All Rights are Resersed.</p>
        </div>
</body>
</html>
