using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class CustomerSelectEvent1 : System.Web.UI.Page
{
    private DBClass obj;
    private SqlDataReader reader;
    String eventid, sql, date, userid;
    int row;
    protected void Page_Load(object sender, EventArgs e)
    {
        obj = new DBClass();
        if (!IsPostBack)
        {
            eventid = Request["EventId"].ToString();
            sql = "Select * from newevent where eventid = " + eventid;
            reader = obj.GetReader(sql);
            if (reader.Read())
            {
                eventidTextBox.Text = reader[0].ToString();
                enameTextBox.Text = reader[1].ToString();
                eventtypeTextBox.Text = reader[2].ToString();
                numofdaysTextBox.Text = reader[3].ToString();
                priceTextBox.Text = reader[4].ToString();
                commentsTextBox.Text = reader[5].ToString();
                Image1.ImageUrl = "~/assets/img/" + reader[6].ToString();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        date = Request.Form["dateTextBox"].ToString();
        userid = Session["userid"].ToString();
        sql = "Insert into SelectedEvent(EventId, UserId, EventName, EventType, Price, SelectedDate, EventStatus) values(" + eventidTextBox.Text + "," + userid + ",'" + enameTextBox.Text + "','" + eventtypeTextBox.Text + "','"  + priceTextBox.Text + "','" + date + "','EventSelected')";
        
        
        row = obj.ExecuteCommand(sql);
        if (row > 0)
        {
            String msg = "Event Selected";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
        }
    }
}