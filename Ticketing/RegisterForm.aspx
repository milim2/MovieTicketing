<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="Ticketing.RegisterForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create a new account</title>
    <style type="text/css">
        .auto-style1 {
            width: 800px;
            border-style: solid;
            border-width: 1px;
            background-color: #BFE9F4;
        }
        .auto-style2 {
            width: 202px;
        }
        .auto-style3 {
            width: 248px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
         <h2 style="text-align: center">Create a New User Account</h2>
            <p style="text-align: center">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </p>
            <table align="center" class="auto-style1" style="border-color: #40BBDF">
                <tr>
                    <td class="auto-style2">User Name</td>
                    <td class="auto-style3">
            <asp:TextBox ID="tbUserName" runat="server" MaxLength="50" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbUserName" ErrorMessage="User name can't be empty" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                    <td class="auto-style3">
            <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" MaxLength="50" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbPassword" ErrorMessage="Password can't be empty" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email</td>
                    <td class="auto-style3">
            <asp:TextBox ID="tbEmail" runat="server" MaxLength="50" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email can't be empty" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Full Name</td>
                    <td class="auto-style3">
            <asp:TextBox ID="tbFullname" runat="server" MaxLength="50" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Address</td>
                    <td class="auto-style3">
            <asp:TextBox ID="tbAddress" runat="server" MaxLength="50" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Phone</td>
                    <td class="auto-style3">
            <asp:TextBox ID="tbPhone" runat="server" MaxLength="50" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Age</td>
                    <td class="auto-style3">
            <asp:TextBox ID="tbAge" runat="server" MaxLength="50" Width="200px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
            <asp:Button ID="btnSign" runat="server" OnClick="btnSign_Click" Text="Sign Up" />
                        </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            </div>
    <p>
        &nbsp;</p>
    </form>
    </body>
</html>
