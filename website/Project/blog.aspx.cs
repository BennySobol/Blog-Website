using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

public partial class blog : System.Web.UI.Page
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

    public void printBlog()
    {
        userTBL u1 = (userTBL)Session["logUser"];
        List<blogsTBL> lst = (from s in db.blogsTBL select s).ToList();
        string title, path, content, str = "";
        foreach (blogsTBL blog in lst)
        {
            if (blog.content != null)
            {
                title = blog.title;
                path = blog.imageUrl;
                content = blog.content;
                str += " <div class='container'>";

                str += " <a title = '" + title + "'>";
                str += "     <img src=" + path + " class='blog-image' alt='" + title + "'> </a>";
                if (u1.Id == 9)
                {
                    str += "<br><br><a class='button' href = 'delete.aspx?id=" + blog.Id.ToString() + "&type=blog' class='ico del'>מחק</a><br><br>";
                }
                str += "  <h1 title = " + title + " >" + title + "</h1>";
                str += "<p>" + content + "</p> </div>";
            }
        }
        Response.Write(str);
    }
}