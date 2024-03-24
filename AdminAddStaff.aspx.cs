using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AdminAddStaff : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        obj = new DBClass();
        sql = "Select * from depttable";
        reader = obj.GetReader(sql);
        while (reader.Read())
        {
            deptDropDownList.Items.Add(reader[1].ToString());
        }
    }
    private DBClass obj;
    private SqlDataReader reader;
    private String fname, lname, uname, pwd, phnum, email, address, aadharnum, sql, filename, msg, dept;
    private int row;
    protected void Button1_Click(object sender, EventArgs e)
    {
        fname = fnameTextBox.Text;
        lname = lnameTextBox.Text;
        uname = unameTextBox.Text;
        pwd = pwdTextBox.Text;
        phnum = phnumTextBox.Text;
        email = Request.Form["email"];
        address = addressTextBox.Text;
        dept = deptDropDownList.SelectedItem.ToString();
        if (aadharFileUpload.HasFile)
        {
            aadharFileUpload.SaveAs(Server.MapPath("~/assets/img/" + aadharFileUpload.FileName));
            aadharnum = aadharFileUpload.FileName;
            if (imageFileUpload.HasFile)
            {
                imageFileUpload.SaveAs(Server.MapPath("~/assets/img/" + imageFileUpload.FileName));
                filename = imageFileUpload.FileName;
                sql = "Insert into NewStaff(FirstName, LastName, UName, Pwd, PhoneNum, EmailId, AadharNum, Address, ImageFile, Dept) values('" + fname + "','" + lname + "','" + uname + "','" + pwd + "','" + phnum + "','" + email + "','" + aadharnum + "','" + address + "','" + filename + "','" + dept + "')";

                row = obj.ExecuteCommand(sql);
                if (row > 0)
                {
                    msg = "Staff Inserted Success";
                    fnameTextBox.Text = "";
                    lnameTextBox.Text = "";
                    unameTextBox.Text = "";
                    pwdTextBox.Text = "";
                    phnumTextBox.Text = "";
                    addressTextBox.Text = "";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
                }
                else
                {
                    msg = "Staff Not Added";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
                }
            }
            else
            {
                msg = "Upload Image";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
            }
        }
        else
        {
            msg = "Upload Aadhar Image";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
        }
    }
}