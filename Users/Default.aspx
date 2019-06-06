<%@ Page Title="" Language="C#" MasterPageFile="~/Users/usermstr.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Users_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <br />
            <br />
            <asp:Label ID="lbl_name" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="#3333CC" Text='<%# Eval("productname") %>'></asp:Label>
            <br />
          
            <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
        </ItemTemplate>
    </asp:DataList>

</asp:Content>

