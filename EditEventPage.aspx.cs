using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class EditEventPage : System.Web.UI.Page
{
    private DBClass obj;
    private SqlDataReader reader;
    private String ename, etype, numofdays, price, comments, sql, id, filename;
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
            id = Request["id"].ToString();
            sql = "Select * from newevent where eventid = " + id;
            reader = obj.GetReader(sql);
            if (reader.Read())
            {
                ename = reader[1].ToString();
                etype = reader[2].ToString();
                numofdays = reader[3].ToString();
                price = reader[4].ToString();
                comments = reader[5].ToString();
                filename = reader[6].ToString();

                enameTextBox.Text = ename;
                numofdaysTextBox.Text = numofdays;
                priceTextBox.Text = price;
                commentsTextBox.Text = comments;
            }
        }
    }
    private String msg;
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            
                if (imageFileUpload.HasFile)
                {
                    imageFileUpload.SaveAs(Server.MapPath("~/assets/img/" + imageFileUpload.FileName));
                    filename = imageFileUpload.FileName;

                    id = Request["id"].ToString();

                    
                    ename = enameTextBox.Text;
                    etype = etypeDropDownList.SelectedItem.ToString();
                    numofdays = numofdaysTextBox.Text;
                    price = priceTextBox.Text;
                    comments=commentsTextBox.Text;                    

                    sql = "Update NewEvent set eventname = '" + ename + "' , eventtype = '" + etype + "', numofdays = " + numofdays + ", comments = '" + comments  + "', ImageFile = '"+filename+"' where eventid = " + id;
                    Response.Write(sql);
                    String msg="";
                    int row = obj.ExecuteCommand(sql);
                    if (row > 0)
                    {
                        msg = "Event Updated Success";
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
                        Response.Redirect("AdminViewEvents.aspx");
                    }
                    else
                    {
                        msg = "Staff Not Updated";
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
                    }
                }
                else
                {
                    msg = "Upload Image";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
                }
        }
        catch (Exception ex)
        {
            String msg = ex.Message;
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
        }
    }
}