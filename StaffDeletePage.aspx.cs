using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StaffDeletePage : System.Web.UI.Page
{
    
        DBClass obj;
    protected void Page_Load(object sender, EventArgs e)
    {
        obj = new DBClass();
        String id = Request["id"].ToString();
        String sql = "Delete from Newstaff where staffid = " + id;
        obj.ExecuteCommand(sql);
        Response.Redirect("AdminViewStaffs.aspx");
    
    }
}