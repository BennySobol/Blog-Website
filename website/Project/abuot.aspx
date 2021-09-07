<%@ Page Language="C#" AutoEventWireup="true" CodeFile="abuot.aspx.cs" Inherits="abuot" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="Site.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%  callLogout();  %>
            <center>
                <div class="topnav" id="myTopnav">
                    <%   callMenu();   %>
                </div>
                <script src="Scripts/slider_bar.js"></script>
                <br>
                <br>
                <h1>אודות</h1>
                <br>
                <section>
                    <img class="mySlides" src="DynamicData/Content/Images/abuot_1.jpg"
                        style="width: 55%; border-radius: 6px; border: 3px solid #eee; border-radius: 1.5%;">
                    <img class="mySlides" src="DynamicData/Content/Images/abuot_2.jpg"
                        style="width: 55%; border-radius: 6px; border: 3px solid #eee; border-radius: 1.5%;">
                    <img class="mySlides" src="DynamicData/Content/Images/abuot_3.jpg"
                        style="width: 55%; border-radius: 6px; border: 3px solid #eee; border-radius: 1.5%;">
                </section>
                <div class="card">
                    <div class="container">
                        <h2>ישנן שלוש דרכים לתירגול ויפאסנה</h2>
                        <i>הראשונה : העברת המודעות בין האיברים השונים המרכיבים את פני גוף האדם ומיקוד רגעי של המודעות בכל איבר תוך ערנות לתחושות הבאות וחולפות בזמן בו
                     אנו ממקדים את המודעות באיבר המסוים. בזמן העברת המודעות על המתרגל לפתח קבלה והשלמה עם התחושות שהוא חווה, ללא שיפוט, בין אם עולות תחושות כאב או תחושות נעימות. השלמה זו עוזרת למתרגל להגיע לאיזון נפשי.</i>
                        <i>השניה : הפניית המודעות אל אחד מאיברי החישה של הגוף במטרה להבחין בתחושות השונות הבאות וחולפות לאורך הזמן באיבר המסוים. (תחומי חישה לפי איברים: ריחות, צלילים, ראיה, טעם, מגע, מחשבות </i>
                        <i>השלישית : ערנות למחשבות, לרגשות ולתחושות השונות המופיעות וחולפות בכל רגע לאורך היום בכל מצבי ההכרה.</i>
                        <i>בדרך כלל הגוף נמצא בתנוחת ישיבה כאשר הרגלים משולבות הגב זקוף והראש מביט לפנים. ניתן לתרגל גם בישיבה על כיסא, על האדמה, על כרית נוחה, בשכיבה על הגב או בהליכה. זמן התרגול תלוי בשיטה וביכולת המתרגל. המחמירים נוהגים לתרגל כשלוש שעות; כאשר מתעוררים שעה, באמצע היום שעה ולפני השינה שעה. ולפחות תרגול רציף של 12 שעות ביום למשך 10 ימים פעם בשנה במקום שקט ומבודד</i>
                    </div>
                    <div class="container">
                        <center>
                            <iframe style="width: 95%; border-radius: 6px; border: 2px solid powderblue;" height="315" src="https://www.youtube.com/embed/X3rl5O_92Co" frameborder="0" allow="autoplay; encrypted-media"></iframe>
                        </center>
                    </div>
                </div>
            </center>
            <script src="Scripts/images.js"></script>
            <div class="footer">
            </div>
        </div>
    </form>
</body>
</html>
