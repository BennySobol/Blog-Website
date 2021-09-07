using System;
using System.Linq;
using System.Text.RegularExpressions;

public partial class newMember : System.Web.UI.Page
{
    private my_dbEntities db = new my_dbEntities();

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Label8.Text = "";
        Label7.Text = "";
        Label3.Text = "";
        Label9.Text = "";
        Label1.Text = "";
        Label2.Text = "";
        string firstName = TextBox1.Text.Trim();
        string lastName = TextBox2.Text.Trim();
        string bDate = TextBox3.Text.Trim();
        string phone = TextBox4.Text.Trim();
        string email = TextBox5.Text.Trim();
        string pass1 = TextBox6.Text.Trim();
        string pass2 = TextBox7.Text.Trim();
        bool flag = false;

        if (firstName.Length < 2)
        {
            Label8.Text = "על השם להכיל לפחות שני תווים";
            Label7.Text = "&#9913";
            flag = true;
        }
        userTBL exist = (from s in db.userTBL where s.email == email select s).FirstOrDefault();

        if (exist != null) // email exist
        {
            Label9.Text = "האימיל תפוס בחר אחר";
            Label3.Text = "&#9913";
            flag = true;
        }
        else if (!new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$").Match(email).Success)
        {
            Label9.Text = "האימיל איננו חוקי";
            Label3.Text = "&#9913";
            flag = true;
        }
        else if (pass1 != pass2)
        {
            Label9.Text = "על הסיסמאות ליהות שוות";
            Label1.Text = "&#9913";
            Label2.Text = "&#9913";
            flag = true;
        }
        else if (pass1.Length < 6)
        {
            Label9.Text = "על הסיסמאות להכיל לפחות שש תווים";
            Label1.Text = "&#9913";
            Label2.Text = "&#9913";
            flag = true;
        }
        if (flag)
            return;

        userTBL u1 = new userTBL();
        u1.f_name = firstName;
        u1.l_name = lastName;
        u1.email = email;
        u1.phone = phone;
        u1.pass = pass1;
        u1.bDate = bDate;
        u1.emailConfirmation = false;
        u1.regDate = DateTime.Now;
        db.userTBL.Add(u1);
        db.SaveChanges();
        Session["logUser"] = u1;
        Response.Redirect("menu.aspx");
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
}