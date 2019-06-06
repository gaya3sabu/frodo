<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admstr.master" AutoEventWireup="true" CodeFile="AccountDetails.aspx.cs" Inherits="Bankadmin_AccountDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <h1>User Details</h1>
    <br />
    <br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
         <asp:BoundField DataField="Aid" HeaderText="Aid" />
        <asp:BoundField DataField="TypeofAccount" HeaderText="Type of Account" />
        <asp:BoundField DataField="name" HeaderText="Name" />
        <asp:BoundField DataField="mobile" HeaderText="contact" />
        <asp:BoundField DataField="email" HeaderText="Email" />
        <asp:BoundField DataField="dob" HeaderText="DOB" />
        <asp:BoundField DataField="proof" HeaderText="Proof" />
        <asp:BoundField DataField="pno" HeaderText="Proof No" />
        <asp:BoundField DataField="aadhaarno" HeaderText="Aadhaar No" />
        
        <asp:ButtonField DataTextField="status" HeaderText="Status" Text="Update" />
    </Columns>
    </asp:GridView>
</asp:Content>


