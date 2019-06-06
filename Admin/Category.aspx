<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admstr.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="serviceprovider_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        height: 48px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Catergory</h1>

    <table class="nav-justified">
        <tr>
            <td class="auto-style1">Category</td>
            <td class="auto-style1">
                <asp:TextBox ID="txt_category" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" CssClass="btn btn-success" />
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="Red"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>

