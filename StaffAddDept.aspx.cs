using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StaffAddDept : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        obj = new DBClass();
    }
    private DBClass obj;
    private String deptname, sql, msg;
    private int row;
    protected void Button1_Click(object sender, EventArgs e)
    {
        deptname = deptTextBox.Text;
        sql = "Insert into DeptTable(DeptName) values('" + deptname + "')";

        row = obj.ExecuteCommand(sql);
        if (row > 0)
        {
            msg = "Department Inserted Success";
            deptTextBox.Text = "";

            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
        }
        else
        {
            msg = "Department Not Added";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
        }
    }
}