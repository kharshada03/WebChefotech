<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HotelProfile.aspx.cs" Inherits="HotelProfileaspx" Debug="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 105px;
        }
        .auto-style2 {
            width: 171px;
        }
        .auto-style3 {
            height: 30px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
            width: 156px;
        }
        .auto-style6 {
            width: 156px;
        }
        .auto-style7 {
            width: 180px;
        }
    </style>
</head>
<body background="masterpage.jpg">
    <form id="form1" runat="server" 
     style="background-color: #FFFFFF; width: 896px; height: 1065px; margin-left: 184px; margin-top: 160px;">
    <div align="center">
        <asp:Label ID="Label1" runat="server" Text="Profile" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
        <br /><br />
        <table style="width: 647px">
            <tr>
                <td class="auto-style7"><asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Large" OnClick="LinkButton1_Click">Profile</asp:LinkButton></td>
                <td class="auto-style2"><asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Large" OnClick="LinkButton2_Click" CausesValidation="False">Change Password</asp:LinkButton></td>
                <td><asp:LinkButton ID="LinkButton4" runat="server" Font-Size="Large" CausesValidation="False" PostBackUrl="~/Iconspage.aspx">Back</asp:LinkButton></td>
                <td class="auto-style1"><asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Large" OnClick="LinkButton3_Click" CausesValidation="False">Logout</asp:LinkButton></td>
            </tr>
        </table>
        <br /><br />
        <asp:Panel ID="HotelProfilePanel" runat="server">
        <table align="center" style="width: 385px">
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Name:" Font-Size="Large"></asp:Label></td>
                <td><asp:TextBox ID="TextBox1" runat="server" Width="198px"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" runat="server" Text="Address:" Font-Size="Large"></asp:Label></td>
                <td><asp:TextBox ID="TextBox2" runat="server" Width="198px"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label4" runat="server" Text="MapLink" Font-Size="Large"></asp:Label></td>
                <td><asp:TextBox ID="TextBox3" runat="server" Width="198px"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label5" runat="server" Text="Bio:" Font-Size="Large"></asp:Label></td>
                <td><asp:TextBox ID="TextBox4" runat="server" Width="198px"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label6" runat="server" Text="Username:" Font-Size="Large"></asp:Label></td>
                <td><asp:TextBox ID="TextBox5" runat="server" Width="198px"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style3"><asp:Button ID="Button1" runat="server" Text="Edit" OnClick="Button1_Click" Width="67px" /></td>
            </tr>
            <tr>
                <td><asp:Button ID="Button2" runat="server" Text="Save" Visible="False" OnClick="Button2_Click" Width="53px" /></td>
                <td><asp:Button ID="Button3" runat="server" Text="Cancel" Visible="False" OnClick="Button3_Click" Width="71px" /></td>
            </tr>
        </table>
            </asp:Panel>
        <asp:Panel ID="PasswordPannel" runat="server">
        <table align="center" style="width: 387px">
            <tr>
                <td class="auto-style5"><asp:Label ID="Label7" runat="server" Text="Current Password:" Font-Size="Large"></asp:Label></td>
                <td class="auto-style4"><asp:TextBox ID="TextBox6" runat="server" Width="160px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style6"><asp:Label ID="Label8" runat="server" Text="New Password:" Font-Size="Large"></asp:Label></td>
                <td><asp:TextBox ID="TextBox7" runat="server" TextMode="Password" Width="156px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="Required" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><asp:Label ID="Label9" runat="server" Text="Confirm Password:" Font-Size="Large"></asp:Label></td>
                <td><asp:TextBox ID="TextBox8" runat="server" TextMode="Password" Width="152px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="Password does not match" Font-Size="Large" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button4" runat="server" Text="Update" OnClick="Button4_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" Text="Back" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label10" runat="server" Text=""></asp:Label></td>
            </tr>
        </table>
            </asp:Panel>
    </div>
    </form>
</body>
</html>
