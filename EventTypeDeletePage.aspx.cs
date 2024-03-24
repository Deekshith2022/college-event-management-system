using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EventTypeDeletePage : System.Web.UI.Page
{
    DBClass obj;
    protected void Page_Load(object sender, EventArgs e)
    {
        obj = new DBClass();
        String eventid = Request["id"].ToString();
        String sql = "Delete from NewEventtype where eventtypeid = " + eventid;
        obj.ExecuteCommand(sql);
        Response.Redirect("AdminViewEventTypes.aspx");
    }
}