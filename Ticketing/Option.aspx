<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Option.aspx.cs" Inherits="Ticketing.Option" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 226px;
            background-color: #FFFFCC;
        }
        .auto-style3 {
            width: 207px;
        }
        .auto-style4 {
            width: 193px;
        }
        .auto-style5 {
            width: 317px;
        }
        .auto-style6 {
            width: 35%;
            height: 133px;
        }
        .auto-style7 {
            width: 330px;
            table-layout: auto;
        }
        .auto-style8 {
            width: 330px;
            height: 57px;
            table-layout: auto;
        }
        .auto-style9 {
            height: 57px;
            width: 649px;
            table-layout: auto;
        }
        .auto-style10 {
            width: 649px;
            table-layout: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="table-layout: auto; border-collapse: collapse">
        <div style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bold; font-style: normal; color: #0080FF; text-align: center;">
            <br />
            Welcome to ViewCart<br />
&nbsp;<table class="auto-style6" style="border: thin solid #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: normal; margin-right: auto; margin-left: auto; color: #000000; text-align: center;">
                <tr>
                    <td class="auto-style8" style="padding: 0px; border-collapse: collapse;">Movie </td>
                    <td class="auto-style9" style="padding: 0px; border-collapse: collapse;">
                        <asp:Label ID="lb_movie" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="padding: 0px; border-collapse: collapse;">Date &amp; Time</td>
                    <td class="auto-style10" style="padding: 0px; border-collapse: collapse;">
                        <asp:Label ID="lb_date" runat="server" Text="Label"></asp:Label>
&nbsp;<asp:Label ID="lb_time" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Select Options"></asp:Label>
        </p>
        <table class="auto-style1" style="width: auto">
            <tr>
                <td class="auto-style5" style="text-align: center; font-size: large;">
                    <asp:Label ID="Label2" runat="server" Text="Tickets"></asp:Label>
                </td>
                <td class="auto-style3" style="text-align: center; font-size: large;">
                    <asp:Label ID="Label3" runat="server" Text="Cost"></asp:Label>
                </td>
                <td class="auto-style4" style="text-align: center; font-size: large;">
                    <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
                </td>
                <td style="text-align: center; font-size: large;">
                    <asp:Label ID="Label5" runat="server" Text="Subtotal"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:CheckBox ID="chkGeneral" runat="server" Text="General Admission" />
                </td>
                <td class="auto-style3" style="text-align: right">
                    <asp:Label ID="Label6" runat="server" Text="$ 15.00"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="qGeneral" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="subGeneral" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:CheckBox ID="chkChild" runat="server" Text="Children (3-13 years old)" />
                </td>
                <td class="auto-style3" style="text-align: right">
                    <asp:Label ID="Label7" runat="server" Text="$ 5.00"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="qChild" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="subChild" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:CheckBox ID="chkSenior" runat="server" Text=" Senior Citizen(" />
                    56&amp; over)</td>
                <td class="auto-style3" style="text-align: right">
                    <asp:Label ID="Label8" runat="server" Text="$ 5.00"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="qSenior" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="subSenior" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:CheckBox ID="chkTuesday" runat="server" Text="Tuesday Special" />
                </td>
                <td class="auto-style3" style="text-align: right">
                    <asp:Label ID="Label9" runat="server" Text="$ 5.00"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="qTuesday" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="subTuesday" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p style="background-color: #FFFFFF; border-style: double; border-color: #FFFFFF">
            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#CC0000" Text="Total Cost (including Tax 13%)"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" Text="$"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" Height="46px"></asp:TextBox>
        </p>
        <p>
            If you have an account,&nbsp; you will get 20% Dicounts : Have <asp:HyperLink ID="link_login" runat="server" NavigateUrl="~/Login.aspx">an Account!!</asp:HyperLink>
&nbsp;&nbsp;&nbsp; or Create
            <asp:HyperLink ID="link_register" runat="server" NavigateUrl="~/RegisterForm.aspx">an Account</asp:HyperLink>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Submit" Width="175px" />
        </p>
        <p>
            &nbsp;</p>
        <div>
        </div>
    </form>
</body>
</html>
