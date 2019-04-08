<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Ticketing.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
 <body>
 <form id="form1" runat="server">
         
         <h2 style="text-align: center">Login</h2>
    
         <p style="text-align: center">
            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Small"></asp:Label>
         </p>
         <table class="auto-style1" style="margin-left: auto; margin-right: auto;">
             <tr>
                 <td class="auto-style3">User Name</td>
                 <td class="auto-style2">
            <asp:TextBox ID="tbUsername" runat="server" MaxLength="50" Width="280px"></asp:TextBox>
                 </td>
                 <td>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbUsername" ErrorMessage="Can't be empty!!"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style3">Password</td>
                 <td class="auto-style2">
            <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" MaxLength="50" Width="280px"></asp:TextBox>
                 </td>
                 <td>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbPassword" ErrorMessage="Can't be empty!!"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style3">&nbsp;</td>
                 <td class="auto-style2">
                     <asp:CheckBox ID="remember" runat="server" Text=" Remember me" />
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style3">&nbsp;</td>
                 <td class="auto-style2">
            <asp:Button ID="LoginButton" runat="server" Text="Login" Font-Size="Small" Width="126px" OnClick="LoginButton_Click1" />
                 </td>
                 <td>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RegisterForm.aspx">Create an Account</asp:HyperLink>
                 </td>
             </tr>
         </table> 

    </form>
    </body>
</html>
