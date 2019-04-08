<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Ticketing.Invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
 <body>
 <form id="form1" runat="server">
         
         <h2 style="text-align: center">CHECK OUT</h2>
    
         <p style="text-align: center">
             Payment :&nbsp; $
             <asp:Label ID="lbAmount" runat="server" Visible="False"></asp:Label>
         </p>
         <p style="text-align: center">
             <asp:Label ID="lbmsg" runat="server" Visible="False"></asp:Label>
         </p>
         <table class="auto-style1" style="margin-left: auto; margin-right: auto;">
             <tr>
                 <td class="auto-style3">Card Type </td>
                 <td class="auto-style2">
                     <asp:DropDownList ID="ddl_card" runat="server">
                         <asp:ListItem>Card Type</asp:ListItem>
                         <asp:ListItem>VISA</asp:ListItem>
                         <asp:ListItem>MASTER</asp:ListItem>
                     </asp:DropDownList>
                 </td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style3">Card Number </td>
                 <td class="auto-style2">
            <asp:TextBox ID="tbCardNum" runat="server" MaxLength="50" Width="280px"></asp:TextBox>
                 </td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style3">Expires</td>
                 <td class="auto-style2">
                     <asp:TextBox ID="tbMonth" runat="server" TextMode="Number" Width="65px"></asp:TextBox>
&nbsp;/
                     <asp:TextBox ID="tbYear" runat="server" TextMode="Number" Width="76px"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style3">Name on Card</td>
                 <td class="auto-style2">
                     <asp:TextBox ID="tbName" runat="server" TextMode="Number"></asp:TextBox>
                 </td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style3">&nbsp;</td>
                 <td class="auto-style2">
                     <asp:Button ID="btnOK" runat="server" OnClick="btnOK_Click" Text="OK" Width="94px" />
&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="btCancel" runat="server" Text="Cancel" />
                 </td>
                 <td>
                     &nbsp;</td>
             </tr>
         </table> 

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

    </form>
    </body>
</html>
