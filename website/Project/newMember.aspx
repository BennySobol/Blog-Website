<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newMember.aspx.cs" Inherits="newMember" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>האתר של רג'י</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="Site.css" />
</head>
<body>
    <asp:Panel ID="pnl_form" DefaultButton="Button1" runat="server">
        <form id="form1" runat="server">
            <div>
                <% callLogout(); %>
                <center>
                    <div class="topnav" id="myTopnav">
                        <% callMenu(); %>
                    </div>
                    <script src="Scripts/slider_bar.js"></script>
                    <center>
                        <br />
                        <br />
                        <div class="card">
                            <center>
                                <table style="width: 90%;">
                                    <tr>
                                        <th></th>
                                        <th>
                                            <center>
                                                <h1>הרשמה</h1>
                                            </center>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th></th>
                                        <th>
                                            <br />
                                            <br />
                                            <center>
                                                <strong>פרטי משתמש: </strong>
                                                <br>
                                                <br>
                                                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
                                            </center>
                                            <br />
                                        </th>
                                    </tr>
                                    <tr>
                                        <th>
                                            <a class="grey" style="font-size: 37px;">&#9998</a>
                                        </th>
                                        <th>
                                            <asp:TextBox ID="TextBox1" runat="server" placeholder="שם..." name="fname" MaxLength="50" required></asp:TextBox>
                                            <br>
                                        </th>
                                        <th>
                                            <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="&amp;#9913" Font-Size="X-Large"></asp:Label>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th>
                                            <a class="grey" style="font-size: 37px;">&#9998</a>
                                        </th>
                                        <th>
                                            <asp:TextBox ID="TextBox2" runat="server" placeholder="שם משפחה..." name="lname" MaxLength="50"></asp:TextBox>
                                            <br>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th>
                                            <a class="grey">&#128198</a>
                                        </th>
                                        <th>
                                            <asp:TextBox ID="TextBox3" runat="server" placeholder="תאריך לידה..." name="date" TextMode="date" MaxLength="50"></asp:TextBox>
                                            <br>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th>
                                            <a class="grey">&#128222</a>
                                        </th>
                                        <th>
                                            <asp:TextBox ID="TextBox4" runat="server" placeholder="טלפון..." name="phone" MaxLength="50"></asp:TextBox>
                                            <br>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th></th>
                                        <th>
                                            <br>
                                            <br>
                                            <center>
                                                <strong>פירטי התחברות:</strong>
                                                <br>
                                                <br>
                                                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
                                            </center>
                                            <br>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th>
                                            <a class="grey" style="font-size: 40px;">&#9993</a>
                                        </th>
                                        <th>
                                            <asp:TextBox ID="TextBox5" runat="server" placeholder="אימייל..." MaxLength="50" TextMode="email" required></asp:TextBox>
                                            <br>
                                        </th>
                                        <th>
                                            <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="&amp;#9913" Font-Size="X-Large"></asp:Label>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th>
                                            <a class="grey">&#128273</a>
                                        </th>
                                        <th>
                                            <asp:TextBox ID="TextBox6" runat="server" placeholder="סיסמה..." MaxLength="50" TextMode="password" required></asp:TextBox>
                                            <br>
                                        </th>
                                        <th>
                                            <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="&amp;#9913" Font-Overline="False" Font-Size="X-Large"></asp:Label>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th>
                                            <a class="grey">&#128273</a>
                                        </th>
                                        <th>
                                            <asp:TextBox ID="TextBox7" runat="server" placeholder="חזור שנית על הסיסמה..." MaxLength="50" TextMode="password" required></asp:TextBox>
                                            <br>
                                        </th>
                                        <th>
                                            <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="&amp;#9913" Font-Size="X-Large"></asp:Label>
                                        </th>
                                    </tr>
                                </table>
                                <br>
                                <br>
                                <br>
                                <center>
                                    <asp:Button ID="Button1" runat="server" CssClass="btnSubmit" Text="הירשם" OnClick="Button1_Click1"></asp:Button>
                                </center>
                            </center>
                        </div>
                    </center>
                    <div class="footer">
                    </div>
            </div>
        </form>
    </asp:Panel>
</body>
</html>
