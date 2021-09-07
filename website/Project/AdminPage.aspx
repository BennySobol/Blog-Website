<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>האתר של רג'י</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="Site.css" />
</head>
<body style="background-color: powderblue;" dir="rtl">
    <form id="form1" runat="server">
        <%   callLogout();  %>
        <center>
            <div class="topnav" id="myTopnav">
                <% callMenu(); %>
            </div>
            <script src="Scripts/slider_bar.js"></script>
            <div id="container">
                <div class="shell">
                    <br />
                    <div id="main">
                        <div class="cl">&nbsp;</div>
                        <div id="content">
                            <div class="box">
                                <div class="box-head">
                                    <h2 class="right">רשומים </h2>
                                </div>
                                <center>
                                    <asp:TextBox CssClass="field small-field" ID="TextBox1" runat="server" Width="457px"></asp:TextBox>
                                    <asp:Button CssClass="b" ID="Button12" runat="server" Text="🔎" Height="38px" OnClick="Button12_Click" />
                                    <asp:Button CssClass="b" ID="Button13" runat="server" Text="נקה" Height="38px" OnClick="Button13_Click" />
                                </center>
                                <div class="table" style="overflow-x: auto;">
                                    <asp:Table ID="Table" runat="server">
                                        <asp:TableHeaderRow>
                                            <asp:TableHeaderCell></asp:TableHeaderCell>
                                            <asp:TableHeaderCell CssClass="ac" ColumnSpan="2">בקרת תוכן</asp:TableHeaderCell>
                                            <asp:TableHeaderCell>שם</asp:TableHeaderCell>
                                            <asp:TableHeaderCell>שם מישפחה</asp:TableHeaderCell>
                                            <asp:TableHeaderCell>תאריך לידה</asp:TableHeaderCell>
                                            <asp:TableHeaderCell>טלפון</asp:TableHeaderCell>
                                            <asp:TableHeaderCell>אימייל</asp:TableHeaderCell>
                                            <asp:TableHeaderCell>סיסמה</asp:TableHeaderCell>
                                            <asp:TableHeaderCell>תאריך הרשמה</asp:TableHeaderCell>
                                        </asp:TableHeaderRow>
                                    </asp:Table>
                                    <div class="pagging">
                                        <asp:Label CssClass="left" ID="Label1" runat="server" Text=""></asp:Label>
                                        <div class="right">
                                            <asp:Button CssClass="smallBtn" ID="Button1" runat="server" Text="הקודם &#8678;" OnClick="Button1_Click1" />
                                            <asp:Button CssClass="smallBtn" ID="Button2" runat="server" Text="1" OnClick="Button2_Click" />
                                            <asp:Label ID="Label4" runat="server" Text="..."></asp:Label>
                                            <asp:Button CssClass="smallBtn" ID="Button10" runat="server" Text="" OnClick="Button10_Click" />
                                            <asp:Button CssClass="smallBtn" ID="Button9" runat="server" Text="" OnClick="Button9_Click" />
                                            <asp:Button CssClass="smallBtn" ID="Button8" runat="server" Text="" OnClick="Button8_Click" />
                                            <asp:Button Style="background-color: #666666; color: white" CssClass="smallBtn" ID="Button3" runat="server" Text="" OnClick="Button3_Click" />
                                            <asp:Button ID="Button4" runat="server" Text="" OnClick="Button4_Click" CssClass="smallBtn" />
                                            <asp:Button CssClass="smallBtn" ID="Button5" runat="server" Text="" OnClick="Button5_Click" />
                                            <asp:Button CssClass="smallBtn" ID="Button6" runat="server" Text="" OnClick="Button6_Click" />
                                            <asp:Label ID="Label3" runat="server" Text="..."></asp:Label>
                                            <asp:Button CssClass="smallBtn" ID="Button11" runat="server" Text="" OnClick="Button11_Click" />
                                            <asp:Button CssClass="smallBtn" ID="Button7" runat="server" Text="&#8680; הבא" OnClick="Button7_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="box">
                                <div class="box-head">
                                    <h2 class="right" style="height: 18px; width: 56px">הוסף בלוג</h2>
                                </div>
                                <div class="form">
                                    <p>
                                        <label>כותרת</label>
                                        <asp:TextBox ID="TextBox2" MaxLength="250" runat="server" />
                                    </p>
                                    <div class="input-file-container">
                                        <asp:FileUpload ID="FileUpload1" accept=".png, .jpg, .jpeg" class="input-file-trigger" runat="server" />
                                    </div>
                                    <p>
                                        <label>תוכן </label>
                                        <asp:TextBox ID="TextArea1" MaxLength="3900" TextMode="MultiLine" runat="server" />
                                    </p>
                                </div>
                                <div class="buttons">
                                    <asp:Button ID="Button14" runat="server" Text="העלה" OnClick="Button14_Click" />
                                    <asp:Label ID="Label2" runat="server" Text="" Font-Size="X-large" ForeColor="Red" />
                                </div>
                            </div>
                        </div>
                        <div id="sidebar">
                            <div class="box">
                                <div class="box-head">
                                    <h2 class="right">הנהלה</h2>
                                </div>
                                <div class="box-content">
                                    <div class="cl">&nbsp;</div>
                                    <div class="sort">
                                        <label>מיין וחפש על ידי</label>
                                        <asp:DropDownList ID="DropDownList1" CssClass="field" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                            <asp:ListItem Text="תאריך הרשמה" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="שם" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="שם מישפחה" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="אימייל" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="תאריך הולדת" Value="4"></asp:ListItem>
                                        </asp:DropDownList>
                                        <div class="sort">
                                            <label>מספר עמודות</label>
                                            <asp:DropDownList ID="DropDownList2" CssClass="field" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                                <asp:ListItem Text="3" Value="2"></asp:ListItem>
                                                <asp:ListItem Text="5" Value="3"></asp:ListItem>
                                                <asp:ListItem Text="10" Value="4"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </center>
    </form>
</body>
</html>
