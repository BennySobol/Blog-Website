<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

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
            <% callLogout();  %>
            <center>
                <div class="topnav" id="myTopnav">
                    <%  callMenu();  %>
                </div>
                <script src="Scripts/slider_bar.js"></script>
                <center>
                    <br>
                    <br>
                    <h1>צור קשר</h1>
                    <div class="card">
                        <h3 dir="rtl">רוצה ליצור איתנו קשר בזמנך?</h3>
                        <h3 dir="rtl">מוקד שירות הצרכנים שלנו עומד לרשותך בטלפון:</h3>
                        <a href="tel:1700707676">1-700-70-76-76</a>
                        <h3 dir="rtl">שעות פעילות המוקד:</h3>
                        <h3 dir="rtl">ימים א-ה בין השעות 9:00-17:00</h3>
                        <h3 dir="rtl">ניתן להשאיר הודעה טלפונית.</h3>
                        <h3 dir="rtl">השאר פרטים כדי שנוכל לחזור אלייך:</h3>
                    </div>
                </center>
                <center>
                    <div class="card">
                        <center>
                            <div class="container">
                                <center>
                                    <table>
                                        <tr>
                                            <th>
                                                <label for="fname">שם</label>
                                            </th>
                                            <th>
                                                <asp:TextBox ID="TextBox1" runat="server" placeholder="השם שלך..." required> </asp:TextBox>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th>
                                                <label for="lname">נושא</label>
                                            </th>
                                            <th>
                                                <asp:TextBox ID="TextBox2" runat="server" placeholder="נושא..." required></asp:TextBox>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th>
                                                <label for="lname">אימייל</label>
                                            </th>
                                            <th>
                                                <asp:TextBox ID="TextBox3" type="email" runat="server" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" placeholder="האימייל שלך..." required></asp:TextBox>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th>
                                                <label for="lname">טלפון</label>
                                            </th>
                                            <th>
                                                <asp:TextBox ID="TextBox4" runat="server" placeholder="הטלפון שלך..."></asp:TextBox>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th>
                                                <label dir="rtl" for="subject">קובץ</label>
                                            </th>
                                            <th>
                                                <div class="input-file-container">
                                                    <asp:FileUpload ID="FileUpload1" class="input-file-trigger" runat="server"></asp:FileUpload>
                                                </div>
                                            </th>
                                        </tr>
                                    </table>
                                    <br>
                                    <br>
                                    <asp:TextBox ID="TextArea" TextMode="multiline" MaxLength="3980" type="MultiLine" runat="server" />
                                    <br>
                                    <br>
                                    <asp:Button CssClass="btnSubmit" ID="Button1" runat="server" Text="שלח" OnClick="Button1_Click" required></asp:Button>
                                </center>
                            </div>
                        </center>
                    </div>
                </center>
                <div class="footer">
                </div>
        </div>
    </form>
</body>
</html>
