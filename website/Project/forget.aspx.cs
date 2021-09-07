using System;
using System.Linq;

public partial class forget : System.Web.UI.Page
{
    private my_dbEntities db = new my_dbEntities();

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

    protected void Button1_Click(object sender, EventArgs e)
    {
        string email = TextBox1.Text.Trim();
        userTBL user = (from s in db.userTBL where s.email == email select s).FirstOrDefault();
        if (user == null)
            Label1.Text = "כתובת מייל זו אינה קיימת במערכת";
        else if (user.emailConfirmation == true)
        {
            Label1.Text = "";
            tools t1 = new tools();
            string body = "<html><body><p>שלום " + user.f_name + " הסיסמה שלך היא " + user.l_name + "</p></body></html>";
            if (t1.sendEmail(email, "שיחזור סיסמה", body, "", null))
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('הסיסמה נשלחה לך למייל בהצלחה');", true);
            else
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('ישנה שגיעה נסה שנית');", true);
        }
        else
            Label1.Text = "כתובת מייל זו אינה מאומתת, פנו למנהל האתר";
    }
}