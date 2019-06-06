<%@ Page Title="" Language="C#" MasterPageFile="~/Users/usermstr.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="User_Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style48 {
            text-align: left;
        }
        .auto-style49 {
            width: 100%;
        }
        .auto-style52 {
        width: 313px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="gallery">
		<div class="container"> 
			<div class="w3layouts_header">
				<h1>Our <span> Products</span></h1>
                <div class="auto-style48">
                 <table >  
<%--                     align="center" class="auto-style9" style="border:thick solid #a7a7a7" --%>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style52">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                <asp:DataList ID="DataList1" runat="server" Width="131%"

                        RepeatColumns="3" ItemStyle-HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" OnItemCommand="DataList1_ItemCommand">
             
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
                                    <asp:Image ID="Image2" runat="server" BackColor="#99ccff" CssClass="mega-dropdown"  ImageUrl='<%#Eval("img") %>'  height="37%" width="50%" />
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Label ID="lbl_brnd" runat="server" Text='<%# Eval("brand") %>'></asp:Label>
                                </td>
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
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td><strong>
                                    <asp:Button ID="Button2" runat="server" BorderStyle="None" CommandArgument='<%# Eval("pid") %>' CommandName="view" CssClass="auto-style5" style="font-weight: bold; color: #FFFFFF; background-color: #003399" Text="View" />
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
                                <td>&nbsp;</td>
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
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>

              


             



              
                            </td>
                            <td class="auto-style52">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style52">&nbsp;</td>
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

