<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="AS_Assignment_End.Registration" ValidateRequest="false" %>

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
            width: 191px;
        }
    </style>

    <script type="text/javascript">

        function Validatepass2() {
            var a = document.getElementById('<%=tbPassword.ClientID %>').value;
            var b = document.getElementById('<%=tbCfmPassword.ClientID %>').value;

            if (a == b) {
                document.getElementById("lbCfmPwdChecker").innerHTML = "OK";
                document.getElementById("lbCfmPwdChecker").style.color = "Blue";
                return true;
            }
            else {
                document.getElementById("lbCfmPwdChecker").innerHTML = "Password is not the same!";
                document.getElementById("lbCfmPwdChecker").style.color = "Red";
                return false;
            }

        }


        function validate() {
            var str = document.getElementById('<%=tbPassword.ClientID %>').value;

            if (str.length < 8) {
                document.getElementById("lbPwdChecker").innerHTML = "Password length must be at least 8 characters";
                document.getElementById("lbPwdChecker").style.color = "Red";
                return ("too_short");
            }

            else if (str.search(/[0-9]/) == -1) {
                document.getElementById("lbPwdChecker").innerHTML = "Password require at least 1 number";
                document.getElementById("lbPwdChecker").style.color = "Red";
                return ("no_number")
            }

            else if (str.search(/[a-z]/) == -1) {
                document.getElementById("lbPwdChecker").innerHTML = "Password require at least 1 lowercase letter";
                document.getElementById("lbPwdChecker").style.color = "Red";
                return ("no_number");
            }

            else if (str.search(/[A-Z]/) == -1) {
                document.getElementById("lbPwdChecker").innerHTML = "Password require at least 1 uppercase letter";
                document.getElementById("lbPwdChecker").style.color = "Red";
                return ("no_number");
            }

            else if (str.search(/[^a-zA-Z0-9]/) == -1) {
                document.getElementById("lbPwdChecker").innerHTML = "Password require at least 1 special character";
                document.getElementById("lbPwdChecker").style.color = "Red";
                return ("no_number");
            }

            document.getElementById("lbPwdChecker").innerHTML = "Excellent!";
            document.getElementById("lbPwdChecker").style.color = "Blue";

        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset>
                <legend>Account Registration</legend>
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbUserid" runat="server" Text="Email(UserID)"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbUserId" runat="server" Height="25px" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    First Name</td>
                <td>
                    <asp:TextBox ID="tbFirstname" runat="server" Height="25px" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Last Name</td>
                <td>
                    <asp:TextBox ID="tbLastname" runat="server" Height="25px" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Date of Birth</td>
                <td>
                    <asp:TextBox ID="tbDob" runat="server" Height="25px" Width="260px" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbPassword" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbPassword" runat="server" Height="25px" Width="260px" TextMode="Password" onkeyup="javascript:validate()"></asp:TextBox>
                    <asp:Button ID="btnCheckpwd" runat="server" Text="Check Strength of password" OnClick="btnCheckpwd_Click" Height="37px" Width="180px"/>
                    <asp:Label ID="lbPwdChecker" runat="server" Text="Password Checker"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbCfmPassword" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbCfmPassword" runat="server" Height="25px" Width="260px" TextMode="Password" onkeyup="javascript:Validatepass2()"></asp:TextBox>
                    <asp:Label ID="lbCfmPwdChecker" runat="server" Text="Password Checker"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Credit Card Number</td>
                <td>
                    <asp:TextBox ID="tbCardno" runat="server" Height="25px" Width="260px" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Card
                    CVV</td>
                <td>
                    <asp:TextBox ID="tbCvv" runat="server" Height="25px" Width="260px" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbMobileno" runat="server" Text="Mobile (+65)"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbMobile" runat="server" Height="25px" Width="260px" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" Height="37px" Width="260px"/>
                </td>
            </tr>
        </table>

                <input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response"/>
        <p>
            <asp:Label ID="lbComments" runat="server" Text="Comments"></asp:Label>
                </p>
                <p>

                <asp:Label ID="lb_gScore" runat="server"></asp:Label>
                </p>
                <p>
                    &nbsp;</p>
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
