using System;
using System.Linq;
using System.Web;
using System.Web.UI;

public partial class emailConfirmation : System.Web.UI.Page
{
    private my_dbEntities db = new my_dbEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        userTBL u1 = (userTBL)Session["logUser"];
        int id = Convert.ToInt32(Request.QueryString["id"]);
        string passStr = Request.QueryString["pass"];
        userTBL user = (from s in db.userTBL where s.Id == id select s).FirstOrDefault();

        if (user != null && user.pass == passStr)
        {
            user.emailConfirmation = true;
            db.SaveChanges();
            Session["logUser"] = user;
            Button1.Visible = false;
            Label1.Text = user.f_name + " האימיל שלך: " + user.email + " אומת";
        }
        else if (u1 != null && u1.emailConfirmation == true)
        {
            Button1.Visible = false;
            Label1.Text = u1.f_name + " האימיל שלך: " + u1.email + " אומת";
        }
        else if (u1 != null)
        {
            sendEmailConfirmation();
        }
        else
        {
            Response.Redirect("menu.aspx");
        }
    }

    public void callMenu()
    {
        userTBL u1 = (userTBL)Session["logUser"];
        tools t1 = new tools();
        Response.Write(t1.printSlider(u1));
    }

    public void callLogout()
    {
        userTBL u1 = (userTBL)Session["logUser"];
        tools t1 = new tools();
        Response.Write(t1.printLogout(u1));
    }

    public void sendEmailConfirmation()
    {
        userTBL u1 = (userTBL)Session["logUser"];
        if (u1 != null)
        {
            string body = "<html><body> <a href = '" + HttpContext.Current.Request.Url.GetLeftPart(UriPartial.Authority) + "/emailConfirmation.aspx?id=" + u1.Id.ToString() + "&pass=" + u1.pass + "' > אמת את האימייל שלי </ a > </body> </html>";
            tools t1 = new tools();

            if (t1.sendEmail(u1.email.Trim(), "אימות כתובת מייל", body, "", null))
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('נשלך לך הודעה לכתובת" + u1.email.Trim() + "');", true);
            else
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('ישנה שגיעה נסה שנית');", true);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        sendEmailConfirmation();
    }
}