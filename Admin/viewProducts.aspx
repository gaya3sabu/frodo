<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admstr.master" AutoEventWireup="true" CodeFile="viewProducts.aspx.cs" Inherits="serviceprovider_viewProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1>
        PRODUCT DETAILS
    </h1>
    <br />
    
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="199px" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" CellPadding="3" GridLines="Vertical" OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" Width="1392px" >
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="pid" HeaderText="pid" />
            <asp:BoundField DataField="category" HeaderText="category" />
            <asp:BoundField DataField="brand" HeaderText="brand" />
            <asp:BoundField DataField="productname" HeaderText="productname" />
            <asp:BoundField DataField="rate" HeaderText="rate" />
            <asp:BoundField DataField="quality" HeaderText="quality" />
            <asp:ImageField DataImageUrlField="img" HeaderText="img">
                <ControlStyle Height="150px" Width="150px" />
            </asp:ImageField>

            <asp:TemplateField HeaderText="Edit">
                 <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" class="fa fa-edit" CommandArgument='<%# Eval("pid") %>' CommandName="Update"></asp:LinkButton>
                </ItemTemplate>
             </asp:TemplateField>

        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
</asp:Content>

