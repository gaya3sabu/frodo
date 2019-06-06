<%@ Page Title="" Language="C#" MasterPageFile="~/BANKING/Bankcommon.master" AutoEventWireup="true" CodeFile="DepositeAmount.aspx.cs" Inherits="BANKING_DepositeAmount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        height: 20px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table class="nav-justified">
    <tr>
        <td>Account No</td>
        <td>
            <asp:TextBox ID="txt_acntno" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Account Holder name</td>
        <td>
            <asp:TextBox ID="txt_holder" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>DepositeAmout</td>
        <td>
            <asp:TextBox ID="txt_amount" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1"></td>
        <td class="auto-style1">
            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="Red"></asp:Label>
        </td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Deposite" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>


</asp:Content>

