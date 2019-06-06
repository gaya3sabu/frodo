<%@ Page Title="" Language="C#" MasterPageFile="~/Users/usermstr.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="User_Payment" %>







<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #000000;
        }
        .auto-style3 {
        color: #0000CC;
    }
    .auto-style4 {
        color: #0000CC;
        font-size: x-large;
            width: 532px;
        }
    .auto-style5 {
        font-size: x-large;
    }
    .auto-style6 {
        font-size: large;
    }
        .auto-style7 {
            color: #CC0000;
        }
        .auto-style8 {
            height: 49px;
            width: 737px;
        }
        .auto-style9 {
            height: 45px;
            width: 737px;
        }
        .auto-style10 {
            height: 53px;
            width: 737px;
        }
        .auto-style11 {
            height: 64px;
            width: 737px;
        }
        .auto-style12 {
            height: 49px;
            width: 215px;
        }
        .auto-style13 {
            height: 45px;
            width: 215px;
        }
        .auto-style14 {
            height: 53px;
            width: 215px;
        }
        .auto-style15 {
            height: 64px;
            width: 215px;
        }
        .auto-style16 {
            width: 215px;
        }
        .auto-style17 {
            width: 737px;
        }
        .auto-style18 {
            font-size: large;
            height: 25px;
        }
        .auto-style20 {
            font-size: large;
            width: 532px;
        }
        .auto-style21 {
            font-size: large;
            height: 25px;
            width: 532px;
        }
        .auto-style22 {
            width: 532px;
        }
        .auto-style23 {
            width: 532px;
            text-align: center;
        }
        .auto-style24 {
            text-align: center;
        }
        .auto-style25 {
            width: 100%;
        }
        .auto-style26 {
            height: 15px;
        }
        .auto-style27 {
            color: #990000;
        }
        .auto-style28 {
            height: 39px;
            width: 737px;
        }
        .auto-style29 {
            height: 39px;
            width: 215px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong> <span class="auto-style1"><strong><span class="auto-style5">&nbsp;ONLINE PAYMENT</span></strong></span></td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style20">
              
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Amount</strong></td>
            <td class="auto-style20">
              
                <strong>
                <asp:Label ID="Label1" runat="server"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style21">
              
                </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Select Payment Method</strong></td>
            <td class="auto-style20">
              
                <span class="auto-style3"><strong>
                <%--<asp:Button ID="Button2" runat="server" Text="Button" />--%>
        <i class="fa fa-credit-card"></i>&nbsp;<asp:Button ID="Button2" runat="server" BorderStyle="None" OnClick="Button2_Click" Text="Card" /> 
                &nbsp;
                </strong></span><strong>
               <i class="fa fa-internet-explorer"></i>  <strong>
         
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">
                <asp:Panel ID="Panel1" runat="server" BackColor="#CCFFFF" Height="441px" Width="913px" Font-Bold="True" ForeColor="Maroon">
                    <table class="w-100">
                        <tr>
                            <td class="auto-style8">Card Number</td>
                            <td class="auto-style12">
                               
                                <asp:TextBox ID="txt_fno" runat="server" MaxLength="4" name="txt_fno"></asp:TextBox>
                            </td>
                            <td class="auto-style12">
                                <asp:TextBox ID="txt_sno" runat="server" MaxLength="4" name="txt_sno"></asp:TextBox>
                            </td>
                            <td class="auto-style12">
                                <asp:TextBox ID="txt_tno" runat="server" MaxLength="4"></asp:TextBox>
                            </td>
                            <td class="auto-style12">
                                <asp:TextBox ID="txt_frno" runat="server" MaxLength="4"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">Expery Date</td>
                            <td class="auto-style13">
                                <asp:TextBox ID="txt_date" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            <td class="auto-style13">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10">Card Holder Name</td>
                            <td class="auto-style14">
                                <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style14">&nbsp;</td>
                            <td class="auto-style14">&nbsp;</td>
                            <td class="auto-style14">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style11">CVV</td>
                            <td class="auto-style15">
                                <asp:TextBox ID="txt_ccv" runat="server" MaxLength="4"></asp:TextBox>
                            </td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style11">Encryption Key</td>
                            <td class="auto-style15">
                                <asp:TextBox ID="txt_encryptiom" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style28">Binary code</td>
                            <td class="auto-style29">
                                <asp:TextBox ID="txt_encryptiom0" runat="server" Height="16px" Width="396px"></asp:TextBox>
                            </td>
                            <td class="auto-style29"></td>
                            <td class="auto-style29"></td>
                            <td class="auto-style29"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17">
                                <asp:Button ID="Button6" runat="server" CssClass="btn btn-danger"  ForeColor="White" Height="29px" OnClick="Button6_Click" Text="CANCEL" Width="160px" />
                            </td>
                            <td class="auto-style16">
                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" ForeColor="White" Height="29px" OnClick="Button1_Click" Text="PAY" Width="160px" />
                            </td>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2"><strong>
                                <asp:Label ID="lbl_msg" runat="server" CssClass="auto-style7"></asp:Label>
                                </strong></td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style23">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel3" runat="server" BackColor="#CCFFCC" Height="150px" Width="546px" Visible="False">
                    <table class="auto-style25">
                        <tr>
                            <td class="auto-style26"></td>
                            <td class="auto-style26">&nbsp;</td>
                            <td class="auto-style26">&nbsp;</td>
                            <td class="auto-style26"></td>
                        </tr>
                        <tr>
                            <td><span class="auto-style27"></span></td>
                            <td><strong>Enter Your OTP number</strong></span></td>
                            <td><strong>
                                <asp:TextBox ID="txt_otp" runat="server" CssClass="auto-style27" MaxLength="6"></asp:TextBox>
                                </strong></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span class="auto-style27"></span></td>
                            <td><strong></strong></td>
                            <td></span></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span class="auto-style27"></span></td>
                            <td></span></td>
                            <td>
                                <asp:Button ID="Button7" runat="server" CssClass="btn btn-success" ForeColor="White" Height="29px" OnClick="Button7_Click" Text="Submit" Width="160px" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style27"><strong></strong></td>
                            <td colspan="2"><strong>
                                <asp:Label ID="lbl_otp" runat="server" CssClass="auto-style27"></asp:Label>
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style7"></asp:Label>
                                </strong>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

