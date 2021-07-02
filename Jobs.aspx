<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Jobs.aspx.cs" Inherits="Jobs" Debug="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=Image2.ClientID%>').prop('src', e.target.result)
                        .width(200)
                        .height(200);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }
    </script>
    <style>
        input[type=label1] {
        }
        body {
            text-align:center;
        }    
    </style>
</head>
<body background="masterpage.jpg">
    <form id="form1" runat="server" style="background-color: #FFFFFF; margin-top: 157px; width: 724px; margin-left: 276px;">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Jobs" Font-Size="XX-Large" Font-Bold="True"></asp:Label>
            <br /><br />
            <asp:Label ID="Label2" runat="server" Text="Serach For Jobs" Font-Size="Larger"></asp:Label>
            <br /><br />
            <table align="right">
                <tr>
                 <td><asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Iconspage.aspx" Font-Size="Large">Back</asp:LinkButton></td>
                    </tr>
                </table>
        </div>
        <div align="left">
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="500px">
                <ItemTemplate>
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("file") %>' Width="479px" Height="262px" /><br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Job]"></asp:SqlDataSource>
        </div>
        <div>
            <table>
                <tr> 
                    <td colspan="2"> <asp:Label ID="Label3" runat="server" Text="Upload files for jobes:"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="Name:"></asp:Label></td>
                    <td><asp:Label ID="Label8" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label5" runat="server" Text="Upload File:"></asp:Label></td>
                    <td><asp:FileUpload ID="FileUpload1" runat="server" Width="298px" onchange="ImagePreview(this);"/></td>
                </tr>
                <tr>
                    <td colspan="2"><asp:Image ID="Image2" runat="server" Height="80px" Width="119px" /></td>
                </tr>
                <tr>
                    <td colspan="2"><asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" Text="Back" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><asp:Label ID="Label6" runat="server" Text=""></asp:Label>&nbsp;
                        <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table> 
        </div>
    </form>
</body>
</html>
