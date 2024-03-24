using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class EditStaffPage : System.Web.UI.Page
{
    private DBClass obj;
    private SqlDataReader reader;
    private String fname, lname, phnum, uname, pwd, emailid, address, sql, id, aadhar, filename;
    protected void Page_Load(object sender, EventArgs e)
    {
        obj = new DBClass();
        if (!IsPostBack)
        {
            id = Request["id"].ToString();
            sql = "Select * from newstaff where staffid = " + id;
            reader = obj.GetReader(sql);
            if (reader.Read())
            {
                fname = reader[1].ToString();
                lname = reader[2].ToString();
                phnum = reader["PhoneNum"].ToString();
                emailid = reader["EmailId"].ToString();
                uname = reader["Uname"].ToString();
                pwd = reader["Pwd"].ToString();
                address = reader["Address"].ToString();
                staffidTextBox.Text = id;
                fnameTextBox.Text = fname;
                lnameTextBox.Text = lname;
                unameTextBox.Text = uname;
                pwdTextBox.Text = pwd;
                emailTextBox.Text = emailid;
                phnumTextBox.Text = phnum;
                pwdTextBox.Text = pwd;
                addressTextBox.Text = address;

            }
        }
    }
    private String msg;
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
                    if (aadharFileUpload.HasFile)
        {
            aadharFileUpload.SaveAs(Server.MapPath("~/assets/img/" + aadharFileUpload.FileName));
            aadhar = aadharFileUpload.FileName;
            if (imageFileUpload.HasFile)
            {
                imageFileUpload.SaveAs(Server.MapPath("~/assets/img/" + imageFileUpload.FileName));
                filename = imageFileUpload.FileName;

            id = Request["id"].ToString();

            id= staffidTextBox.Text;
            fname =fnameTextBox.Text;
            lname=lnameTextBox.Text;
            uname=unameTextBox.Text;
            pwd=pwdTextBox.Text;
            emailid=emailTextBox.Text;
            phnum= phnumTextBox.Text;
            pwd= pwdTextBox.Text;
            address= addressTextBox.Text;

            sql = "Update NewStaff set firstname = '"+fname+"' , lastname = '"+lname+"', uname = '"+uname+"', pwd = '"+pwd+"', phonenum='"+phnum+"', emailid='"+emailid+"', aadharnum='"+aadhar+"', imagefile='"+filename+"' where staffid = " + id;
            Response.Write(sql);
            addressTextBox.Text = sql;
            int row = obj.ExecuteCommand(sql);
            if (row > 0)
            {
                msg = "Staff Updated Success";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
                Response.Redirect("AdminViewStaffs.aspx");
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
        else
        {
            msg = "Upload Aadhar Image";
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