<%@ Page Title="" Language="C#" MasterPageFile="~/BANKING/Bankcommon.master" AutoEventWireup="true" CodeFile="Transactinaldetails.aspx.cs" Inherits="BANKING_Transactinaldetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h1>Transational Details</h1>
    <br />
    <br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="182px" Width="653px" >
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="Accountno" HeaderText="Account No" />
        <asp:BoundField DataField="oprations" HeaderText="Oprations" />
        <asp:BoundField DataField="Amnt" HeaderText="Amount" />
        <asp:BoundField DataField="balance" HeaderText="Balance" />
        <asp:BoundField DataField="date" HeaderText="Date" />
       
    </Columns>
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <SortedAscendingCellStyle BackColor="#FDF5AC" />
    <SortedAscendingHeaderStyle BackColor="#4D0000" />
    <SortedDescendingCellStyle BackColor="#FCF6C0" />
    <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
</asp:Content>

