using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StaffUpdateStatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DBClass obj;
        if (!IsPostBack)
        {
            obj = new DBClass();
            String selectid = Request["selectedid"].ToString();
            String sql = "Update SelectedEvent set eventstatus = 'Finished' where selectedid = " + selectid;
            obj.ExecuteCommand(sql);
            Response.Redirect("StaffViewReports.aspx");
        }
    }
}