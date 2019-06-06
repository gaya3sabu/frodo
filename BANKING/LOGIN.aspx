 <%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="LOGIN.aspx.cs" Inherits="BANKING_LOGIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Visitors an Admin Panel Category Bootstrap Responsive Website Template | Login :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
    
<link rel="stylesheet" href="../Admin%20Temp/css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="../Admin%20Temp/css/style.css" rel='stylesheet' type='text/css' />
<link href="../Admin%20Temp/css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="../Admin%20Temp/css/font.css" type="text/css"/>
<link href="../Admin%20Temp/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="../Admin%20Temp/js/jquery2.0.3.min.js"></script>
</head>
<body background="../Admin%20Temp/images/1.jpg" />
    <form id="form1" runat="server">
    <div>
    
<div class="log-w3">
<div class="w3layouts-main">
	<h2>Sign In Now</h2>
		<form action="#" method="post">
            <asp:TextBox ID="txt_username" runat="server"  class="ggg" name="Username" placeholder="Username"></asp:TextBox>
            <asp:textbox ID="txt_pswrd"  runat="server" class="ggg" name="Password" placeholder="PASSWORD"></asp:textbox>
			<%--<input type="password" class="ggg" name="Password" placeholder="PASSWORD" >--%>
            <asp:button runat="server" text="Sign In" OnClick="Unnamed1_Click" />
			
		</form>
		<p>Don't Have an Account ?<a href="NewAccount.aspx">Create an account</a></p>
</div>
</div>
<script src="../Admin%20Temp/js/bootstrap.js"></script>
<script src="../Admin%20Temp/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="../Admin%20Temp/js/scripts.js"></script>
<script src="../Admin%20Temp/js/jquery.slimscroll.js"></script>
<script src="../Admin%20Temp/js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="../Admin%20Temp/js/jquery.scrollTo.js"></script>
    </div>
    </form>
</body>
</html>
