<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerFeedback.aspx.cs" Inherits="AS_Assignment_End.CustomerFeedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset>
                <legend>Customer Feedback</legend>
                <br />
                Your Feedback<br />
                <br />
                <asp:TextBox ID="tbComments" runat="server"  Height="36px" Width="440px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                <br />
                <br />
                <asp:Label ID="lbComments" runat="server" Text="Comments"></asp:Label>
        </fieldset>
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
