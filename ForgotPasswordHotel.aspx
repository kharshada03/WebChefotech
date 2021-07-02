<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPasswordHotel.aspx.cs" Inherits="ForgotPasswordHotel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        input[type=label]{
        }
        body {
            text-align:center;
        } 
        </style>
</head>
<body background="masterpage.jpg">
    <form id="form1" runat="server">
    <div style="height: 285px">
        <asp:Label ID="Label1" runat="server" Text="Password Recovery" Font-Size="XX-Large"></asp:Label>
        <br /><br />
        <asp:Label ID="Label3" runat="server" Text="Here You have Enter Email Address to Recover Your Password."></asp:Label>
    <table align="left">
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="EmailId:"></asp:Label></td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:LinkButton ID="LinkButton1" runat="server">Back to Login</asp:LinkButton>
                <asp:Button ID="Button1" runat="server" Text="Submit" />
            </td>
        </tr>
        <tr>
            <td colspan="2"></td>
        </tr>
    </table>
        <br /><br />
        <table align="left">
            <tr>
                <td></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
