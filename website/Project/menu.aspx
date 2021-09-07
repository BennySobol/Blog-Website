<%@ Page Language="C#" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="menu" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>האתר של רג'י</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="Site.css" />
</head>
<body dir="rtl">
    <form id="form1" runat="server">
        <% callLogout(); %>
        <div style="text-align: center">
            <div class="header" style="background-image: url(DynamicData/Content/Images/menu_1.jpg); width: 100%; height: 300px; color: white; font-size: 90px;">
                <marquee class="ex1" direction="right" scrollamount="10">
                    <div class="mkstroke">
                        מדיטציית         ויפאסנה
                    </div>
                </marquee>
            </div>
            <center>
                <div class="topnav" id="myTopnav">
                    <% callMenu(); %>
                </div>
                <script src="Scripts/slider_bar.js"></script>
        </div>
        <div class="row">
            <div class="leftcolumn">
                <div class="menuCard">
                    <div style="text-align: center">
                        <div class="r">
                            <h3 dir="rtl">מה זה ויפאסנה</h3>
                            <p dir="rtl">ויפאסנה היא שיטת מדיטציה עתיקה שנתגלתה בהודו לפני יותר מ-2,500 שנה. פירוש המילה ויפאסנה הוא “לראות את הדברים כפי שהם באמת”. ויפאסנה עוזרת לאדם להבחין בצורה ברורה וחווייתית בכל המתרחש בנפשו, להבין לעומק מה מקור הסבל ולשרש אותו. מדיטציית ויפאסנה נלמדת בקורס בן עשרה ימים. המשתתפים מתגוררים במרכז המדיטציה במהלך כל התקופה, מתרגלים את השיטה וחווים באופן בלתי אמצעי את תועלתה. עם סיומו של תהליך לימוד הדרגתי שבו נפרשים קווי המתאר של השיטה באופן פשוט והגיוני, אפשר לתרגל אותה באופן עצמאי בחיי היום-יום.</p>
                        </div>
                        <div class="r">
                            <p dir="rtl">
                                הצטרפו אלינו לקסמה של חווית ההתבודדות ושתיקה בערבה, לתרגולים המטהרים ומרפאים את הגוף והנפש.
                           זו הזדמנות נהדרת לסיים את השנה ולקבל את השנה האזרחית החדשה ממקום שכולו התחדשות. בואו להאט את הקצב, לחיות פשוט, להקשיב לפעימות לבכם ולרחשי המדבר, במסע של ניקוי וטיהור משקעים שמצטברים בגוף ובנפש. בואו איתנו לנשום ולחוש את השקט המרפא.
                           באמצעות תרגולי יוגה מגוונים, מנחי גוף, תנועה ותרגילי נשימה נתעורר אל טבע הגוף. באמצעות תרגולי מדיטציה, תרגילי קשב (מיינדפולנס) וריכוז (סאמאטה) נתעורר אל טבעה של התודעה, נלמד מהי ויפאסאנה, ומהיא תודעה בהירה. הריטריט יערך בשתיקה על מנת לאפשר לעצמנו שחרור ומנוחה ושחושינו יתעוררו ליופיה הפשוט של המציאות.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="rightcolumn">
                <div class="menuCard">
                    <h4>הזמן הכי טוב לעשות שינוי והזמן השני הכי טוב הוא עכשיו</h4>
                    <br />
                    <br />
                    <div style="text-align: center">
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Label CssClass="clock" ID="lblTime" runat="server" ForeColor="White"></asp:Label>
                                <br />
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="tIMER1" EventName="Tick"></asp:AsyncPostBackTrigger>
                            </Triggers>
                        </asp:UpdatePanel>
                        <br />
                    </div>
                </div>
            </div>
            <div class="rightcolumn">
                <div class="menuCard">
                    <img src="DynamicData/Content/Images/menu_2.jpg" alt="Mountain View" style="width: 90%; height: auto; max-width: 250px">
                    <br>
                    <br>
                    <p>ר'גי גונדה מורה למדיטציית ויפאסנה במסורתו של סיאג'י או-בה-קיואג'י או-בה-קין</p>
                </div>
                <div class="menuCard">
                    <center>
                        <script src="Scripts/date.js"></script>
                    </center>
                </div>
            </div>
        </div>
        <div class="footer">
            <script src="Scripts/print.js"></script>
        </div>
    </form>
</body>
</html>
