<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Resume_builder.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <style>
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
        

        body{
            background-image:url('https://thumbs.dreamstime.com/t/registration-49410297.jpg');
            background-size:cover;
            background-repeat:no-repeat;
        }

        .submit{
            align-content: center;
            width: 30%;
            margin-left: 35%;
        }
        .container {
            padding: 15px;
            border-radius: 10px;
            box-shadow: 2px 2px 10px #353636;
            background: #fff;
            margin-top:40px;
            max-width:500px;
        }

        .item-container {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .log-in {
            font-size: 35px;
            color: var(--secondary-color);
        }

            .log-in::after {
                content: "";
                display: block;
                width: 60%;
                height: 3px;
                margin-top: 8px;
                background: var(--primary-gradient);
                margin-inline: auto;
            }
            

        .form-input {
            display: flex;
            flex-direction: column;
            margin-bottom: 10px;
        }

        .textbox {
            width: 386px;
            border-radius: var(--pilled-shape-radius);
            border: none;
            background: #E7FDF0;
            color: var(--secondary-color);
            outline: none;
            border: 1px solid transparent;
        }

        @media only screen and (max-width: 300px) {
            .textbox {
                width: 200px;
            }
        }

        .textbox:focus-visible {
            border: 1px solid var(--color1);
            background: transparent;
        }

        .label {
            color: var(--secondary-color);
            margin-bottom: 3px;
        }

        .display-space-between {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 10px 0 10px 0;
        }

        .item-container button {
            border-radius: 50%;
            border: none;
            padding: 5px;
            background: transparent;
            margin-left: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            box-shadow: 2px 2px 5px #353636;
        }

        .btnedit{
            margin-left:40%;

        }
        .btnedit:hover{
            background-color: forestgreen;
        }

        .chekbox-label {
            font-size: 14px;
        }

        a {
            text-decoration: none;
            color: var(--link-color);
            font-size: 14px;
        }
    .footer {
            position:relative;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: cornflowerblue;
            color: white;
            text-align: center;
         }
    </style> 
    <title>Register</title>

</head>
<body>
    <form id="register" runat="server">
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
        <div class="container">
            <div class="item-container">
                <h2 class="log-in">Register yourself</h2>
            </div>
            <div class="item-container">
                <p>Fill up the mentioned details:</p>
            </div>
             <div class="form-input">
                    <label for="Email" class="label">Name:</label>
                    <input ID="name" type="text" class="textbox" runat="server" aria-required="true" Width="372px" Text="Enter Your emailID" required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
                <div class="form-input">
                    <label for="email" class="label">Email</label>
                    <input ID="email" type="email" class="textbox" runat="server" aria-required="true" Width="372px" Text="Enter Your emailID" required>
            </div>
             <div class="form-input">
                    <label for="mobile" class="label">Mobile No.</label>
                    <input ID="Mobile" type="number" class="textbox" runat="server" aria-required="true" Width="372px" Text="Enter Your emailID" required>
                    <br />
                    <asp:RegularExpressionValidator ID="mobile_error" runat="server" BackColor="Red" ControlToValidate="Mobile" ErrorMessage="Should contain 10 number" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </div>
             <div class="form-input">
                    <label for="address" class="label">Address</label>
                    <input ID="address_input" type="text" class="textbox" runat="server" style="height:100px; border-radius:unset;" aria-required="true" Width="372px"  Text="Enter Your emailID" required>&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
                <div class="form-input">
                    <label for="password" class="label">Password</label>
                    <input ID="Password" type="password" class="textbox" runat="server" Width="355px" aria-required="true" Text="Password" CausesValidation="True" Visible="True" required><asp:RegularExpressionValidator ID="password_validation" runat="server" BackColor="Red" ControlToValidate="Password" ErrorMessage="Password should only contain alphanumeric values and length must be 10" ValidationExpression="[0-9|a-z|A-Z]{10}"></asp:RegularExpressionValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                <div class="form-input">
                    <label for="password" class="label">Confirm Password</label>
                    <input ID="confirmPassword" type="password" class="textbox" runat="server" Width="355px" aria-required="true" Text="Password" CausesValidation="True" Visible="True" required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                <div>
                    </br>
                   
                    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="submit" class="btnedit" runat="server" Text="Submit" Width="76px" OnClick="onRegister" />
                   
                    
                </div>
        </div>
         <div class="footer">
            <p>&copy All Rights are Resersed.</p>
        </div>
        
    </form>
</body>
</html>
