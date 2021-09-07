<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edit.aspx.cs" Inherits="edit" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>האתר של רג'י</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="Site.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%  callLogout();  %>
            <center>
                <div class="topnav" id="myTopnav">
                    <%  callMenu();  %>
                </div>
                <script src="Scripts/slider_bar.js"></script>
                <br>
                <br>
                <h1>ערוך</h1>
                <div class="card">
                    <center>
                        <div class="container">
                            <center>
                                <table>
                                    <tr>
                                        <th><b dir="rtl">שנה אימייל</b></th>
                                        <th>
                                            <asp:TextBox ID="TextBox1" Type="Email" placeholder="הכנס כתובת אימייל חדשה" MaxLength="40" runat="server" />
                                        </th>
                                    </tr>
                                    <tr>
                                        <th><b dir="rtl">שנה סיסמה</b></th>
                                        <th>
                                            <asp:TextBox ID="TextBox2" Type="text" placeholder=" הכנס סיסמה חדשה" MaxLength="40" runat="server" />
                                        </th>
                                    </tr>
                                    <tr>
                                        <th><b dir="rtl">שנה שם</b></th>
                                        <th>
                                            <asp:TextBox ID="TextBox3" Type="text" placeholder="הכנס שם חדש" MaxLength="40" runat="server" />
                                        </th>
                                    </tr>
                                    <tr>
                                        <th><b dir="rtl">שנה שם מישפחה</b></th>
                                        <th>
                                            <asp:TextBox ID="TextBox4" Type="text" placeholder="הכנס שם מישפחה חדש" MaxLength="40" runat="server" />
                                        </th>
                                    </tr>
                                    <tr>
                                        <th><b dir="rtl">שנה תאריך לידה</b></th>
                                        <th>
                                            <asp:TextBox ID="TextBox5" TextMode="date" placeholder="הכנס תאריך לידה חדש" MaxLength="40" runat="server" />
                                        </th>
                                    </tr>
                                    <tr>
                                        <th><b dir="rtl">שנה טלפון</b></th>
                                        <th>
                                            <asp:TextBox ID="TextBox6" Type="text" placeholder="הכנס טלפון חדש" MaxLength="40" runat="server"></asp:TextBox>
                                        </th>
                                    </tr>
                                </table>
                                <asp:Button CssClass="button" ID="Button1" runat="server" Text="עדכן" OnClick="Button1_Click"></asp:Button>
                                <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Red" Text=""></asp:Label>
                            </center>
                        </div>
                    </center>
                    <div class="footer"><a dir="rtl">חזור לעמוד <a href="AdminPage.aspx">הקודם </a></a></div>
                </div>
            </center>
            <div class="footer">
            </div>
        </div>
    </form>
</body>
</html>
