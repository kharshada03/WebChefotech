<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Post.aspx.cs" Inherits="Post" Debug="true" %>

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
                    $('#<%=Image1.ClientID%>').prop('src', e.target.result)
                        .width(200)
                        .height(200);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }
    </script>
    <style type="text/css">
        input[type=label1] {
        }
        body {
            text-align:center;
        }
        .style1
        {
            width: 302px;
        }
        .style2
        {
            width: 155px;
        }
        .auto-style2 {
            height: 30px;
        }
        .auto-style4 {
            width: 155px;
            height: 59px;
        }
    </style>
</head>
<body background="masterpage.jpg">
    <form id="form1" runat="server" 
    style="background-color: #FFFFFF; width: 1052px; margin-left: 108px; margin-top: 175px;">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Post Recipe" Font-Bold="True" 
            Font-Size="XX-Large"></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
            <br />
         <table align="center" style="width: 737px">
             <tr>
                 <td colspan="3" align="left">
                     <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                 </td>
             </tr>
          <tr>
           <td colspan="3" class="auto-style2">
            <asp:Label ID="Label2" runat="server" Text="Post Title:"></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="604px"></asp:TextBox>
           </td>
          </tr>
          <tr>
           <td colspan="3">
               <asp:Label ID="Label3" runat="server" Text="Cuisine Type:"></asp:Label>
               &nbsp;
               <asp:DropDownList ID="DropDownList1" runat="server">
                   <asp:ListItem>Arab</asp:ListItem>
                   <asp:ListItem>Bengali</asp:ListItem>
                   <asp:ListItem>Chinese </asp:ListItem>
                   <asp:ListItem>French</asp:ListItem>
                   <asp:ListItem>Goan</asp:ListItem>
                   <asp:ListItem>Greek</asp:ListItem>
                   <asp:ListItem>Gujarati</asp:ListItem>
                   <asp:ListItem>Hyderabad</asp:ListItem>
                   <asp:ListItem>Indian</asp:ListItem>
                   <asp:ListItem>Italian</asp:ListItem>
                   <asp:ListItem>Japanese</asp:ListItem>
                   <asp:ListItem>Karnataka</asp:ListItem>
                   <asp:ListItem>Korean</asp:ListItem>
                   <asp:ListItem>Maharashtrian</asp:ListItem>
                   <asp:ListItem>Mangalorean</asp:ListItem>
                   <asp:ListItem>Malaysian</asp:ListItem>
                   <asp:ListItem>Mexican</asp:ListItem>
                   <asp:ListItem>Nepalese</asp:ListItem>
                   <asp:ListItem>Pakistani</asp:ListItem>
                   <asp:ListItem>Persian</asp:ListItem>
                   <asp:ListItem>Punjabi</asp:ListItem>
                   <asp:ListItem>Rajasthani</asp:ListItem>
                   <asp:ListItem>Russian</asp:ListItem>
                   <asp:ListItem>South Indian</asp:ListItem>
                   <asp:ListItem>Turkish</asp:ListItem>
                   <asp:ListItem>Ukrainian</asp:ListItem>
               </asp:DropDownList>
               </td>
          </tr>
          <tr>
           <td class="auto-style4" colspan="3">
               &nbsp;&nbsp;
               <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton1_Click">Post Blog</asp:LinkButton>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton2_Click">Back</asp:LinkButton>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Size="Large" OnClick="LinkButton3_Click">Clear</asp:LinkButton>
           </td>
          </tr>
             <tr>
                 <td colspan="3" align="center">
                     <asp:FileUpload ID="FileUpload1" runat="server" Height="35px" Width="234px" onchange="ImagePreview(this);" />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Preview" Height="34px" Width="68px" OnClick="Button2_Click" />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Image ID="Image1" runat="server" Height="104px" Width="178px" />
                 </td>
             </tr>
          <tr>
           <td class="style1" colspan="3">
               <asp:TextBox ID="TextBox2" runat="server" Height="346px" 
                   TextMode="MultiLine" Width="821px"></asp:TextBox></td>
          </tr>
         </table>
    </div>
    </form>
</body>
</html>
