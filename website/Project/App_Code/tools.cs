using System;
using System.IO;
using System.Net;
using System.Net.Mail;

public class tools : System.Web.UI.Page
{
    private my_dbEntities db = new my_dbEntities();

    public tools()
    {
    }

    public string printLogout(userTBL u1)
    {
        string str = "";
        if (u1 != null)
        {
            str += "<div id = 'top' style = 'font-family: Arial;' >";
            str += "<a class='d'>";
            str += u1.f_name;
            str += " ברוך הבא </a>";
            if (u1.emailConfirmation == false)
            {
                str += "<span > | </span>";
                str += "<a class='link' href = 'emailConfirmation.aspx' >אמת את האימייל שלך</a>";
            }
            str += "<span > | </span>";
            str += "<a class='link' href = 'logout.aspx' >התנתק</a>";
            str += "<br> <br> <br> </div>";
        }
        return str;
    }

    public string printSlider(userTBL u1)
    {
        string str = "";
        str += "<a href = 'menu.aspx'>ראשי</a>";
        str += "<a href='abuot.aspx'>אודות</a>";
        str += "<a href = 'Treatments.aspx' > הקורס </ a >";
        str += "<a href='ContactUs.aspx'>צור קשר</a>";
        str += log(u1);
        return str;
    }

    public string log(userTBL u1)
    {
        string str = "";
        if (u1 == null)
        {
            str += "<a href = 'logIn.aspx' > התחבר </ a >";
            str += "<a href = 'newMember.aspx' > הירשם </ a >";
        }
        else
        {
            str += "<a href='gallery.aspx'>גלריה</a>";
            str += "<a href = 'blog.aspx' > בלוג </a>";
            if (u1.Id == 9)
            {
                str += "<a href='AdminPage.aspx'>הנהלה</a>";
            }
        }
        str += " <a  class='icon'><wrapper onclick='myFunction()'><input type='checkbox' /><bun><burger></burger></bun></wrapper></ a>";
        return str;
    }

    public Boolean sendEmail(string toEmail, string subject, string body, string fileName, Stream file)
    {
        MailMessage mail = new MailMessage("webEmailSender1@gmail.com", toEmail);
        mail.Subject = subject;
        if (fileName != "")
        {
            mail.Attachments.Add(new Attachment(file, fileName));
        }
        mail.Body = body;
        mail.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.EnableSsl = true;
        NetworkCredential NetworkCred = new NetworkCredential("sender_mail@gmail.com", "sender_mail_password");
        smtp.UseDefaultCredentials = true;
        smtp.Credentials = NetworkCred;
        smtp.Port = 587;
        try
        {
            smtp.Send(mail);
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }
    }
}