using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class UserLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        obj = new DBClass();
        conn = obj.getConn();
    }
    private String uname, pwd, sql;
    private DBClass obj;
    private SqlConnection conn;
    private SqlDataReader reader;
    private int row;
    protected void Button1_Click(object sender, EventArgs e)
    {
        uname = UnameTextBox.Text;
        pwd = PwdTextBox.Text;
        sql = "select * from newuser where uname = '" + uname + "' and pwd = '" + pwd + "'";
        Response.Write(sql);
        reader = obj.GetReader(sql);
        if (reader.Read())
        {
            Session["userid"] = reader[0].ToString();
            Response.Redirect("CustomerHomePage.aspx");
        }
        else
        {
            String msg = "Invalid UserName/Password";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
        }
    }
}