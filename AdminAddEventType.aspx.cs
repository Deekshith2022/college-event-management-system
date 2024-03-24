using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminAddEventType : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        obj = new DBClass();
    }
    private DBClass obj;
    private String eventtype, sql, msg;
    private int row;
    protected void Button1_Click(object sender, EventArgs e)
    {
        eventtype = eventtypeTextBox.Text;
        sql = "Insert into NewEventType(EventType) values('" + eventtype + "')";

        row = obj.ExecuteCommand(sql);
        if (row > 0)
        {
            msg = "EventType Inserted Success";
            eventtypeTextBox.Text = "";

            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
        }
        else
        {
            msg = "EventType Not Added";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
        }
    }
}