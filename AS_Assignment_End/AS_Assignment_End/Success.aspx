<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="AS_Assignment_End.Success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 145px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset>
                <legend>User Profile</legend>
        <div class="auto-style1">
            <br />
            User ID :
            <asp:Label ID="lbUserid" runat="server" Text="User id"></asp:Label>
            <br />
            <br />
            NRIC :
            <asp:Label ID="lbFirstname" runat="server" Text="First Name"></asp:Label>

            <br />
            <br />

            <asp:Button ID="btnLogout" runat="server" Text="Logout" visible="false" OnClick="btnLogout_Click"/>
        </div>
        </fieldset>
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
