<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dictionary.aspx.cs" Inherits="Dictionary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
    </style>
</head>
<body background="masterpage.jpg">
    <form id="form1" runat="server" 
        style="background-color: #FFFFFF; height: 279px; width: 910px; margin-left: 178px; margin-top: 170px;">
    <div align="center">
        <asp:Label ID="Label1" runat="server" Text="Dictionary" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
        <br />
        <br />
        <table align="center" style="width: 443px">
            <tr>
                <td class="auto-style1"><asp:Label ID="Label2" runat="server" Text="Find Meaning for:" Font-Size="Large"></asp:Label></td>
                <td class="auto-style1"><asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="180px"></asp:TextBox></td>
                <td class="auto-style1"><asp:Button ID="Button1" runat="server" Text="Search" Font-Size="Large" OnClick="Button1_Click" /></td>
            </tr>
            <tr>
                <td colspan="3" align="center">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Iconspage.aspx">Back</asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
