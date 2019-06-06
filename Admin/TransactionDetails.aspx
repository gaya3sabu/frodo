<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admstr.master" AutoEventWireup="true" CodeFile="TransactionDetails.aspx.cs" Inherits="Bankadmin_TransactionDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <h1>Transational Details</h1>
    <br />
    <br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" >
    <Columns>
        <asp:BoundField DataField="Accountno" HeaderText="Account No" />
        <asp:BoundField DataField="oprations" HeaderText="Oprations" />
        <asp:BoundField DataField="Amnt" HeaderText="Amount" />
        <asp:BoundField DataField="balance" HeaderText="Balance" />
        <asp:BoundField DataField="date" HeaderText="Date" />
       
    </Columns>
    </asp:GridView>
</asp:Content>


