<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admstr.master" AutoEventWireup="true" CodeFile="Editproduct.aspx.cs" Inherits="Admin_Editproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
        Product
    </h1>


    <table class="nav-justified">
        <tr>
            <td>category</td>
            <td>&nbsp;<asp:DropDownList ID="ddl_caterory" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_caterory_SelectedIndexChanged">
                </asp:DropDownList></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>brand</td>
            <td> <asp:DropDownList ID="ddl_brand" runat="server">
                </asp:DropDownList></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Product name</td>
            <td class="auto-style1">
                <asp:TextBox ID="txt_pname" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>Rate</td>
            <td>
                <asp:TextBox ID="txt_rate" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Quantity</td>
            <td>
                <asp:TextBox ID="txt_qty" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Description</td>
            <td>
                <asp:TextBox ID="txt_Dscrtn" runat="server" TextMode="MultiLine" Width="731px" ></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Image</td>
            <td>
                <asp:Image ID="Image1" runat="server" Width="209px" />
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" Width="105px" CssClass="btn btn-success" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>


</asp:Content>



