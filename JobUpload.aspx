<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobUpload.aspx.cs" Inherits="JobUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table align="center">
         <tr>
             <td colspan="2"><asp:Label ID="Label1" runat="server" Text="Upload Files for Job"></asp:Label></td>
         </tr>
         <tr>
             <td><asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label></td>
             <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
         </tr>
         <tr>
             <td></td>
             <td></td>
         </tr>
     </table>
    </div>
    </form>
</body>
</html>
