<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AS_Assignment_End.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://www.google.com/recaptcha/api.js?render=6LfdH0caAAAAADl5iOMkmji1LIDcZUXciUlSyJH7"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset>
                <legend>Login</legend>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="lbUserId" runat="server" Text="User ID/Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbUserId" runat="server" Height="25px" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbPassword" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="tbPassword" runat="server" Height="25px" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="37px" Width="260px" OnClick="btnSubmit_Click" />
                </td>
            </tr>
        </table>
                <input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response"/>

                <asp:Label ID="lb_gScore" runat="server"></asp:Label>
                <br />
                <br />
                    <asp:Label ID="lbMessage" runat="server" Text="Error message here"></asp:Label>
                <br />
                </fieldset>
        </div>
    </form>

    <script>
        grecaptcha.ready(function () {
            grecaptcha.execute('6LfdH0caAAAAADl5iOMkmji1LIDcZUXciUlSyJH7', { action: 'Login' }).then(function (token) {
                document.getElementById("g-recaptcha-response").value = token;
            });
        });
    </script>

</body>
</html>
