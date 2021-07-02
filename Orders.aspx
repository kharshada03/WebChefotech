<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="Orders"  Debug="true"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        input[type=label1] {
        }
        body {
            text-align:center;
        }
    </style>
</head>
<body background="masterpage.jpg">
    <form id="form1" runat="server" style="background-color: #FFFFFF; margin-top: 161px; width: 827px; margin-left: 193px;">
    <div>
        <asp:Label ID="Label1" runat="server" Text="List Of Orders" Font-Size="XX-Large"></asp:Label>
        <br /><br />
        <table align="right">
            <tr>
                <td><asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Large" PostBackUrl="~/Iconspage.aspx">Back</asp:LinkButton></td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Contactno" HeaderText="Contactno" SortExpression="Contactno" />
                <asp:BoundField DataField="Emailid" HeaderText="Emailid" SortExpression="Emailid" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Speciality" HeaderText="Speciality" SortExpression="Speciality" />
                <asp:BoundField DataField="MenuOrder" HeaderText="MenuOrder" SortExpression="MenuOrder" />
                <asp:BoundField DataField="FoodPrice" HeaderText="FoodPrice" SortExpression="FoodPrice" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Contactno], [Emailid], [Country], [Gender], [Speciality], [MenuOrder], [FoodPrice] FROM [User] WHERE ([Orders] = @Orders)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Yes" Name="Orders" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br /><br />
    </div>
    </form>
</body>
</html>
