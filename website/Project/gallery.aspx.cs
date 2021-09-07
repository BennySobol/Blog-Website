using System;

public partial class gallery : System.Web.UI.Page
{
    private my_dbEntities db = new my_dbEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        userTBL u1 = (userTBL)Session["logUser"];
        if (u1 == null)
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
}