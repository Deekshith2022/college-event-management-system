using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditEventTypePage : System.Web.UI.Page
{
    String id, eventname;
    DBClass obj;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            id = Request["id"].ToString();
            eventname = Request["eventtype"].ToString();
            eventtypeTextBox.Text = eventname;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            obj = new DBClass();
                    id = Request["id"].ToString();
                    eventname = eventtypeTextBox.Text;
                    String sql = "Update NewEventType set eventtype = '" + eventname +  "' where eventtypeid = " + id;
                    String msg="";
                    int row = obj.ExecuteCommand(sql);
                    if (row > 0)
                    {
                        msg = "EventType Updated Success";
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
                        Response.Redirect("AdminViewEventTypes.aspx");
                    }
                    else
                    {
                        msg = "EventType Not Updated";
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
                    }
                }
        catch (Exception ex)
        {
            String msg = ex.Message;
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
        }
    }
}