<%@ Page Title="" Language="C#" MasterPageFile="~/BANKING/Bankcommon.master" AutoEventWireup="true" CodeFile="BankAccount.aspx.cs" Inherits="BANKING_BankAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 51px;
        }
        .auto-style2 {
            height: 35px;
        }
        .auto-style3 {
            height: 55px;
        }
        .auto-style4 {
            height: 53px;
        }
        .auto-style5 {
            height: 24px;
        }
        .auto-style6 {
            height: 36px;
        }
        .auto-style7 {
            height: 37px;
            width: 222px;
        }
        .auto-style8 {
            height: 38px;
            width: 222px;
        }
        .auto-style9 {
            height: 39px;
        }
        .auto-style10 {
            height: 41px;
            width: 268px;
        }
        .auto-style11 {
            height: 54px;
        }
        .auto-style12 {
            height: 57px;
        }
        .auto-style13 {
            height: 56px;
        }
        .auto-style14 {
            height: 43px;
        }
        .auto-style15 {
            height: 76px;
        }
        .auto-style16 {
            height: 46px;
        }
        .auto-style17 {
            height: 52px;
        }
        .auto-style18 {
            height: 69px;
        }
        .auto-style19 {
            height: 42px;
        }
        .auto-style20 {
            height: 44px;
        }
        .auto-style21 {
            height: 47px;
        }
        .auto-style22 {
            height: 40px;
        }
        .auto-style23 {
            height: 45px;
        }
        .auto-style24 {
            height: 51px;
            width: 268px;
        }
        .auto-style25 {
            height: 55px;
            width: 268px;
        }
        .auto-style26 {
            height: 53px;
            width: 268px;
        }
        .auto-style27 {
            height: 54px;
            width: 268px;
        }
        .auto-style28 {
            height: 57px;
            width: 268px;
        }
        .auto-style29 {
            height: 56px;
            width: 268px;
        }
        .auto-style30 {
            height: 43px;
            width: 268px;
        }
        .auto-style31 {
            height: 76px;
            width: 268px;
        }
        .auto-style32 {
            height: 46px;
            width: 268px;
        }
        .auto-style33 {
            height: 52px;
            width: 268px;
        }
        .auto-style34 {
            height: 69px;
            width: 268px;
        }
        .auto-style35 {
            height: 42px;
            width: 268px;
        }
        .auto-style36 {
            height: 44px;
            width: 268px;
        }
        .auto-style37 {
            height: 47px;
            width: 268px;
        }
        .auto-style38 {
            height: 40px;
            width: 268px;
        }
        .auto-style39 {
            height: 45px;
            width: 268px;
        }
        .auto-style40 {
            height: 39px;
            width: 268px;
        }
        .auto-style41 {
            height: 51px;
            width: 222px;
        }
        .auto-style42 {
            height: 55px;
            width: 222px;
        }
        .auto-style43 {
            height: 53px;
            width: 222px;
        }
        .auto-style44 {
            height: 54px;
            width: 222px;
        }
        .auto-style45 {
            height: 57px;
            width: 222px;
        }
        .auto-style46 {
            height: 56px;
            width: 222px;
        }
        .auto-style47 {
            height: 43px;
            width: 222px;
        }
        .auto-style48 {
            height: 76px;
            width: 222px;
        }
        .auto-style49 {
            height: 46px;
            width: 222px;
        }
        .auto-style50 {
            height: 52px;
            width: 222px;
        }
        .auto-style51 {
            height: 69px;
            width: 237px;
        }
        .auto-style52 {
            height: 42px;
            width: 222px;
        }
        .auto-style53 {
            height: 44px;
            width: 237px;
        }
        .auto-style54 {
            height: 47px;
            width: 222px;
        }
        .auto-style55 {
            height: 40px;
            width: 222px;
        }
        .auto-style56 {
            height: 45px;
            width: 222px;
        }
        .auto-style57 {
            height: 69px;
            width: 222px;
        }
        .auto-style58 {
            height: 44px;
            width: 222px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <table align="center" class="auto-style9" style="border:thick solid #a7a7a7">   

            <tr>
                <td class="auto-style24"><strong>Type&nbsp; </strong></td>
                <td class="auto-style41">
                    <asp:RadioButtonList ID="rb_type" runat="server" Height="20px" RepeatDirection="Horizontal" Width="233px">
                        <asp:ListItem>current A/c</asp:ListItem>
                        <asp:ListItem>Savings A/c</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style25"><strong>Name</strong></td>
                <td class="auto-style42">
                    <asp:TextBox ID="txt_name" runat="server" required=" "></asp:TextBox>
                </td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style26"><strong>Gender</strong></td>
                <td class="auto-style43">
                    <asp:RadioButtonList ID="rb_gender" runat="server" Height="20px" RepeatDirection="Horizontal" Width="233px" required=" ">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style27"><strong>Mobile Number</strong></td>
                <td class="auto-style44">
                    <asp:TextBox ID="txt_ph" runat="server" required=" " pattern="^[789]\d{9}$" MaxLength="10"></asp:TextBox>
                </td>
                <td class="auto-style11"></td>
                <td class="auto-style11"></td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style27"><strong>Email Id</strong></td>
                <td class="auto-style44">
                    <asp:TextBox ID="txt_email" runat="server" required=" " pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"></asp:TextBox>
                </td>
                <td class="auto-style11"></td>
                <td class="auto-style11"></td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>Dob</strong></td>
                <td class="auto-style45">
                    <asp:TextBox ID="txt_dob" runat="server" TextMode="Date" required=" "></asp:TextBox>
                </td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style29"><strong>Identification Proof</strong></td>
                <td class="auto-style46">
                    <asp:DropDownList ID="ddl_proof" runat="server">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>passport</asp:ListItem>
                        <asp:ListItem>PAN card</asp:ListItem>
                        <asp:ListItem>voter’s identity</asp:ListItem>
                        <asp:ListItem>Aadhaar</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style13"></td>
                <td class="auto-style13"></td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style30"><strong>No</strong></td>
                <td class="auto-style47">
                    <asp:TextBox ID="txt_pno" runat="server" required="" ></asp:TextBox>
                </td>
                <td class="auto-style14"></td>
                <td class="auto-style14"></td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style25"><strong>Address</strong></td>
                <td class="auto-style42">
                    <asp:TextBox ID="txt_adrs" runat="server" required=" "></asp:TextBox>
                </td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style31"><strong>Street/Area</strong></td>
                <td class="auto-style48">
                    <asp:TextBox ID="txt_street" runat="server" required=" "></asp:TextBox>
                </td>
                <td class="auto-style15"></td>
                <td class="auto-style15"></td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style32"><strong>City/District</strong></td>
                <td class="auto-style49">
                    <asp:TextBox ID="txt_city" runat="server" required=" "></asp:TextBox>
                </td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style33"><strong>State</strong></td>
                <td class="auto-style50">
                    <asp:TextBox ID="txt_state" runat="server" required=" "></asp:TextBox>
                </td>
                <td class="auto-style17"></td>
                <td class="auto-style17"></td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>PinCode</strong></td>
                <td class="auto-style45">
                    <asp:TextBox ID="txt_pin" runat="server" required=" " MaxLength="6"></asp:TextBox>
                </td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style34"><strong>Aadhaar no</strong></td>
                <td class="auto-style57">
                    <asp:TextBox ID="txt_aadharno" runat="server" required=" " MaxLength="12"></asp:TextBox>
                </td>
                <td class="auto-style18"></td>
                <td class="auto-style18"></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style35"><span class="auto-style53"><strong>N</strong></span><span class="auto-style53" style="color: rgb(0, 0, 0); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><strong>ominee Name</strong></span><br style="box-sizing: border-box; font-family: &quot;Source Sans Pro&quot;, sans-serif; font-weight: 400; backface-visibility: hidden; color: rgb(0, 0, 0); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(236, 236, 236); text-decoration-style: initial; text-decoration-color: initial;" />
                </td>
                <td class="auto-style52">
                    <asp:TextBox ID="txt_nominee" runat="server" required=" "></asp:TextBox>
                </td>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style36"><strong><span class="auto-style53">N</span><span class="auto-style53" style="color: rgb(0, 0, 0); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">ominee </span>Aadhaar no</strong></td>
                <td class="auto-style58">
                    <asp:TextBox ID="txt_NOaadharno" runat="server" required=" " MaxLength="12"></asp:TextBox>
                </td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style36"><strong>Card Number</strong></td>
                <td class="auto-style58">
                    <asp:TextBox ID="txt_cardno" runat="server" required=" " MaxLength="16"></asp:TextBox>
                </td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style37"><strong>Cvvno</strong></td>
                <td class="auto-style54">
                    <asp:TextBox ID="txt_cvvno" runat="server" required=" " MaxLength="4"></asp:TextBox>
                </td>
                <td class="auto-style21"></td>
                <td class="auto-style21"></td>
                <td class="auto-style21"></td>
            </tr>
            <tr>
                <td class="auto-style38"><strong>Expery Date</strong></td>
                <td class="auto-style55">
                    <asp:TextBox ID="txt_date" runat="server" TextMode="Date" required=" "></asp:TextBox>
                </td>
                <td class="auto-style22"></td>
                <td class="auto-style22"></td>
                <td class="auto-style22"></td>
            </tr>
            <tr>
                <td class="auto-style39"><strong>photo</strong></td>
                <td class="auto-style56">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td class="auto-style23"></td>
                <td class="auto-style23"></td>
                <td class="auto-style23"></td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style8"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-danger" Text="Submit" Width="153px" />
                </td>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style52">
                    &nbsp;</td>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
</asp:Content>

