<%@ Page Title="" Language="C#" MasterPageFile="~/Users/usermstr.master" EnableEventValidation="false"  AutoEventWireup="true" CodeFile="Cartlist.aspx.cs" Inherits="Users_Cartlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #660066;
            font-size: x-large;
        }
        .auto-style2 {
            width: 262px;
        }
        .auto-style3 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="gallery">
		<div class="container"> 
			<div class="w3layouts_header">
				<h1>Our <span> Products</span></h1>
                <div class="auto-style48">
                 <table align="center" class="auto-style9" style="border:thick solid #a7a7a7">   
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                <asp:DataList ID="DataList1" runat="server" Width="131%"

                        RepeatColumns="2" ItemStyle-HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" OnItemCommand="DataList1_ItemCommand1">
             
                    <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
             
<ItemStyle HorizontalAlign="Center" BackColor="#F7F6F3" ForeColor="#333333"></ItemStyle>
                    <ItemTemplate>
                        <table class="auto-style49">
                            <tr>
                                <td>&nbsp;</td>
                                <td colspan="6">
                                    <asp:Label ID="lbl_name" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="Maroon" Text='<%# Eval("productname") %>' ></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td colspan="2" rowspan="7">
                                    <asp:Image ID="Image2" runat="server" BackColor="#99ccff" CssClass="mega-dropdown" Height="171px" ImageUrl='<%#Eval("img") %>' Width="150px" />
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <img alt="" src="smp.jpg" style="width: 35px;" />
                                    <asp:Label ID="lbl_rate" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#CC3300" Text='<%# Eval("rate") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="lbl_tot" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#CC3300" Text='<%# Eval("totalamount") %>' Visible="False"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td><strong>

                                    <asp:Button ID="Button3" runat="server" BorderStyle="None" CommandArgument='<%# Eval("cartid") %>' CommandName="buy" CssClass="auto-style6" Font-Bold="True" Text="Buy Now" />
                                  <%--  <asp:Button ID="Button2" runat="server" BorderStyle="None" CommandArgument='<%# Eval("cartid") %>' CommandName="view" CssClass="auto-style5" style="font-weight: bold; color: #FFFFFF; background-color: #003399" Text="View" />--%>
                                    </strong></td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3"></td>
                                <td class="auto-style3"></td>
                                <td class="auto-style3"></td>
                                <td class="auto-style3"></td>
                                <td class="auto-style3"></td>
                                <td class="auto-style3"></td>
                                <td class="auto-style3"></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>

              


             



              
                                <strong>
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style1"></asp:Label>
                                </strong>

              


             



              
                            </td>
                            <td class="auto-style2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                        </tr>
                    </table>

              


             



              
                </div>

              


             



              
                <br />
                <br />
                <br />
                <br />
                <br />



                
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />

                      

              
                </div>
			
	</div>
	</div>
    
</asp:Content>

