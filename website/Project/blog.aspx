<%@ Page Language="C#" AutoEventWireup="true" CodeFile="blog.aspx.cs" Inherits="blog" %>

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
                <br>
                <br>
                <h1 dir="rtl">בלוג</h1>
                <div class="card">
                    <% printBlog(); %>
                </div>
            </center>
            <div class="footer">
            </div>
        </div>
    </form>
</body>
</html>
