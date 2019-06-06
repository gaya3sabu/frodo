<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Lucid Login Form A Flat Responsive widget Template :: w3layouts</title>
<!-- For-Mobile-Apps -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Lucid Login Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //For-Mobile-Apps -->

   
<!-- Style --> <link rel="stylesheet" href="LoginTemp/css/style.css" type="text/css" media="all" />
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            font-weight: bold;
            color: #CC0099;
        }
        </style>
    <script src="LoginTemp/js/jquery-2.1.4.min.js"></script>
  

    <script type="text/javascript" >
$(document).ready(function() {
    window.history.pushState(null, "", window.location.href);        
    window.onpopstate = function() {
        window.history.pushState(null, "", window.location.href);
    };
});
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="container">
<h1> LOGIN FORM</h1>
	<div class="signin">
        <asp:TextBox ID="txt_uname" runat="server" class="user" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'username';}" ValidationGroup="1" ></asp:TextBox>
	      	
	    <strong>
    <asp:Label ID="lbl_unm" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
        </strong>
	 
        <asp:TextBox ID="txt_pswd" runat="server" required="required" class="pass" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" ValidationGroup="1" TextMode="Password" ></asp:TextBox>
      	      	   <strong>
    <asp:Label ID="lbl_pswd" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
        <%--      	      	   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="auto-style3" ErrorMessage="please fill out this field" ControlToValidate="txt_pswd" Display="Dynamic" ValidationGroup="abc"></asp:RequiredFieldValidator>--%>

        
          </strong>
        
          <%--<input type="text" class="user" value="rachelgreen" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'rachelgreen';}" />--%><%--  	<input type="password" class="pass" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" />--%>
        
        <strong>
          
           
        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="auto-style2" OnClick="Button1_Click" ValidationGroup="abc" />

         </strong>

         <%-- 	<input type="submit" value="LOGIN" />--%>
	 
	    <strong>
    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
        <br />
   Don't have an account?     <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style1" Font-Bold="True" Font-Size="15pt" ForeColor="#0000CC" OnClick="LinkButton1_Click">Register</asp:LinkButton>
        </strong>
	 
	</div>
</div>
<div class="footer">
     <p>Copyright &copy; 2015 Lucid Login Form. All Rights Reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
</div>
    </div>
    </form>
</body>
</html>
