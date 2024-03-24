using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AdminAddEvent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        obj = new DBClass();
        if (!IsPostBack)
        {
            sql = "select * from NewEventType";
            reader = obj.GetReader(sql);
            while (reader.Read())
            {
                etypeDropDownList.Items.Add(reader[1].ToString());
            }
        }
    }
    private DBClass obj;
    private SqlDataReader reader;
    private String eventtype,sql, msg, ename, comments, numofdays, amount, filename;
    private int row;
    protected void Button1_Click(object sender, EventArgs e)
    {

        ename = enameTextBox.Text;
        eventtype = etypeDropDownList.SelectedItem.ToString();
        comments = commentsTextBox.Text;
        numofdays = numofdaysTextBox.Text;
        //numofdays = numofdaysTextBox.Value.ToString();
        amount = priceTextBox.Text;
        filename = imageFileUpload.FileName;

        imageFileUpload.SaveAs(Server.MapPath("~/assets/img/" + imageFileUpload.FileName));
                sql = "Insert into NewEvent(EventName, EventType, NumofDays, Price, Comments, ImageFile) values('" + ename + "','" +  eventtype + "','" + numofdays + "','" + amount + "','" + comments + "','" + filename+ "')";

                row = obj.ExecuteCommand(sql);
                if (row > 0)
                {
                    msg = "Event Inserted Success";
                    enameTextBox.Text = "";
                    numofdaysTextBox.Text = "";
                    priceTextBox.Text = "";
                    commentsTextBox.Text = "";
                    
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
                }
                else
                {
                    msg = "Event Not Added";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
                }
    }
}