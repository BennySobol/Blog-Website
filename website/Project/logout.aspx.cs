using System;

public partial class logout : System.Web.UI.Page
{
    private my_dbEntities db = new my_dbEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["logUser"] = null;
        Response.Redirect("menu.aspx");
    }
}