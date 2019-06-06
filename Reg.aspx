<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reg.aspx.cs" Inherits="Reg" %>

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
            color: #FF0000;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
      <div class="container">
<h1>REGISTER HERE ..</h1>
	<div class="signin">
        <asp:TextBox ID="txt_name" runat="server" class="user" value="Name"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'rachelgreen';}" ></asp:TextBox>
	      	<strong>
    <asp:Label ID="lbl_name" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
        </strong>
	 
	      	<asp:TextBox ID="txt_ph" runat="server" class="user" value="Phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'rachelgreen';}" ></asp:TextBox>

        <strong>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_ph" CssClass="auto-style1" ErrorMessage="You must enter an Phone number"   ValidationExpression="^(\([0-9]{3}\)|[0-9]{3}-)[0-9]{3}-[0-9]{4}|(\([0-9]{3}\)|[0-9]{3})[0-9]{3}[0-9]{4}$" ></asp:RegularExpressionValidator>
    <asp:Label ID="lbl_ph" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
        </strong>

        <asp:TextBox ID="txt_email" runat="server" class="user" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'rachelgreen';}" ></asp:TextBox>
        <strong>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" CssClass="auto-style1" ErrorMessage="You must enter an email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </strong></td>
        
        
         <strong>
    <asp:Label ID="lbl_emil" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
        </strong>
	 
        
         <asp:TextBox ID="txt_adrs" runat="server" class="user" value="Address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'rachelgreen';}" ></asp:TextBox>
	    <strong>
    <asp:Label ID="lbl_adrs" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
        </strong>
	 
        	<asp:TextBox ID="txt_Uname" runat="server" class="user" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'rachelgreen';}" ></asp:TextBox>
	      	   <strong>
    <asp:Label ID="lbl_unm" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
        </strong>
	 
        
        	<asp:TextBox ID="txt_pswd" runat="server" class="pass" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" TextMode="Password"  ></asp:TextBox>

        <%--<input type="text" class="user" value="rachelgreen" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'rachelgreen';}" />--%><%--  	<input type="password" class="pass" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" />--%><strong>
    <asp:Label ID="lbl_pswd" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
        </strong>
	 
        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />

         <%-- 	<input type="submit" value="LOGIN" />--%><strong>
    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
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
