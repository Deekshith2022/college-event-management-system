using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class AdminLogin : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        uname = UnameTextBox.Text;
        pwd = PwdTextBox.Text;
        sql = "select * from admintable where adminname = '" + uname + "' and password = '" + pwd + "'";
        
        reader = obj.GetReader(sql);
        
        if (reader.Read())
        {
            Response.Redirect("AdminHomePage.aspx");
        }
        else
        {
            String msg = "Invalid UserName/Password";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
        }
    }
}