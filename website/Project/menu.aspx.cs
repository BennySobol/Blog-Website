using System;

public partial class menu : System.Web.UI.Page
{
    private my_dbEntities db = new my_dbEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        lblTime.Text = DateTime.Now.ToString("hh:mm:ss");
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        lblTime.Text = DateTime.Now.ToString("hh:mm:ss");
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