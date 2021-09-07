using System;
using System.Linq;

public partial class login : System.Web.UI.Page
{
    private my_dbEntities db = new my_dbEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["userid"] != null)
                TextBox1.Text = Request.Cookies["userid"].Value;
            if (Request.Cookies["pwd"] != null)
                TextBox2.Attributes.Add("value", Request.Cookies["pwd"].Value);
            if (Request.Cookies["userid"] != null && Request.Cookies["pwd"] != null)
                CheckBox1.Checked = true;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        string email = TextBox1.Text;
        string pass = TextBox2.Text;
        userTBL u1 = (from s in db.userTBL where s.email == email select s).FirstOrDefault();

        if (u1 == null) // email doesnt exist
        {
            Label1.Text = "האימיל לא קיים";
            return;
        }
        else if (u1.pass != pass) // pass doesnt mach
        {
            Label1.Text = "הסיסמה לא נכונה";
            return;
        }

        // Create Cookie and Store the Login Detail in it if check box is checked
        if (CheckBox1.Checked == true)
        {
            Response.Cookies["userid"].Value = TextBox1.Text;
            Response.Cookies["pwd"].Value = TextBox2.Text;
            Response.Cookies["userid"].Expires = DateTime.Now.AddDays(120);
            Response.Cookies["pwd"].Expires = DateTime.Now.AddDays(120);
        }
        else
        {
            Response.Cookies["userid"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["pwd"].Expires = DateTime.Now.AddDays(-1);
        }

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