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
        section{
           
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
            width: 250px;
            height: 400px;
        }
        
        .auto-style3 {
            width: 26%;
        }
        .auto-style4 {
            width: 250px;
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
                        <a class="nav-link" href="Option.aspx">Price</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Aboout</a>
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
                                    <asp:DropDownList ID="movie_ddl" runat="server" AutoPostBack="True">
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
                                <td>
                                    <asp:DropDownList ID="date_ddl" runat="server" AutoPostBack="True" OnSelectedIndexChanged="date_ddl_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">Select Time</td>
                                <td>
                                    <asp:DropDownList ID="time_ddl" runat="server" AutoPostBack="True">
                                        <asp:ListItem>choose Time</asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <input id="Submit1" type="submit" value="submit" /></td>
                                <td>
                                    <input id="Reset1" type="reset" value="reset" /></td>
                            </tr>
                        </table>
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <table style="text-align: center">
                            <tr>
                                <td style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; color: #0080FF; font-weight: normal">Coming SOON</td>
                            </tr>
                            <tr>
                                <td>
                                    <img alt="Avangers Endgame" class="auto-style9" src="images/sm_sm_avangersEndGame.jpg" style="text-align: center" /></td>
                            </tr>
                        </table>
                 </article>
                 <section class="w3-container">
                    <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; text-align: center;">&nbsp;</h1>
                     <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; text-align: center;">Now Playing</h1>
                    <p>
                        <table>
                            <tr>
                                <td class="auto-style4">
                                    <img alt="Green Book" class="auto-style11" src="images/GreenBook.png" /></td>
                                <td class="auto-style5">
                                    <img alt="Five Feet Apart" class="auto-style11" src="images/fivefeetApart.png" /></td>
                                <td style="margin: auto" class="auto-style10">
                                    <img alt="Cruel intentions" class="auto-style2" src="images/cruel.png" /></td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <img alt="Dragon3" class="auto-style11" src="images/dragon3.png" /></td>
                                <td class="auto-style5">
                                    <img alt="Captain Marvel" class="auto-style11" src="images/captainmarvelbrielarson.png" /></td>
                                <td style="margin: auto" class="auto-style10">
                                    <img alt="Alita" class="auto-style2" src="images/alita.png" /></td>
                            </tr>
                        </table>
                    </p>                   
                </section>
            </div>
        <footer class="navbar navbar-expand-sm bg-primary navbar-dark sticky-bottom">
            <p style="color: #FFFFFF; font-style: italic;">           
                Contact information: <a href="mailto:someone@example.com">info@ticketing.com</a>.
            </p>
        </footer>
    </form>
</body>
</html>
