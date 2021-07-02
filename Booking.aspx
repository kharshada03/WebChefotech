<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="Booking" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        input[type=label1]
        { 
            }
         body
         {
             text-align:center;
             }
        .style1
        {
            width: 81px;
        }
        .style2
        {
            width: 91px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Orders" Font-Bold="True" 
            Font-Size="XX-Large"></asp:Label>
        <br />
        <br />
        <table align="center" style="width: 421px">
         <tr>
          <td colspan="2"><asp:Label ID="Label2" runat="server" Text="Booking"></asp:Label></td>
          <td colspan="2"><asp:Label ID="Label3" runat="server" Text="Status"></asp:Label></td>
         </tr>
         <tr>
          <td class="style1"><asp:LinkButton ID="LinkButton1" runat="server">Get Order</asp:LinkButton></td>
          <td class="style2"><asp:LinkButton ID="LinkButton2" runat="server">Book Order</asp:LinkButton></td>
          <td><asp:Label ID="Label4" runat="server" Text="Name:"></asp:Label></td>
          <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
         </tr>
        </table>
    </div>
    </form>
</body>
</html>
