using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

public partial class AdminPage : System.Web.UI.Page
{
    private my_dbEntities db = new my_dbEntities();
    public static int TableSection = 1;
    public static int rowsNumber = 3;
    public static List<userTBL> lst;
    public static int section;

    protected void Page_Load(object sender, EventArgs e)
    {
        userTBL u1 = (userTBL)Session["logUser"];
        if (u1 == null || u1.Id != 9)
        {
            Response.Redirect("menu.aspx");
        }
        if (!IsPostBack)
        {
            TableSection = 1;
            lst = (from s in db.userTBL select s).ToList();
            printTable();
            Button13.Visible = false;
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

    public void printButtons()
    {
        section = lst.Count / rowsNumber;
        if (lst.Count % rowsNumber != 0)
            section++;
        if (TableSection > section)
        {
            TableSection--;
        }
        Button7.Enabled = TableSection != section;
        Button1.Enabled = TableSection != 1;
        Label1.Text = "מציג " + TableSection.ToString() + " מתוך " + section.ToString();

        Button3.Text = (TableSection).ToString();
        Button4.Text = (TableSection + 1).ToString();
        Button5.Text = (TableSection + 2).ToString();
        Button6.Text = (TableSection + 3).ToString();
        Button8.Text = (TableSection - 1).ToString();
        Button9.Text = (TableSection - 2).ToString();
        Button10.Text = (TableSection - 3).ToString();
        Button11.Text = (section).ToString();

        Button2.Visible = TableSection > 4;
        Button4.Visible = section - TableSection >= 1;
        Button5.Visible = section - TableSection >= 2;
        Button6.Visible = section - TableSection >= 3;
        Button8.Visible = TableSection > 1;
        Button9.Visible = TableSection > 2;
        Button10.Visible = TableSection > 3;
        Button11.Visible = section - TableSection > 4;

        Label4.Visible = TableSection > 4;
        Label3.Visible = section - TableSection > 4;
    }

    public void printTable()
    {
        printButtons();
        int currTableRow;
        for (int i = 0; (i < rowsNumber) && (TableSection * rowsNumber + i - rowsNumber < lst.Count); i++)
        {
            TableRow tempRow = new TableRow();

            TableCell cell1 = new TableCell();
            TableCell cell2 = new TableCell();
            TableCell cell3 = new TableCell();
            TableCell cell4 = new TableCell();
            TableCell cell5 = new TableCell();
            TableCell cell6 = new TableCell();
            TableCell cell7 = new TableCell();
            TableCell cell8 = new TableCell();
            TableCell cell9 = new TableCell();

            currTableRow = TableSection * rowsNumber + i - rowsNumber;
            if (currTableRow >= 0)
            {
                cell1.Text = (TableSection * rowsNumber + i - rowsNumber + 1).ToString();
                cell2.Text = "<a href = 'delete.aspx?id=" + lst[currTableRow].Id.ToString() + "&type=user' class='ico del'>מחק</a></td><td><a href = 'edit.aspx?id=" + lst[currTableRow].Id + "' class='ico edit'>ערוך</a>";
                cell3.Text = lst[currTableRow].f_name;
                cell4.Text = lst[currTableRow].l_name;
                cell5.Text = lst[currTableRow].bDate;
                cell6.Text = lst[currTableRow].phone;
                cell7.Text = lst[currTableRow].email;
                cell8.Text = lst[currTableRow].pass;
                cell9.Text = lst[currTableRow].regDate.ToString("d/MM/yyyy");

                tempRow.Cells.Add(cell1);
                tempRow.Cells.Add(cell2);
                tempRow.Cells.Add(cell3);
                tempRow.Cells.Add(cell4);
                tempRow.Cells.Add(cell5);
                tempRow.Cells.Add(cell6);
                tempRow.Cells.Add(cell7);
                tempRow.Cells.Add(cell8);
                tempRow.Cells.Add(cell9);

                Table.Rows.Add(tempRow);
            }
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string item = DropDownList1.SelectedItem.Value;

        if (item == "1")
            lst = lst.OrderBy(x => x.f_name).ToList();
        else if (item == "2")
            lst = lst.OrderBy(x => x.l_name).ToList();
        else if (item == "3")
            lst = lst.OrderBy(x => x.email).ToList();
        else if (item == "4")
            lst = lst.OrderBy(x => x.bDate).ToList();
        else
            lst = lst.OrderBy(x => x.regDate).ToList();
        printTable();
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string item = DropDownList2.SelectedItem.Value;

        if (item == "2")
            rowsNumber = 3;
        else if (item == "3")
            rowsNumber = 5;
        else
            rowsNumber = 10;

        TableSection = 1;
        printTable();
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (TableSection > 1)
            --TableSection;
        printTable();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TableSection = 1;
        printTable();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        TableSection += 1;
        printTable();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        TableSection += 2;
        printTable();
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        TableSection += 3;
        printTable();
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        int section = lst.Count / rowsNumber;
        if (lst.Count % rowsNumber != 0)
            section++;

        if (section > TableSection)
            TableSection++;

        printTable();
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        TableSection -= 1;
        printTable();
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        TableSection -= 2;
        printTable();
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        TableSection -= 3;
        printTable();
    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        TableSection = section;
        printTable();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        printTable();
    }

    protected void Button12_Click(object sender, EventArgs e)
    {
        TableSection = 1;
        string serchText = TextBox1.Text;
        if (serchText != "")
        {
            string item = DropDownList1.SelectedItem.Value;
            lst = (from s in db.userTBL select s).ToList();
            if (item == "1")
                lst = lst.FindAll(x => x.f_name.Contains(serchText));
            else if (item == "2")
                lst = lst.FindAll(x => x.l_name.Contains(serchText));
            else if (item == "3")
                lst = lst.FindAll(x => x.email.Contains(serchText));
            else if (item == "4")
                lst = lst.FindAll(x => x.bDate.Contains(serchText));
            else
                lst = lst.FindAll(x => x.regDate.ToString().Contains(serchText));
            if (lst.Count != 0)
            {
                Button13.Visible = true;
                printTable();
            }
        }
        else
            printTable();
    }

    protected void Button13_Click(object sender, EventArgs e)
    {
        lst = (from s in db.userTBL select s).ToList();
        Button13.Visible = false;
        printTable();
    }

    protected void Button14_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string fileName = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Data/") + fileName);
            blogsTBL blog = new blogsTBL();
            blog.imageUrl = "Data/" + fileName;
            blog.title = TextBox2.Text;
            blog.content = TextArea1.Text;

            if (TextArea1.Text != "" && TextArea1.Text.Length < 3900 && TextBox2.Text != "")
            {
                db.blogsTBL.Add(blog);
                db.SaveChanges();
                Response.Redirect("blog.aspx");
            }
            else
            {
                Label2.Text = "שגיאה";
            }
        }
        else
        {
            Label2.Text = "שגיאה";
        }
    }
}