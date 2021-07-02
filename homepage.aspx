<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        input[type=label1] {
            font-size: 30px;
        }
        body{
            text-align:center;
        }
        .style2
        {
            width: 80px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="ChefoTech" Font-Bold="True" Font-Size="90px"></asp:Label>
        <br />
        <table align="right" cellspacing="15px" style="height: 46px; width: 209px">
        <tr>
         <td style="border-style: solid; border-width: 2px" class="style2">
             <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Login.aspx" Font-Size="X-Large">Login</asp:LinkButton></td>
         <td style="border-style: solid; border-width: 2px" class="style2">
             <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Signup.aspx" Font-Size="X-Large">SignUp</asp:LinkButton></td>
        </tr>
        </table>
        <br />
        <br />
    </div>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/post.png" style="height: 300px; width: 1400px"/>
    <asp:Image ID="Image2" runat="server" ImageUrl="~/order.png"  style="height: 300px; width: 1400px" />
    <asp:Image ID="Image3" runat="server" ImageUrl="~/16.jpg" style="height: 300px; width: 1400px"  />
    <asp:Image ID="Image4" runat="server" ImageUrl="~/tips.jpg" style="height: 300px; width: 1400px" />
    </form>
</body>
</html>
