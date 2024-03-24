using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminViewDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String selectid = Request["selectedid"].ToString();
            String sql = "Select * from selectedevent where selectedid = " + selectid;
            SqlDataSource1.SelectCommand = sql;
            SqlDataSource1.DataBind();
        }
    }
}