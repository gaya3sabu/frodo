<%@ Page Title="" Language="C#" MasterPageFile="~/BANKING/Bankcommon.master" AutoEventWireup="true" CodeFile="BankHome.aspx.cs" Inherits="BANKING_BankHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    	<div class="bnr" id="home">
		<div  id="top" class="callbacks_container">
			<ul class="rslides" id="slider4">
			    <li>
                    <img src="../Banktemp/images/bnr-1.jpg" alt=""/>
				
				</li>
				<li>
					<img src="../Banktemp/images/bnr-2.jpg" alt=""/>
				</li>
				<li>
					<img src="../Banktemp/images/bnr-3.png" alt=""/>
				</li>
			</ul>
		</div>
		<div class="clearfix"> </div>
	</div>
	<!--banner-ends--> 
	<!--Slider-Starts-Here-->
				<script src="../Banktemp/js/responsiveslides.min.js"></script>
			 <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 4
			      $("#slider4").responsiveSlides({
			        auto: true,
			        pager: true,
			        nav: true,
			        speed: 500,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });
			
			    });
			  </script>
			<!--End-slider-script-->
</asp:Content>

