using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        obj = new DBClass();
    }

    private DBClass obj;
    private String cname, subject, details, pwd, phnum, email, sql, msg;
    private int row;
    protected void Button1_Click(object sender, EventArgs e)
    {
        cname = Request.Form["cnameTextBox"].ToString();
        phnum = Request.Form["phnumTextBox"].ToString();
        email = Request.Form["email"].ToString();
        subject = subjectTextBox.Text;
        details = detailsTextBox.Text;

        sql = "Insert into ContactTable(ContactName, Subject, Details, PhoneNum, EmailId) values('" + cname + "','" + subject + "','" + details + "','" + phnum + "','" + email + "')";

        row = obj.ExecuteCommand(sql);
        if (row > 0)
        {
            msg = "Contact Inserted Success";
            subjectTextBox.Text = "";
            detailsTextBox.Text = "";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
        }
        else
        {
            msg = "Contact Not Added";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
        }
    }
}