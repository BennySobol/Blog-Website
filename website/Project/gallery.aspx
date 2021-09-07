<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

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
            <% callLogout(); %>
            <center>
                <div class="topnav" id="myTopnav">
                    <% callMenu(); %>
                </div>
                <script src="Scripts/slider_bar.js"></script>
                <center>
                    <br>
                    <br>
                    <h1>גלריה</h1>
                    <div class="place">
                        <div class="gakkeryContainer">
                            <div class="mySlides">
                                <div class="numbertext">1 / 6</div>
                                <img src="DynamicData/Content/Images/gallery_1.jpg" width="599" height="350">
                            </div>
                            <div class="mySlides">
                                <div class="numbertext">2 / 6</div>
                                <img src="DynamicData/Content/Images/gallery_2.jpg" width="599" height="350">
                            </div>
                            <div class="mySlides">
                                <div class="numbertext">3 / 6</div>
                                <img src="DynamicData/Content/Images/gallery_3.jpg" width="599" height="350">
                            </div>
                            <div class="mySlides">
                                <div class="numbertext">4 / 6</div>
                                <img src="DynamicData/Content/Images/gallery_4.jpg" width="599" height="350">
                            </div>
                            <div class="mySlides">
                                <div class="numbertext">5 / 6</div>
                                <img src="DynamicData/Content/Images/gallery_5.jpg" width="599" height="350">
                            </div>
                            <div class="mySlides">
                                <div class="numbertext">6 / 6</div>
                                <img src="DynamicData/Content/Images/gallery_6.jpg" width="599" height="350">
                            </div>
                            <a class="prev" onclick="plusSlides(-1)">></a>
                            <a class="next" onclick="plusSlides(1)"><</a>
                            <div class="caption-container">
                                <p id="caption"></p>
                            </div>
                            <div class="row">
                                <div class="column">
                                    <img class="demo cursor" src="DynamicData/Content/Images/gallery_1.jpg" width="99" height="66" onclick="currentSlide(1)" alt="רוגע">
                                </div>
                                <div class="column">
                                    <img class="demo cursor" src="DynamicData/Content/Images/gallery_2.jpg" width="99" height="66" onclick="currentSlide(2)" alt="שלווה">
                                </div>
                                <div class="column">
                                    <img class="demo cursor" src="DynamicData/Content/Images/gallery_3.jpg" width="99" height="66" onclick="currentSlide(3)" alt="הרמוניה">
                                </div>
                                <div class="column">
                                    <img class="demo cursor" src="DynamicData/Content/Images/gallery_4.jpg" width="99" height="66" onclick="currentSlide(4)" alt="נחמדות">
                                </div>
                                <div class="column">
                                    <img class="demo cursor" src="DynamicData/Content/Images/gallery_5.jpg" width="99" height="66" onclick="currentSlide(5)" alt="איזון">
                                </div>
                                <div class="column">
                                    <img class="demo cursor" src="DynamicData/Content/Images/gallery_6.jpg" width="99" height="66" onclick="currentSlide(6)" alt="שקט">
                                </div>
                            </div>
                        </div>
                    </div>
                </center>
                <div class="footer">
                </div>
                <script src="Scripts/gallery.js"></script>
        </div>
    </form>
</body>
</html>
