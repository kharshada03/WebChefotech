<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" Debug="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        input[type=label1] {
        }
        body {
            text-align:center;
        }
        .style10
        {
            height: 24px;
        }
        .style13
        {
            width: 193px;
        }
        .style14
        {
            width: 188px;
        }
        .style15
        {
            width: 187px;
        }
        .style16
        {
            width: 191px;
        }
        .style17
        {
            width: 191px;
            height: 30px;
        }
        .style18
        {
            height: 30px;
        }
        .style19
        {
            width: 188px;
            height: 54px;
        }
        .style20
        {
            height: 54px;
        }
        .auto-style1 {
            width: 191px;
            height: 31px;
        }
        .auto-style2 {
            height: 31px;
        }
    </style>
</head>
<body background="masterpage.jpg">
    <form id="form1" runat="server" 
    style="background-color: #FFFFFF; width: 896px; height: 1065px; margin-left: 184px; margin-top: 156px;">
    <div align="center">
      <asp:Label ID="Label1" runat="server" Text="SignUp" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
      <br />
      <br />
      <asp:Label ID="Label2" runat="server" Text="Create a New Account" Font-Bold="True" Font-Size="Larger"></asp:Label>
      <br />
      <table align="center">
      <tr>
       <td><asp:Label ID="Label3" runat="server" Text="Select Account Type:" 
               Font-Bold="False" Font-Size="Large"></asp:Label></td>
       <td>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                Font-Size="Large">
             <asp:ListItem Text="Select User" Value="-1"></asp:ListItem>
             <asp:ListItem Text="User" Value="User"></asp:ListItem>
             <asp:ListItem Text="Hotel" Value="Hotel"></asp:ListItem>
           </asp:DropDownList>
       </td>
      </tr>
      </table>
        <asp:Panel ID="UserPanel" runat="server">
      <table align="center" style="height: 215px; width: 598px">
       <tr>
        <td colspan="2" align="center" class="style10">
            <asp:Label ID="Label4" runat="server" Text="User Signup" Font-Bold="True" 
                Font-Size="Large"></asp:Label></td>
       </tr>
          <tr>
              <td><asp:Label ID="Label26" runat="server" Text="ID" Visible="false"></asp:Label></td>
              <td><asp:Label ID="Label27" runat="server" Text=""></asp:Label></td>
          </tr>
       <tr>
        <td align="left" class="style16"><asp:Label ID="Label5" runat="server" Text="Name:" 
                Font-Size="Large"></asp:Label></td>
        <td align="left"><asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Required" Font-Bold="False" 
                Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
           </td>
       </tr>
       <tr>
        <td align="left" class="style16"><asp:Label ID="Label6" runat="server" Text="Contact No:" Font-Size="Large"></asp:Label></td>
        <td align="left"><asp:TextBox ID="TextBox2" runat="server" Width="200px" 
                Height="20px" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="10nos required" Font-Bold="False" 
                Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Upto 10 Digit Only" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
           </td>
       </tr>
       <tr>
        <td align="left" class="style16"><asp:Label ID="Label7" runat="server" Text="EmailId:" Font-Size="Large"></asp:Label></td>
        <td align="left"><asp:TextBox ID="TextBox3" runat="server" Width="200px" 
                TextMode="Email"></asp:TextBox>&nbsp;<asp:RegularExpressionValidator 
                ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" 
                ErrorMessage="Invalid Email" Font-Bold="False" Font-Size="Large" 
                ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
           </td>
       </tr>
       <tr>
        <td align="left" class="auto-style1"><asp:Label ID="Label8" runat="server" Text="Gender:" Font-Size="Large"></asp:Label></td>
        <td align="left" class="auto-style2">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                RepeatDirection="Horizontal">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </td>
       </tr>
       <tr>
        <td align="left" class="style17"><asp:Label ID="Label9" runat="server" Text="Country" Font-Size="Large"></asp:Label></td>
        <td align="left" class="style18">
            <asp:DropDownList ID="DropDownList2" runat="server" Height="32px" Width="192px">
                <asp:ListItem>Afghanistan</asp:ListItem>
                <asp:ListItem>Armenia</asp:ListItem>
                <asp:ListItem>Australia</asp:ListItem>
                <asp:ListItem>Bahrain</asp:ListItem>
                <asp:ListItem>Bangladesh</asp:ListItem>
                <asp:ListItem>Belgium</asp:ListItem>
                <asp:ListItem>Belize</asp:ListItem>
                <asp:ListItem>Bhutan</asp:ListItem>
                <asp:ListItem>Bolivia</asp:ListItem>
                <asp:ListItem>Botswana</asp:ListItem>
                <asp:ListItem>Brazil</asp:ListItem>
                <asp:ListItem>Bulgaria</asp:ListItem>
                <asp:ListItem>Burundi</asp:ListItem>
                <asp:ListItem>Cambodia</asp:ListItem>
                <asp:ListItem>Canada</asp:ListItem>
                <asp:ListItem>China</asp:ListItem>
                <asp:ListItem>Colombia</asp:ListItem>
                <asp:ListItem>Cuba</asp:ListItem>
                <asp:ListItem>Denmark</asp:ListItem>
                <asp:ListItem>Dominica</asp:ListItem>
                <asp:ListItem>Egypt</asp:ListItem>
                <asp:ListItem>Eritrea</asp:ListItem>
                <asp:ListItem>Finland</asp:ListItem>
                <asp:ListItem>France</asp:ListItem>
                <asp:ListItem>Georgia</asp:ListItem>
                <asp:ListItem>Germany</asp:ListItem>
                <asp:ListItem>Greece</asp:ListItem>
                <asp:ListItem>Guyana</asp:ListItem>
                <asp:ListItem>Hungary</asp:ListItem>
                <asp:ListItem>Iceland</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>Indonesia</asp:ListItem>
                <asp:ListItem>Iran</asp:ListItem>
                <asp:ListItem>Iraq</asp:ListItem>
                <asp:ListItem>Israel</asp:ListItem>
                <asp:ListItem>Italy</asp:ListItem>
                <asp:ListItem>Japan</asp:ListItem>
                <asp:ListItem>Jordan</asp:ListItem>
                <asp:ListItem>Kenya</asp:ListItem>
                <asp:ListItem>Kiribati</asp:ListItem>
                <asp:ListItem>Korea, North</asp:ListItem>
                <asp:ListItem>Korea, South</asp:ListItem>
                <asp:ListItem>Kuwait</asp:ListItem>
                <asp:ListItem>Liberia</asp:ListItem>
                <asp:ListItem>Libya</asp:ListItem>
                <asp:ListItem>Luxembourg</asp:ListItem>
                <asp:ListItem>Macedonia</asp:ListItem>
                <asp:ListItem>Malawi</asp:ListItem>
                <asp:ListItem>Malaysia</asp:ListItem>
                <asp:ListItem>Maldives</asp:ListItem>
                <asp:ListItem>Mexico</asp:ListItem>
                <asp:ListItem>Myanmar</asp:ListItem>
                <asp:ListItem>Namibia</asp:ListItem>
                <asp:ListItem>Nepal</asp:ListItem>
                <asp:ListItem>Netherlands</asp:ListItem>
                <asp:ListItem>New Zealand</asp:ListItem>
                <asp:ListItem>Nigeria</asp:ListItem>
                <asp:ListItem>Norway</asp:ListItem>
                <asp:ListItem>Oman</asp:ListItem>
                <asp:ListItem>Pakistan</asp:ListItem>
                <asp:ListItem>Paraguay</asp:ListItem>
                <asp:ListItem>Philippines</asp:ListItem>
                <asp:ListItem>Poland</asp:ListItem>
                <asp:ListItem>Portugal</asp:ListItem>
                <asp:ListItem>Qatar</asp:ListItem>
                <asp:ListItem>Russia</asp:ListItem>
                <asp:ListItem>San Marino</asp:ListItem>
                <asp:ListItem>Saudi Arabia</asp:ListItem>
                <asp:ListItem>Serbia</asp:ListItem>
                <asp:ListItem>Singapore</asp:ListItem>
                <asp:ListItem>Somalia</asp:ListItem>
                <asp:ListItem>South Africa</asp:ListItem>
                <asp:ListItem>Spain</asp:ListItem>
                <asp:ListItem>Sri Lanka</asp:ListItem>
                <asp:ListItem>Swaziland</asp:ListItem>
                <asp:ListItem>Taiwan</asp:ListItem>
                <asp:ListItem>Tunisia</asp:ListItem>
                <asp:ListItem>Turkey</asp:ListItem>
                <asp:ListItem>Ukraine</asp:ListItem>
                <asp:ListItem>United Kingdom</asp:ListItem>
                <asp:ListItem>United States</asp:ListItem>
                <asp:ListItem>Vatican City</asp:ListItem>
                <asp:ListItem>Vietnam</asp:ListItem>
                <asp:ListItem>Yemen</asp:ListItem>
                <asp:ListItem>Zambia</asp:ListItem>
                <asp:ListItem>Zimbabwe</asp:ListItem>
            </asp:DropDownList>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="DropDownList2" ErrorMessage="Required" Font-Size="Large" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
       </tr>
       <tr>
        <td align="left" class="style16"><asp:Label ID="Label10" runat="server" Text="Bio:" Font-Size="Large"></asp:Label></td>
        <td align="left"><asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" 
                Width="200px"></asp:TextBox></td>
       </tr>
       <tr>
        <td align="left" class="style16"><asp:Label ID="Label11" runat="server" Text="Do you take orders?" Font-Size="Large"></asp:Label></td>
        <td align="left">
            
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                <asp:ListItem Text="No" Value="No"></asp:ListItem>
            </asp:RadioButtonList>
        </td>
       </tr>
      </table>
      </asp:Panel>
        <asp:Panel ID="EventPanel" runat="server"> 
      <table align="center" style="height: 158px; width: 600px">
       <tr>
        <td align="left" class="style13"><asp:Label ID="Label12" runat="server" Text="Your Speciality:" Font-Size="Large"></asp:Label></td>
        <td align="left"><asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="Required" Font-Size="Large" 
                ForeColor="Red"></asp:RequiredFieldValidator>
           </td>
       </tr>
       <tr>
        <td align="left" class="style13"><asp:Label ID="Label13" runat="server" Text="Menus you take for order:" Font-Size="Large"></asp:Label></td>
        <td align="left"><asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="Required" Font-Size="Large" 
                ForeColor="Red"></asp:RequiredFieldValidator>
           </td>   
       </tr>
       <tr>
        <td align="left" class="style13"><asp:Label ID="Label14" runat="server" Text="Your Food Price:" Font-Size="Large"></asp:Label></td>
        <td align="left"><asp:TextBox ID="TextBox7" runat="server" Width="201px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBox7" ErrorMessage="Required" Font-Size="Large" 
                ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;</td>
       </tr>
      </table>
      </asp:Panel>
        <asp:Panel ID="UserConfirmPanel" runat="server"> 
      <table align="center" style="height: 158px; width: 599px">
       <tr>
        <td align="left" class="style14"><asp:Label ID="Label15" runat="server" Text="Username:" Font-Size="Large"></asp:Label></td>
        <td align="left"><asp:TextBox ID="TextBox8" runat="server" Width="200px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TextBox8" ErrorMessage="Required" Font-Size="Large" 
                ForeColor="Red"></asp:RequiredFieldValidator>
           </td>
      </tr>
      <tr>
       <td align="left" class="style19"><asp:Label ID="Label16" runat="server" Text="Password:" Font-Size="Large"></asp:Label></td>
       <td align="left" class="style20"><asp:TextBox ID="TextBox9" runat="server" 
               Width="200px" TextMode="Password"></asp:TextBox>&nbsp; 
           <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox9" ErrorMessage="Required" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
          </td>
      </tr>
      <tr>
       <td align="left" class="style14"><asp:Label ID="Label17" runat="server" Text="Confirm Password:" Font-Size="Large"></asp:Label></td>
       <td align="left"><asp:TextBox ID="TextBox10" runat="server" Width="200px" 
               TextMode="Password"></asp:TextBox>&nbsp;<asp:CompareValidator 
               ID="CompareValidator1" runat="server" ControlToCompare="TextBox9" 
               ControlToValidate="TextBox10" ErrorMessage="Password does not match" 
               Font-Size="Large" ForeColor="Red"></asp:CompareValidator>
          </td>
      </tr>
      </table>
      </asp:Panel>
        <asp:Panel ID="HotelPanel" runat="server">  
      <table align="center" style="height: 158px; width: 598px">
       <tr>
        <td colspan="2" align="center"><asp:Label ID="Label18" runat="server" Text="Hotel SignUp" 
                Font-Bold="True" Font-Size="Large"></asp:Label></td>
       </tr>
          <tr>
              <td><asp:Label ID="Label28" runat="server" Text="Id" Visible="false"></asp:Label></td>
              <td><asp:Label ID="Label29" runat="server" Text=""></asp:Label></td>
          </tr>
         <tr>
                <td align="left" class="style15"><asp:Label ID="Label19" runat="server" Text="Name:" Font-Size="Large"></asp:Label></td>
                <td align="left"><asp:TextBox ID="TextBox11" runat="server" Width="200px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox11" ErrorMessage="Required" Font-Size="Large" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>   
            </tr>
            <tr>
                <td align="left" class="style15"><asp:Label ID="Label20" runat="server" Text="Address:" Font-Size="Large"></asp:Label></td>
                <td align="left">
                    <asp:TextBox ID="TextBox12" runat="server" TextMode="MultiLine" 
                        Width="200px"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox12" 
                        ErrorMessage="Required" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="left" class="style15"><asp:Label ID="Label21" runat="server" Text="Map Link:" Font-Size="Large"></asp:Label></td>
                <td align="left"><asp:TextBox ID="TextBox13" runat="server" Width="200px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ErrorMessage="Required" Font-Size="Large" ForeColor="Red" 
                        ControlToValidate="TextBox13"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="left" class="style15"><asp:Label ID="Label22" runat="server" Text="Bio:" Font-Size="Large"></asp:Label></td>
                <td align="left">
                    <asp:TextBox ID="TextBox14" runat="server" TextMode="MultiLine" 
                        Width="200px"></asp:TextBox></td>
            </tr>
      </table>
      </asp:Panel>
        <asp:Panel ID="HotelConfirmPanel" runat="server">
 <table align="center" style="height: 158px; width: 596px">
        <tr>
         <td align="left" class="style14"><asp:Label ID="Label23" runat="server" Text="Username:" Font-Size="Large"></asp:Label></td>
         <td align="left"><asp:TextBox ID="TextBox15" runat="server" Width="200px"></asp:TextBox>
             &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                 ControlToValidate="TextBox15" ErrorMessage="Required" Font-Size="Large" 
                 ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
         <td align="left" class="style14"><asp:Label ID="Label24" runat="server" Text="Password:" Font-Size="Large"></asp:Label></td>
         <td align="left"><asp:TextBox ID="TextBox16" runat="server" Width="200px" 
                 TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
         <td align="left" class="style14"><asp:Label ID="Label25" runat="server" Text="Confirm Password:" Font-Size="Large"></asp:Label></td>
         <td align="left"><asp:TextBox ID="TextBox17" runat="server" Width="200px" 
                 TextMode="Password"></asp:TextBox>&nbsp;<asp:CompareValidator 
                 ID="CompareValidator2" runat="server" ControlToCompare="TextBox16" 
                 ControlToValidate="TextBox17" ErrorMessage="Password does not match" 
                 Font-Size="Large" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        </table>
       </asp:Panel>
       <br />
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
            Font-Bold="True" Font-Size="Large" CausesValidation="False">Clear</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
            Font-Bold="True" Font-Size="Large">Submit</asp:LinkButton>
    </div>
    </form>
</body>
</html>
