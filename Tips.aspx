<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tips.aspx.cs" Inherits="Tips" Debug="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        input[type=label3]{
            }
        body {
            text-align:center;
        }
        .style1
        {
            width: 172px;
        }
    </style>
</head>
<body background="masterpage.jpg">
    <form id="form1" runat="server" 
    style="background-color: #FFFFFF; width: 896px; height: 1065px; margin-left: 184px; margin-top: 160px;">
    <div style="margin-top: 156px">
        <asp:Label ID="Label3" runat="server" Text="Tips" Font-Bold="True" 
            Font-Size="XX-Large"></asp:Label>
        <br />
    <br />
        <table align="right">
        <tr>
        <td><asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/Iconspage.aspx" Font-Size="Large">Back</asp:LinkButton></td>
        </tr>
         </table>
            <div>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="commentbox" style="border: thin groove #000000" align="left">
                    <b><asp:Label ID="Label1" runat="server" Text='<%#Eval("Name") %>' Font-Size="Large"></asp:Label></b>
                    <br />
                     <asp:Label ID="Label2" runat="server" Text='<%#Eval("Tip") %>' Font-Size="Large"></asp:Label>
                </div>
            </ItemTemplate>
        </asp:Repeater>
            <div>
                <asp:Repeater ID="rptPaging" runat="server">
                    <ItemTemplate>
                        <asp:LinkButton ID="btnpage" runat="server" Style="padding: 8px; margin: 2px; background: #007acc; border: solid 1px blue; font: 8px;"
                            CommandName="Page" CommandArgument="<%# Container.DataItem %>"
                           ForeColor="White" Font-Bold="True" CausesValidation="false"><%# Container.DataItem %>>
                        </asp:LinkButton>
                    </ItemTemplate>
                </asp:Repeater>
            </div><br />
        </div>
        <div align="left">
     <table style="bottom: auto; width: 722px;">
     <tr>
      <td class="style1" align="left"><asp:Label ID="Label1" runat="server" Text="Name:" 
              Font-Size="Large"></asp:Label></td>
      <td align="left"><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
         </td>
     </tr>
     <tr>
      <td class="style1" align="left"><asp:Label ID="Label2" runat="server" 
              Text="Tip you want to share:" Font-Size="Large"></asp:Label></td>
      <td align="left">
          <asp:TextBox ID="TextBox2" runat="server" Width="272px" Height="65px" 
              TextMode="MultiLine"></asp:TextBox><br /><br /></td>      
     </tr>
     <tr>
      <td colspan="2" align="center"> 
          <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Large" 
              onclick="LinkButton1_Click">Clear</asp:LinkButton>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
          <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Large" OnClick="LinkButton2_Click">Submit</asp:LinkButton>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
          <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="Large" 
              PostBackUrl="~/Iconspage.aspx" OnClick="LinkButton3_Click">Back</asp:LinkButton>
      &nbsp;<asp:Label ID="Label4" runat="server" Visible="False"></asp:Label></td>
     </tr>
     </table>
     </div>
    </div>
    </form>
</body>
</html>
