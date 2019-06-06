<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admstr.master" AutoEventWireup="true" CodeFile="AddBank.aspx.cs" Inherits="Admin_AddBank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
            width: 144px;
        }
        .auto-style2 {
            width: 14px;
        }
        .auto-style3 {
            width: 94px;
        }
        .auto-style4 {
            width: 111px;
        }
        .auto-style5 {
            width: 144px;
            height: 27px;
        }
        .auto-style6 {
            font-weight: bold;
            height: 27px;
        }
        .auto-style7 {
            height: 55px;
        }
        .auto-style8 {
            width: 111px;
            height: 55px;
        }
        .auto-style9 {
            font-weight: bold;
            height: 33px;
        }
        .auto-style10 {
            font-weight: bold;
            height: 36px;
        }
        .auto-style11 {
            font-weight: bold;
            height: 55px;
        }
        .auto-style12 {
            height: 38px;
        }
        .auto-style13 {
            width: 111px;
            height: 38px;
        }
        .auto-style14 {
            font-weight: bold;
            height: 30px;
        }
        .auto-style15 {
            font-weight: bold;
            height: 38px;
            width: 144px;
        }
        .auto-style16 {
            width: 111px;
            height: 70px;
        }
        .auto-style17 {
            font-weight: bold;
            height: 70px;
            width: 144px;
        }
        .auto-style18 {
            height: 70px;
        }
        .auto-style19 {
            width: 111px;
            height: 78px;
        }
        .auto-style20 {
            font-weight: bold;
            height: 78px;
            width: 144px;
        }
        .auto-style21 {
            height: 78px;
        }
        .auto-style22 {
            height: 49px;
        }
        .auto-style23 {
            width: 111px;
            height: 49px;
        }
        .auto-style24 {
            font-weight: bold;
            height: 49px;
            width: 144px;
        }
        .auto-style25 {
            height: 45px;
        }
        .auto-style26 {
            width: 111px;
            height: 45px;
        }
        .auto-style27 {
            font-weight: bold;
            height: 45px;
        }
        .auto-style28 {
            width: 111px;
            height: 54px;
        }
        .auto-style29 {
            font-weight: bold;
            height: 54px;
            width: 144px;
        }
        .auto-style30 {
            height: 54px;
        }
        .auto-style31 {
            font-weight: bold;
            height: 55px;
            width: 144px;
        }
        .auto-style32 {
            font-weight: bold;
            height: 45px;
            width: 144px;
        }
        .auto-style33 {
            color: #FF6666;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div>
           <table align="center" class="auto-style9" style="border:thick solid #a7a7a7">   

         <caption class="auto-style14">
          
        

             <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><span class="auto-style33"> BANK REGISTER</span><tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style44">
                &nbsp;</td>
        </tr>
            <tr>
            <td class="auto-style8"></td>
            <td class="auto-style31"><strong>Name</strong></td>
            <td class="auto-style11">
                <strong>
                <asp:TextBox ID="txt_name" runat="server" CssClass="auto-style51" style="color: #0000CC; font-weight: bold"></asp:TextBox>
                </strong>
            </td>
            <td class="auto-style7">
                </td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style15"><strong>Bank Branch</strong></td>
            <td class="auto-style12">
                <strong>
                <asp:TextBox ID="txt_brnch" runat="server" CssClass="auto-style51" style="color: #0000CC; font-weight: bold"></asp:TextBox>
                </strong>
            </td>
            <td class="auto-style12">
                </td>
        </tr>
               <span class="auto-style2">
        <tr>
            <td class="auto-style19"></td>
            </span>
            <td class="auto-style20"><strong>Address</strong></td>
            <td class="auto-style21">
                <strong>
                <asp:TextBox ID="txt_address" runat="server" TextMode="MultiLine" CssClass="auto-style51" style="color: #0000CC; font-weight: bold"></asp:TextBox>
                </strong>
            </td>
            <td class="auto-style21">
                </td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style17"><strong>Contact No</strong></td>
            <td class="auto-style18">
                <strong>
                <asp:TextBox ID="txt_cont" runat="server" CssClass="auto-style51" style="color: #0000CC; font-weight: bold"></asp:TextBox>
                </strong>
            </td>
            <td class="auto-style18">
                </td>
        </tr>
        <tr>
            <td class="auto-style23"></td>
            <td class="auto-style24">Email</td>
            <td class="auto-style22">
                <strong>
                <asp:TextBox ID="txt_email" runat="server" CssClass="auto-style51" style="color: #0000CC; font-weight: bold"></asp:TextBox>
                </strong>
            </td>
            <td class="auto-style22">
                </td>
        </tr>
        <tr>
            <td class="auto-style26"></td>
            <td class="auto-style32">UserName</td>
            <td class="auto-style25">
                <strong>
                <asp:TextBox ID="txt_username" runat="server" CssClass="auto-style51" style="color: #0000CC; font-weight: bold"></asp:TextBox>
                </strong>
            </td>
            <td class="auto-style25">
                </td>
        </tr>
        <tr>
            <td class="auto-style28"></td>
            <td class="auto-style29">Password</td>
            <td class="auto-style30">
                <strong>
                <asp:TextBox ID="txt_pswrd" runat="server" CssClass="auto-style51" style="color: #0000CC; font-weight: bold"></asp:TextBox>
                </strong>
            </td>
            <td class="auto-style30">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26"></td>
            <td class="auto-style32"><strong>Bank Logo</strong></td>
            <td class="auto-style27">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style69">&nbsp;</td>
            <td class="auto-style51">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style69"></span><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Text="Save"  Width="94px" style="color: #0000CC; font-weight: bold; background-color: #FFFFFF;" OnClick="Button1_Click"  />
                </strong></td>
            <td class="auto-style51">&nbsp;</td>
        </tr>
    </table>
      <span class="auto-style3"><strong>
 <%--   </div>
    </form>--%>
      </strong></span>
</div>


</asp:Content>


