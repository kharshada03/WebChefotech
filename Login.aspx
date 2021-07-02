<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Debug="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        input[type=label1] {
        }
        body {
            text-align:center;
        }       
    </style>
</head>
<body background="masterpage.jpg">
<br />
<br />
    <form id="form1" runat="server" 
    style="background-color: #FFFFFF; height: 279px; width: 910px; margin-left: 178px; margin-top: 125px;">
    <br />
     <div align="center" >
         <asp:Label ID="Label5" runat="server" Text="Select Your Login Account:" Font-Size="X-Large"></asp:Label>
         &nbsp;&nbsp;
         <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large" Height="25px" Width="139px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
             <asp:ListItem Value="-1" Text="SelectAccount"></asp:ListItem>
             <asp:ListItem Value="UserLogin" Text="UserLogin"></asp:ListItem>
             <asp:ListItem Value="HotelLogin" Text="HotelLogin"></asp:ListItem>
         </asp:DropDownList>
       <asp:Panel ID="UserLoginPanel" runat="server">
         <asp:Label ID="Label1" runat="server" Text="UserLogin" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
         <br />
         <br />
        <table align="center" style="height: 83px; width: 648px; margin-left: 83px;">
         <tr>
          <td align="right" class="style1"><asp:Label ID="Label2" runat="server" Text="Username:" Font-Size="Large"></asp:Label></td>
          <td align="left"><asp:TextBox ID="TextBox1" runat="server" Height="17px" Width="216px"></asp:TextBox></td>
         </tr>
         <tr>
          <td align="right"><asp:Label ID="Label3" runat="server" Text="Password:" Font-Size="Large"></asp:Label></td>
          <td align="left"><asp:TextBox ID="TextBox2" runat="server" Height="17px" Width="216px" TextMode="Password"></asp:TextBox></td>
         </tr>
        </table>
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Large" OnClick="LinkButton1_Click">Login</asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Large" PostBackUrl="~/ForgotPassword.aspx">Forgot Password?</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Large" 
            PostBackUrl="~/Signup.aspx">Create a New Account</asp:LinkButton>
        </asp:Panel>
         <asp:Panel ID="HotelLoginPanel" runat="server">
             <asp:Label ID="Label4" runat="server" Text="HotelLogin" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
         <br />
         <br />
        <table align="center" style="height: 83px; width: 648px; margin-left: 83px;">
         <tr>
          <td align="right" class="style1"><asp:Label ID="Label6" runat="server" Text="Username:" Font-Size="Large"></asp:Label></td>
          <td align="left"><asp:TextBox ID="TextBox3" runat="server" Height="17px" Width="216px"></asp:TextBox></td>
         </tr>
         <tr>
          <td align="right"><asp:Label ID="Label7" runat="server" Text="Password:" Font-Size="Large"></asp:Label></td>
          <td align="left"><asp:TextBox ID="TextBox4" runat="server" Height="17px" Width="216px" TextMode="Password"></asp:TextBox></td>
         </tr>
        </table>
             <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="Large" OnClick="LinkButton4_Click">Login</asp:LinkButton>
        <br />
             <asp:LinkButton ID="LinkButton5" runat="server" Font-Size="Large" PostBackUrl="~/ForgotPassword.aspx">Forgot Password?</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton6" runat="server" Font-Size="Large" 
            PostBackUrl="~/Signup.aspx">Create a New Account</asp:LinkButton>
         </asp:Panel>
    </div>
    </form>
</body>
</html>
