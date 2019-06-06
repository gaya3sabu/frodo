<%@ Page Title="" Language="C#" MasterPageFile="~/Users/usermstr.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Users_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 49px;
            height: 24px;
        }
        .auto-style3 {
            width: 4px;
        }
        .auto-style4 {
            width: 32px;
        }
        .auto-style5 {
            font-weight: bold;
            color: #FFFFFF;
            background-color: #FF0000;
        }
        .auto-style6 {
            background-color: #FF0000;
            color: #FFFFFF;
        }
        .auto-style7 {
            height: 20px;
        }
        .auto-style8 {
            width: 10px;
        }
        .auto-style9 {
            height: 20px;
            width: 10px;
        }
        .auto-style12 {
            height: 20px;
            width: 668px;
        }
        .auto-style14 {
            width: 457px;
        }
        .auto-style15 {
            width: 96%;
        }
        .auto-style16 {
            margin-bottom: 0;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:DataList ID="DataList1" runat="server" Width="100%" RepeatDirection="Horizontal"

                        RepeatColumns="1" ItemStyle-HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
             
                    <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
             
<ItemStyle HorizontalAlign="Center" BackColor="#F7F6F3" ForeColor="#333333"></ItemStyle>
                    <ItemTemplate>
                        <table class="auto-style12">
                            <tr>
                                <td colspan="9">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lbl_name" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#3333CC" Text='<%# Eval("productname") %>'></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8">&nbsp;</td>
                                <td class="auto-style8" colspan="2">
                                    <asp:Image ID="Image1" runat="server" BackColor="#99ccff" CssClass="mega-dropdown" Height="227px" ImageUrl='<%#Eval("img") %>' Width="208px" />
                                </td>
                                <td class="auto-style3">&nbsp;<br />
                                    <img alt="" src="smp.jpg" class="auto-style1" />
                                </td>
                                <td class="auto-style4">
                                    <br />
                                    <br />
                                    <br />
                                    <asp:Label ID="lbl_rate" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#CC3300" Text='<%# Eval("rate") %>'></asp:Label>
                                 <asp:Label ID="lbl_pid" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#3333CC" Text='<%# Eval("pid") %>'></asp:Label>

                                      <br />
                                    <br />
                                    <asp:Label ID="lbl_brnd" runat="server" Text='<%# Eval("brand") %>'></asp:Label>
                                </td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style14">&nbsp;</td>
                            </tr>
                            <tr>
                             
                     
                                <td rowspan="19" class="auto-style8">
                                    &nbsp;</td>
                                <td class="auto-style8" colspan="2"></td>
                                <td class="auto-style3">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style14">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style9">
                                    <strong><asp:Button ID="Button2" runat="server" BorderStyle="None" CommandArgument='<%# Eval("pid") %>' CommandName="cart" CssClass="auto-style5" Text="Cart" />
                                    </strong>
                                </td>
                                <td class="auto-style9">
                                    <asp:Button ID="Button3" runat="server" BorderStyle="None" CssClass="auto-style6"  CommandArgument='<%# Eval("pid") %>' CommandName="buy" Font-Bold="True" Text="Buy Now" />
                                </td>
                                <td class="auto-style7" colspan="5">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                                </td>
                                <td class="auto-style7"></td>
                            </tr>
                            <tr>
                                <td class="auto-style8" colspan="2">&nbsp;</td>
                                <td colspan="5">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style9" colspan="2"></td>
                                <td class="auto-style7" colspan="5">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8" colspan="2">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style14">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8" colspan="2">&nbsp;</td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                                <td class="auto-style4">
                                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style14">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8" colspan="2">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style14">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8" colspan="2">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style14">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8" colspan="2">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style14">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8" colspan="2">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style14">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8" colspan="2">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style14">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8" colspan="2">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style14">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8" colspan="2">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style14">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8" colspan="2">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style14">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8" colspan="2">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style14">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8" colspan="2">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style14">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8" colspan="2">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style14">&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
   <style>
.right {
    position: absolute;
    margin-top: -497px;
    right: 55px;
    width: 300px;
 
    padding: 10px;
}
       .auto-style17 {
           color: #CC0000;
       }
   </style>
    <div class="right">
    <asp:Panel ID="Panel1" runat="server" BackColor="#FFFFCC" Height="199px" Visible="False" Width="306px" BorderColor="#009900" BorderWidth="5px">

        <table class="auto-style15">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Qty&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_qty"  runat="server" OnTextChanged="txt_qty_TextChanged" EnableViewState="true" AutoPostBack="True">1</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txt_totalamnt" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button7" runat="server" BackColor="Red" CssClass="auto-style16" Font-Bold="True" ForeColor="White" OnClick="Button4_Click1" Text="Submit" />
                </td>
                <td>
                    <asp:Button ID="Button6" runat="server" BackColor="Red" CssClass="auto-style16" Font-Bold="True" ForeColor="White" OnClick="Button5_Click1" Text="Cancel" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style17"></asp:Label>
                    <br />
                    </strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
        </div>
    <br />
    <br />
    <br />
    </asp:Content>

