using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerViewReports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String userid = Session["userid"].ToString();
        DBClass obj;
        if (!IsPostBack)
        {
            obj = new DBClass();
            String sql = "Select * from selectedevent where userid = " + userid;
            SqlDataSource1.SelectCommand = sql;
            SqlDataSource1.DataBind();
        }
    }
}