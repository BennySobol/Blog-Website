<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logIn.aspx.cs" Inherits="login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>האתר של רג'י</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="Site.css" />
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <% callLogout(); %>
            <div class="topnav" id="myTopnav">
                <% callMenu(); %>
            </div>
            <script src="Scripts/slider_bar.js"></script>
            <br>
            <br>
            <h1>התחבר</h1>
            <div class="card">
                <center>
                    <img src="DynamicData/Content/Images/login.png" alt="Avatar" class="avatar" />
                </center>
                <center>
                    <div class="container">
                        <center>
                            <table>
                                <tr>
                                    <th>
                                        <label dir="rtl" for="uname"><b dir="rtl">שם מישתמש</b></label>
                                    </th>
                                    <th>
                                        <asp:TextBox ID="TextBox1" runat="server" placeholder="אימייל..." MaxLength="50" TextMode="email" required></asp:TextBox>
                                        <br>
                                    </th>
                                </tr>
                                <tr>
                                    <th>
                                        <label dir="rtl" for="psw"><b dir="rtl">סיסמה</b></label>
                                    </th>
                                    <th>
                                        <asp:TextBox ID="TextBox2" runat="server" placeholder="סיסמה..." MaxLength="50" TextMode="password" required></asp:TextBox>
                                        <br>
                                    </th>
                                </tr>
                                <tr>
                                    <th colspan="2">
                                        <br>
                                        <asp:CheckBox ID="CheckBox1" runat="server" Font-Size="Large" Text=" זכור אותי"></asp:CheckBox>
                                    </th>
                                </tr>
                                <tr>
                                    <th>
                                        <asp:Button CssClass="btnSubmit" ID="Button1" runat="server" Text="התחבר" OnClick="Button1_Click"></asp:Button>
                                    </th>
                                    <th>
                                        <asp:Label ID="Label1" runat="server" ForeColor="Red" Text=""></asp:Label>
                                    </th>
                                </tr>
                            </table>
                    </div>
                </center>
                <div class="footer">
                    <a></a>
                    <span dir="rtl" class="psw">אני לא  <a href="newMember.aspx">רשומ/ה </a></span>
                    <span dir="rtl" class="ps">שכתי <a href="forget.aspx">סיסמה </a></span>
                </div>
            </div>
            <div class="footer">
            </div>
        </center>
    </form>
</body>
</html>
