using System;
using System.Linq;
using System.Text.RegularExpressions;

public partial class edit : System.Web.UI.Page
{
    private my_dbEntities db = new my_dbEntities();
    private int userID;

    protected void Page_Load(object sender, EventArgs e)
    {
        userTBL u1 = (userTBL)Session["logUser"];
        if (u1 == null || u1.Id != 9)
        {
            Response.Redirect("menu.aspx");
        }
        string idStr = Request.QueryString["id"];
        userID = Convert.ToInt32(idStr);
        if (!IsPostBack)
        {
            loadTBX();
        }
    }

    private void loadTBX()
    {
        userTBL userToModify = (from s in db.userTBL where s.Id == userID select s).FirstOrDefault();
        TextBox1.Text = userToModify.email;
        TextBox2.Text = userToModify.pass;
        TextBox3.Text = userToModify.f_name;
        TextBox4.Text = userToModify.l_name;
        if (userToModify.bDate != "")
        {
            DateTime date = DateTime.Parse(userToModify.bDate);

            TextBox5.Text = date.ToString("yyyy-MM-dd");
        }

        TextBox6.Text = userToModify.phone;
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
        string idStr = Request.QueryString["id"];
        int userID = Convert.ToInt32(idStr);
        userTBL userToModify = (from s in db.userTBL where s.Id == userID select s).FirstOrDefault();

        string firstName = TextBox3.Text.Trim();
        string lastName = TextBox4.Text.Trim();
        string bDate = TextBox5.Text.Trim();
        string phone = TextBox6.Text.Trim();
        string email = TextBox1.Text.Trim();
        string pass = TextBox2.Text.Trim();

        if (firstName.Length < 2)
        {
            Label1.Text = "על השם להכיל לפחות שני תווים";
            return;
        }
        userTBL exist = (from s in db.userTBL where s.email == email select s).FirstOrDefault();

        if (exist != userToModify && exist != null) // email exist
        {
            Label1.Text = "האימיל תפוס בחר אחר";
            return;
        }
        else if (!new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$").Match(email).Success)
        {
            Label1.Text = "האימיל איננו חוקי";
            return;
        }
        else if (pass.Length < 6)
        {
            Label1.Text = "על הסיסמה להכיל לפחות שש תווים";
            return;
        }
        userToModify.pass = TextBox2.Text;
        userToModify.email = TextBox1.Text;
        userToModify.f_name = TextBox3.Text;
        userToModify.l_name = TextBox4.Text;
        userToModify.bDate = TextBox5.Text;
        userToModify.phone = TextBox6.Text;
        db.SaveChanges();

        Response.Redirect("AdminPage.aspx");
    }
}