<%@ Page Title="" Language="C#" MasterPageFile="~/BANKING/Bankcommon.master" AutoEventWireup="true" CodeFile="AccountDetails.aspx.cs" Inherits="Bankadmin_AccountDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 1112px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>User Details</h1>
    <br />
    <br />
      <table align="center" class="auto-style1" style="border:thick solid #a7a7a7">   
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" Width="957px" Height="295px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
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
        
         <asp:BoundField DataField="encryptionkey" HeaderText="Encryption key" />
        
         <asp:BoundField DataField="binary" HeaderText="binary code" />
        
        <asp:ButtonField DataTextField="status" HeaderText="Status" Text="Update" />
    </Columns>
    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
    <RowStyle BackColor="White" ForeColor="#003399" />
    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    <SortedAscendingCellStyle BackColor="#EDF6F6" />
    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
    <SortedDescendingCellStyle BackColor="#D6DFDF" />
    <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


