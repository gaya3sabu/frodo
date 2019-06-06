<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admstr.master" AutoEventWireup="true" CodeFile="Brand.aspx.cs" Inherits="serviceprovider_Brand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <h1>Catergory</h1>

    <table class="nav-justified">
        <tr>
            <td>Category</td>
            <td>
                <asp:DropDownList ID="ddl_caterory" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Brand</td>
            <td>
                <asp:TextBox ID="txt_brnd" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server"  Text="Save" OnClick="Button1_Click" CssClass="btn btn-success" />
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="Red"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

