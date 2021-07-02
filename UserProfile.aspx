<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" Debug="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        input[type=label1] {
        }
        body {
            text-align:center;
        }       
         .auto-style1 {
             height: 23px;
         }
         .auto-style2 {
             width: 176px;
         }
         .auto-style6 {
             width: 180px;
         }
         .auto-style7 {
             width: 159px;
         }
         .auto-style8 {
             width: 269px;
         }
    </style>
</head>
<body background="masterpage.jpg">
    <br />
    <br />
    <form id="form1" runat="server" style="background-color: #FFFFFF; height: 563px; width: 910px; margin-left: 178px; margin-top: 125px;">
        <br />
    <div align="center">
        <asp:Label ID="Label1" runat="server" Text="Profile" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
        <br /><br />
        <table style="width: 620px">
            <tr>
                <td class="auto-style7"><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Size="Large">Profile</asp:LinkButton></td>
                <td class="auto-style2"><asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Large" OnClick="LinkButton2_Click" CausesValidation="False">Change Password</asp:LinkButton></td>
                <td><asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" Font-Size="Large" CausesValidation="False">Back</asp:LinkButton></td>
                <td><asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Font-Size="Large" CausesValidation="False">Logout</asp:LinkButton></td>
            </tr>
        </table>
        <br /><br />
        <asp:Panel ID="ProfilePanel" runat="server">
        <table align="center" style="width: 443px">
            <tr>
                <td align="left"><asp:Label ID="Label2" runat="server" Text="Name:" Font-Size="Large"></asp:Label></td>
                <td><asp:TextBox ID="TextBox1" runat="server" Width="176px" ></asp:TextBox></td>
            </tr>
            <tr>
                <td align="left"><asp:Label ID="Label3" runat="server" Text="ContactNo:" Font-Size="Large"></asp:Label></td>
                <td><asp:TextBox ID="TextBox2" runat="server" Width="175px" ></asp:TextBox></td>
            </tr>
            <tr>
                <td align="left" class="auto-style1"><asp:Label ID="Label4" runat="server" Text="EmailId:" Font-Size="Large"></asp:Label></td>
                <td class="auto-style1"><asp:TextBox ID="TextBox3" runat="server" Width="175px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="left"><asp:Label ID="Label5" runat="server" Text="Bio:" Font-Size="Large"></asp:Label></td>
                <td><asp:TextBox ID="TextBox4" runat="server" Width="175px" ></asp:TextBox></td>
            </tr>
            <tr>
                <td align="left"><asp:Label ID="Label6" runat="server" Text="Orders" Font-Size="Large"></asp:Label></td>
                <td><asp:TextBox ID="TextBox5" runat="server" Width="175px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="left"><asp:Label ID="Label7" runat="server" Text="Speciality:" Font-Size="Large"></asp:Label></td>
                <td><asp:TextBox ID="TextBox6" runat="server" Width="175px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="left"><asp:Label ID="Label8" runat="server" Text="Menus for Orders:" Font-Size="Large"></asp:Label></td>
                <td><asp:TextBox ID="TextBox7" runat="server" Width="175px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="left"><asp:Label ID="Label9" runat="server" Text="Food Price:" Font-Size="Large"></asp:Label></td>
                <td><asp:TextBox ID="TextBox8" runat="server" Width="175px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="left"><asp:Label ID="Label10" runat="server" Text="Username:" Font-Size="Large"></asp:Label></td>
                <td><asp:TextBox ID="TextBox9" runat="server" Width="170px"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2"><asp:Button ID="Button3" runat="server" Text="Edit" OnClick="Button3_Click" Width="61px" /></td>
            </tr>
            <tr>
                <td><asp:Button ID="Button4" runat="server" Text="Save" Width="58px" OnClick="Button4_Click" Visible="False" /></td>
                <td><asp:Button ID="Button5" runat="server" Text="Cancel" Width="80px" OnClick="Button5_Click" Visible="False" /></td>
            </tr>
        </table>
            </asp:Panel>
        <asp:Panel ID="Password" runat="server">
        <table align="center" style="width: 443px">
            <tr>
                <td class="auto-style6"><asp:Label ID="Label20" runat="server" Text="Current Password:" Font-Size="Large"></asp:Label></td>
                <td class="auto-style8"><asp:TextBox ID="TextBox19" runat="server" Width="183px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style6"><asp:Label ID="Label21" runat="server" Text="New Password:" Font-Size="Large"></asp:Label></td>
                <td class="auto-style8"><asp:TextBox ID="TextBox20" runat="server" Width="182px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox20" ErrorMessage="Required" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><asp:Label ID="Label22" runat="server" Text="Confirm Password:" Font-Size="Large"></asp:Label></td>
                <td class="auto-style8"><asp:TextBox ID="TextBox21" runat="server" Width="181px" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox20" ControlToValidate="TextBox21" ErrorMessage="Does not match" Font-Size="Large" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Label ID="lbl_msg" runat="server"></asp:Label></td>
            </tr>
        </table>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
