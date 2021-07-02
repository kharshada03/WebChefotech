<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" Debug="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        input[type=label]{
        }
        body {
            text-align:center;
        }       
        .auto-style1 {
            height: 44px;
        }
        .auto-style2 {
            height: 35px;
        }
        .auto-style3 {
            height: 31px;
        }
        /*.chefotech {
            background-image: url("19.jpg");
height: 1065px;
width: 896px;
background-repeat: no-repeat;
background-size: cover;
        }*/
        .auto-style4 {
            height: 22px;
        }
        .chefotech {
            height: 553px;
        }
    </style>
</head>
<body background="masterpage.jpg">
    <form id="form1" runat="server"
        style="background-color: #FFFFFF; width: 896px; height: 759px; margin-left: 184px; margin-top: 160px;">
    <div align="center" class="chefotech">
        <asp:Label ID="Label1" runat="server" Text="Password Recovery" Font-Size="XX-Large"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Here You have Enter Email Address to Recover Your Password."></asp:Label>
        <br /><br />
        &nbsp;<table align="left" style="width: 342px">
            <tr>
                <td class="auto-style1"><asp:Label ID="Label3" runat="server" Text="EmailId:" Font-Size="Large"></asp:Label></td>
                <td class="auto-style1"><asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" Width="225px"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style2">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Large" OnClick="LinkButton1_Click">Back To Login</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style3"><asp:Label ID="Label4" runat="server" Text=""></asp:Label></td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="" Visible="False"></asp:Label>
        <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Panel ID="OTPpanel" runat="server" style="margin-top: 103px">
        <table align="left">
            <tr>
                <td><asp:Label ID="Label7" runat="server" Text="Enter OTP:" Font-Size="Large"></asp:Label></td>
                <td><asp:TextBox ID="TextBox2" runat="server" Width="222px"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2"><asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" /></td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style4"><asp:Label ID="Label8" runat="server" Text=""></asp:Label></td>
            </tr>
        </table>
            </asp:Panel>
        <br /><br /><br /><br /><br />
        <asp:Panel ID="PasswordPannel" runat="server">
        <table align="left" style="width: 463px">
            <tr>
                <td><asp:Label ID="Label9" runat="server" Text="Enter new Password" Font-Size="Large"></asp:Label></td>
                <td><asp:TextBox ID="TextBox3" runat="server" Width="173px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label10" runat="server" Text="Confirm Password:" Font-Size="Large"></asp:Label></td>
                <td><asp:TextBox ID="TextBox4" runat="server" Width="162px" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Password does not match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2"><asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" /></td>
            </tr>
            <tr>
                <td colspan="2"><asp:Label ID="Label11" runat="server" Text=""></asp:Label></td>
            </tr>
        </table>
            </asp:Panel>
    </div>
    </form>
</body>
</html>
