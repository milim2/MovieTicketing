<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Ticketing.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
        article {
            padding: 20px;
            width: 33%;
            height: auto;
            background-color: #f1f1f1;
        }

        /* Clear floats after the columns */
        section {
        }

        /* Style the footer */
        footer {
            padding: 10px;
            text-align: center;
            color: white;
        }

        /* Responsive layout */
        @media (max-width: 600px) {
            article {
                width: 100%;
                height: auto;
            }
        }

        .flex-container {
            display: flex;
        }

        .auto-style2 {
            width: 161px;
            height: 221px;
        }

        .auto-style3 {
            width: 30%;
        }

        .auto-style4 {
            width: 226px;
        }
        .auto-style5 {
            table-layout: auto;
            width: 198px;
            height: 308px;
        }
        .auto-style6 {
            height: 189px;
        }
        .auto-style7 {
            height: 288px;
        }
        .auto-style8 {
            height: 58px;
        }
        .auto-style9 {
            height: 4px;
        }
        .auto-style10 {
            table-layout: auto;
            width: 252px;
            height: 212px;
        }
        .auto-style11 {
            table-layout: auto;
            width: 184px;
            height: 221px;
        }
        .auto-style12 {
            table-layout: auto;
            width: 250px;
            height: 226px;
        }
        .auto-style13 {
            table-layout: auto;
            width: 175px;
            height: 248px;
        }
        .auto-style14 {
            table-layout: auto;
            width: 185px;
            height: 235px;
        }
        .auto-style15 {
            width: 168px;
            height: 233px;
        }
        .auto-style16 {
            table-layout: auto;
            width: 170px;
            height: 221px;
        }
        .auto-style17 {
            width: 591px;
            height: 530px;
            margin-right: 0px;
        }
        .auto-style18 {
            width: 226px;
            height: 243px;
        }
        .auto-style19 {
            table-layout: auto;
            width: 198px;
            height: 243px;
        }
        .auto-style20 {
            table-layout: auto;
            width: 252px;
            height: 243px;
        }
        .auto-style21 {
            left: 0px;
            top: -2px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <nav class="navbar navbar-expand-sm bg-primary navbar-dark sticky-top">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="Home.aspx"
                        style="font-size: large; font-style: oblique; font-weight: bold">Movie Ticketing Service</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Login.aspx">Login</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link">
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="logout_Click">Logout
                        </asp:LinkButton></a>                    
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Option.aspx">Price</a>
                </li>               
            </ul>
        </nav>

        <div class="flex-container">
            <article class="auto-style3">
                <h1 style="color: #0080FF; font-size: large; font-style: normal; text-align: center; font-weight: normal;">Ticket Booking</h1>
                <table class="auto-style7" style="margin-left: auto; margin-right: auto">
                    <tr>
                        <td class="auto-style8">Select Movie</td>
                        <td>
                            <asp:DropDownList ID="movie_ddl" runat="server"
                                AutoPostBack="True" Width="139px">
                                <asp:ListItem>Movies</asp:ListItem>
                                <asp:ListItem>Alita</asp:ListItem>
                                <asp:ListItem>Captain Marvel</asp:ListItem>
                                <asp:ListItem>Cruel Intentions</asp:ListItem>
                                <asp:ListItem>Daragon 3</asp:ListItem>
                                <asp:ListItem>Five Feet Apart</asp:ListItem>
                                <asp:ListItem>Green Book</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Select Date</td>
                        <td>&nbsp;<asp:TextBox ID="tbDate" runat="server"
                            TextMode="Date" Width="171px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Select Time</td>
                        <td>
                            <asp:DropDownList ID="ddl_time" runat="server">
                                <asp:ListItem>time</asp:ListItem>
                                <asp:ListItem>10:30</asp:ListItem>
                                <asp:ListItem>12:20</asp:ListItem>
                                <asp:ListItem>15:30</asp:ListItem>
                                <asp:ListItem>17:50</asp:ListItem>
                                <asp:ListItem>18:00</asp:ListItem>
                                <asp:ListItem>19:00</asp:ListItem>
                                <asp:ListItem>20:00</asp:ListItem>
                                <asp:ListItem>21:00</asp:ListItem>
                                <asp:ListItem>22:00</asp:ListItem>
                                <asp:ListItem>23:00</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:LinkButton ID="lbSubmit" runat="server" OnClick="lbSubmit_Click">Submit</asp:LinkButton>
                        </td>
                        <td>
                            <asp:Button ID="btn_reset" runat="server" Text="Reset" />
                        </td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <table style="text-align: center" class="auto-style12">
                            <tr>
                                <td style="font-family: 'Courier New', Courier, monospace; font-size: large; color: #0080FF; font-weight: bold; text-align: center;" class="auto-style9">Coming Soon</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    <asp:ImageButton ID="movieBtn" runat="server" Height="139px" ImageUrl="~/images/sm_sm_avangersEndGame.jpg" OnClick="ImageButton1_Click" Width="95px" />
                                    <br />
                                    <asp:Label ID="watch" runat="server" Text="Watching..."></asp:Label>
                                </td>
                            </tr>
                            </table>
            </article>
            <section class="w3-container">
                <h4 style="margin: 0px; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; text-align: right; font-weight: bold; color: #0080FF; background-color: #FFFFFF; font-style: italic;">&nbsp;<asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>
&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label></h4>
                <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; text-align: center; background-color: #FFFFFF; color: #0080FF; font-weight: bold; font-style: normal; text-decoration: blink;">
                    &nbsp;&nbsp;Now Playing</h1>

                <table style="border-collapse: collapse; text-align: center" class="auto-style17">
                    <tr>
                        <td class="auto-style18">
                            <img alt="Green Book" class="auto-style13" src="images/GreenBook.png" /></td>
                        <td class="auto-style19">
                            <img alt="Five Feet Apart" class="auto-style14" src="images/fivefeetApart.png" /></td>
                        <td style="margin: auto" class="auto-style20">
                            <img alt="Cruel intentions" class="auto-style15" src="images/cruel.png" /></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <img alt="Dragon3" class="auto-style16" src="images/dragon3.png" /></td>
                        <td class="auto-style5">
                            <img alt="Captain Marvel" class="auto-style11"
                                src="images/captainmarvelbrielarson.png" /></td>
                        <td style="margin: auto" class="auto-style10">
                            <img alt="Alita" class="auto-style2" src="images/alita.png" /></td>
                    </tr>
                </table>
            </section>
        </div>
        <footer class="auto-style21" style="text-align: center">
            <div style="color: #FFFFFF; font-style: italic;">
                Contact information: info@ticket.com
            </div>
        </footer>
            
    </form>
</body>
</html>
