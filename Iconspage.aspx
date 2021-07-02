<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Iconspage.aspx.cs" Inherits="Iconspage" Debug="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 164px;
        }
    </style>
</head>
<body background="masterpage.jpg">
    <form id="form1" runat="server">
    <div>
    <br />
    <br />
    <br />
    <br /><br /><br /><br /><br /><br />
        <table align="right">
       <tr>
           <td><asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label></td>
        </tr>
            <tr>
        <td><asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="X-Large" OnClick="LinkButton1_Click">Logout</asp:LinkButton></td>
           </tr>
            </table>
    <table align="center" style="margin-top: 74px">
    <tr>
     <td class="style1">
         <asp:ImageButton ID="ImageButton1" runat="server" Height="145px" 
             ImageUrl="~/postlogo.png" Width="163px"  PostBackUrl="~/ViewPost.aspx" /></td>
     <td><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/postrecipe.png" 
             Height="185px" Width="164px" PostBackUrl="~/Post.aspx" /></td>
     <td><asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/tipslogo.png" 
             Height="119px" Width="129px" PostBackUrl="~/Tips.aspx" /></td>
     <td><asp:ImageButton ID="ImageButton4" runat="server" 
             ImageUrl="~/dictionarylogo.jpg" Height="153px" Width="169px" 
             style="margin-left: 15px" PostBackUrl="~/Dictionary.aspx" /></td>
     <td><asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/joblogo.png" 
             Height="120px" Width="156px" PostBackUrl="~/Jobs.aspx" /></td>
     <td><asp:ImageButton ID="ImageButton6" runat="server" Height="159px" 
             ImageUrl="~/eventlogo.png" Width="163px" PostBackUrl="~/Orders.aspx" /></td>
    <td><asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/profile pic.png" Height="128px" Width="125px" OnClick="ImageButton7_Click" /></td>
    </tr>
    <tr>
     <td align="center" class="style1"><asp:Label ID="Label1" runat="server" Text="View Post" 
             Font-Bold="True" Font-Size="Large"></asp:Label></td>
     <td align="center"><asp:Label ID="Label2" runat="server" Text="Post Recipe" 
             Font-Bold="True" Font-Size="Large"></asp:Label></td>
     <td align="center"><asp:Label ID="Label3" runat="server" Text="Tips" 
             Font-Bold="True" Font-Size="Large"></asp:Label></td>
     <td align="center"><asp:Label ID="Label4" runat="server" Text="Dictionary" Font-Bold="True" Font-Size="Large"></asp:Label></td>
     <td align="center"><asp:Label ID="Label5" runat="server" Text="Jobs" Font-Bold="True" Font-Size="Large"></asp:Label></td>
     <td align="center"><asp:Label ID="Label6" runat="server" Text="Orders" Font-Bold="True" Font-Size="Large"></asp:Label></td>
     <td align="center"><asp:Label ID="Label7" runat="server" Text="Profile" Font-Bold="True" Font-Size="Large"></asp:Label></td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
