using System;
using System.Linq;

public partial class delete : System.Web.UI.Page
{
    private my_dbEntities db = new my_dbEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        string idStr = Request.QueryString["id"];
        int id = Convert.ToInt32(idStr);
        string type = Request.QueryString["type"];
        if (type == "user")
        {
            if (id == 9)
            {
            }
            else
            {
                userTBL userToDelete = (from s in db.userTBL where s.Id == id select s).FirstOrDefault();
                db.userTBL.Remove(userToDelete);
                db.SaveChanges();
            }
            Response.Redirect("AdminPage.aspx");
        }
        if (type == "blog")
        {
            blogsTBL blogToDelete = (from s in db.blogsTBL where s.Id == id select s).FirstOrDefault();
            db.blogsTBL.Remove(blogToDelete);
            db.SaveChanges();
            Response.Redirect("blog.aspx");
        }
        Response.Redirect("menu.aspx");
    }
}