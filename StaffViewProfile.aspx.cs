using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StaffViewProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String userid = Session["staffid"].ToString();
            String sql = "Select * from Newstaff where staffid = " + userid;
            SqlDataSource1.SelectCommand = sql;
            SqlDataSource1.DataBind();
        }
    }
}