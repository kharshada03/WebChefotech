<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewPost.aspx.cs" Inherits="ViewPost"  Debug="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 96px;
        }
    </style>
</head>
<body background="masterpage.jpg">
    <form id="form1" runat="server" style="background-color: #FFFFFF; width: 681px; margin-left: 382px; margin-top: 175px;">
    <div>
        <br />
        <table align="right" style="width: 182px">
            <tr>
                <td class="auto-style1"><asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton1_Click">PostBlog</asp:LinkButton></td>
                <td><asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton2_Click" PostBackUrl="~/Iconspage.aspx">Back</asp:LinkButton></td>
            </tr>
        </table>
        <br />
         <asp:DataList ID="DataList1" runat="server" Width="749px" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div style="border: 2px solid #000000; width: 659px;">
                    Name:
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Name") %>'></asp:Label><br />
                Tilte:
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Title") %>'></asp:Label><br />
                CuisineType:
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Type") %>'></asp:Label><br />
                Blog:
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("file") %>' Height="88px" Width="112px" /><br />
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Post") %>'></asp:Label><br />
                    </div>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Title], [Type], [file], [Post] FROM [Post]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
