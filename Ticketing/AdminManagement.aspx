<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminManagement.aspx.cs" Inherits="Ticketing.AdminManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 53%;
            right: auto;
            left: auto;
        }
        .auto-style2 {
            width: 242px;
        }
        .auto-style3 {
            width: 216px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">           
        <div>
         <h2 style="text-align: center">Admin Management&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h2>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ID
                        <asp:TextBox ID="tbid" runat="server" Width="78px"></asp:TextBox>
                    &nbsp; =&gt;&nbsp;
            <asp:Button ID="EditBtn" runat="server" Text="Edit" Width="119px" OnClick="EditBtn_Click"  />
                    &nbsp;&nbsp;&nbsp; <asp:Button ID="del_btn" runat="server" Text="Delete" Width="105px" OnClick="del_btn_Click" />
                    &nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="refresh_btn" runat="server"  Text="Refresh" OnClick="refresh_btn_Click1" />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        </div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />

        <div class="row color-table">
            <asp:Button ID="add_btn" runat="server" Text="Add New" Width="125px" OnClick="add_btn_Click1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMessage" runat="server"></asp:Label>

        </div>
&nbsp;&nbsp;
        <table class="auto-style1" style="border-collapse: collapse; ">
                <tr>
                    <td class="auto-style2">User Name:&nbsp;&nbsp; </td>
                    <td class="auto-style3"> <asp:TextBox ID="tbUsername" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbUsername" ErrorMessage="Can't be empty!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
        <p>
            Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
                    </td>
                    <td class="auto-style3">
            <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbPassword" ErrorMessage="Can't be empty!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Confirm Password</td>
                    <td class="auto-style3"> 
                        <asp:TextBox ID="passConfirm" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbPassword" ControlToValidate="passConfirm" ErrorMessage="CompareValidator"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style3"> <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Full Name:&nbsp; </td>
                    <td class="auto-style3">
             <asp:TextBox ID="tbFullname" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbFullname" ErrorMessage="Can't be empty!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style3">
            <asp:TextBox ID="tbAddress" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Phone :&nbsp;&nbsp; </td>
                    <td class="auto-style3">
            <asp:TextBox ID="tbPhone" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Age:&nbsp; </td>
                    <td class="auto-style3">
            <asp:TextBox ID="tbAge" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbAge" ErrorMessage="Input your age"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                </table>
    </form>
</body>
</html>
