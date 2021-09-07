<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forget.aspx.cs" Inherits="forget" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>האתר של רג'י</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="Site.css" />
</head>
<body>
    <form id="form1" runat="server">
        <%callLogout();   %>
        <div class="topnav" id="myTopnav">
            <%   callMenu(); %>
        </div>
        <script src="Scripts/slider_bar.js"></script>
        <center>
            <br>
            <br>
            <h1>שכחתי סיסמא</h1>
            <div class="card">
                <div class="container">
                    <table>
                        <tr>
                            <th>
                                <label dir="rtl" for="uname"><b dir="rtl">אימייל</b></label>
                            </th>
                            <th>
                                <asp:TextBox ID="TextBox1" type="text" placeholder="האימייל שלך הוא ..." name="uname" required="true" runat="server" />
                            </th>
                        </tr>
                        <tr>
                            <th colspan="2">
                                <br>
                                <asp:Button CssClass="btnSubmit" ID="Button1" runat="server" Text="שחזר סיסמה" OnClick="Button1_Click"></asp:Button>
                                <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red" />
                            </th>
                        </tr>
                    </table>
                </div>
            </div>
        </center>
        <div class="footer">
        </div>
    </form>
</body>
</html>
