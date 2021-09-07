<%@ Page Language="C#" AutoEventWireup="true" CodeFile="emailConfirmation.aspx.cs" Inherits="emailConfirmation" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>האתר של רג'י</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="Site.css" />
</head>
<body>
    <form id="form1" runat="server">
        <% callLogout();  %>
        <center>
            <div class="topnav" id="myTopnav">
                <% callMenu(); %>
            </div>
            <script src="Scripts/slider_bar.js"></script>
            <br>
            <br>
            <h1 dir="rtl">אימות כתובת מייל</h1>
            <div class="card">
                <div class="container">
                    <center>
                        <asp:Label ID="Label1" runat="server" Text="נשלח לך הודעת אימות למייל"></asp:Label>
                        <br>
                        <br>
                        <asp:Button CssClass="btnSubmit" ID="Button1" runat="server" Text="שלח לי אימות לאימייל שוב" OnClick="Button1_Click" />
                    </center>
                </div>
            </div>
            <div class="footer">
            </div>
        </center>
    </form>
</body>
</html>
