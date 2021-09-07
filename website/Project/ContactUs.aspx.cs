using System;
using System.IO;
using System.Web.UI;

public partial class ContactUs : System.Web.UI.Page
{
    private my_dbEntities db = new my_dbEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        string body = "<html><body><p>שם: " + TextBox1.Text + "</p><p> טלפון: " + TextBox4.Text + "</p><p> אימייל: " + TextBox3.Text + "</p>   <p><b> תוכן ההודעה: </b> " + TextArea.Text + " </p></body> </html>";
        string FileName = "";
        Stream file = null;
        if (FileUpload1.HasFile)
        {
            FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            file = FileUpload1.PostedFile.InputStream;
        }
        tools t1 = new tools();
        Boolean secsses = t1.sendEmail("banisobol@gmail.com", TextBox2.Text, body, FileName, file);
        if (secsses)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('תגובתך נשלחה בהצלחה נחזור אליך בהקדם האפשרי');", true);
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('ישנה שגיעה נסה שנית');", true);
        }
    }
}