<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Movies.aspx.cs" Inherits="Ticketing.eco_start" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
  <title>eco Romance</title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script type="text/javascript"></script>
    <style type="text/css">
        .auto-style1 {
            width: 372px;
        }
        .auto-style2 {
            width: 386px;
        }
        .auto-style3 {
            margin-top: 20px;
        }
        .auto-style4 {
            width: 369px;
        }
    </style>
    </head>

<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <ul class="navbar-nav">           
          <asp:Label ID="home_btn" runat="server" Font-Bold="True" Font-Italic="True" 
                  Font-Size="Large" ForeColor="White" Text="Movie Ticketing System "></asp:Label>  
              &nbsp;&nbsp;                        
          <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="White" OnClick="LinkButton4_Click">LinkButton</asp:LinkButton>
            <li>&nbsp;&nbsp;&nbsp; </li>
          <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="White">LinkButton</asp:LinkButton>          
            <li>&nbsp;&nbsp;&nbsp; </li>
          <asp:LinkButton ID="login_lbn" runat="server" ForeColor="White" OnClick="login_lbn_Click" PostBackUrl="~/Login.aspx">Login</asp:LinkButton>         
            <li>&nbsp;&nbsp;&nbsp; </li>
          <asp:LinkButton ID="sign_lbl" runat="server" ForeColor="White" PostBackUrl="~/RegisterForm.aspx">SignUp</asp:LinkButton>
            <li>&nbsp;&nbsp;&nbsp; </li>
          <asp:TextBox ID="tbSearch" runat="server"></asp:TextBox>
            <li>&nbsp; </li>
          <asp:Button ID="search_btn" runat="server" BackColor="Gray" ForeColor="White" Height="38px" OnClick="Button1_Click" Text="Search" />
          
        </ul>
    </nav>

    <div>

        <br />
        <div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="SHOW TIME By DATE"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="datePick" runat="server" Font-Size="Medium" OnSelectedIndexChanged="datePick_SelectedIndexChanged" Width="260px">
            </asp:DropDownList>
            <br />

            <table class="w-100">
                <tr>
                    <td class="auto-style1">
                        <asp:Image ID="Image1" runat="server" Height="350px" Width="250px" ImageUrl="~/images/captainmarvelbrielarson.jpg" />
                    </td>
                    <td class="auto-style2">
                        <asp:Image ID="Image2" runat="server" Height="350px" Width="250px" ImageUrl="~/images/fivefeetApart.jpg" />
                    </td>
                    <td class="auto-style4">
                        <asp:Image ID="Image3" runat="server" CssClass="auto-style3" Height="350px" Width="250px" ImageUrl="~/images/dragon3.jpg" />
                    </td>
                    <td>
                        <asp:Image ID="Image4" runat="server" Height="350px" Width="250px" ImageUrl="~/images/romantic.jpg" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="Button1" runat="server" Text="Button" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button2" runat="server" Text="Button" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="Button3" runat="server" Text="Button" />
                    </td>
                    <td>
                        <asp:Button ID="Button4" runat="server" Text="Button" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

        </div>
        <br />
        <br />
        <br />
        <br />
        

    </div>
    </form>
</body>
</html>
