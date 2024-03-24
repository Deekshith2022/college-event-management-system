using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddNewUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)    
    {
        obj = new DBClass();
    }
    private DBClass obj;
    private String fname, lname, uname, pwd, phnum, email, address, aadharnum, sql, filename, msg;
    private int row;
    protected void Button1_Click(object sender, EventArgs e)
    {
        fname = Request.Form["fnameTextBox"].ToString();
        lname = Request.Form["lnameTextBox"].ToString();
        uname = Request.Form["unameTextBox"].ToString();
        pwd = Request.Form["pwdTextBox"].ToString();
        phnum = Request.Form["phnumTextBox"].ToString();
        email = Request.Form["email"].ToString();
        address =Request.Form["addressTextBox"].ToString();

        if (aadharFileUpload.HasFile)
        {
            aadharFileUpload.SaveAs(Server.MapPath("~/assets/img/" + aadharFileUpload.FileName));
            aadharnum = aadharFileUpload.FileName;
            if (imageFileUpload.HasFile)
            {
                imageFileUpload.SaveAs(Server.MapPath("~/assets/img/" + imageFileUpload.FileName));
                filename = imageFileUpload.FileName;
                sql = "Insert into NewUser(FirstName, LastName, UName, Pwd, PhoneNum, EmailId, AadharNum, Address, ImageFile) values('" + fname + "','" + lname + "','" + uname + "','" + pwd + "','" + phnum + "','" + email + "','" + aadharnum + "','" + address + "','" + filename + "')";
                Response.Write(sql);
                Label1.Text = sql;
                row = obj.ExecuteCommand(sql);
                if (row > 0)
                {
                    msg = "Student Registration Success";
                    
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
                }
                else
                {
                    msg = "User Not Added";
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