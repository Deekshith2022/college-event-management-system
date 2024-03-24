using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerSelectEvent2 : System.Web.UI.Page
{
    private String sql;
    private int row;
    private DBClass obj;
    protected void Page_Load(object sender, EventArgs e)
    {
        obj = new DBClass();
        if (!IsPostBack)
        {
            String paymentid = Request["payment_id"].ToString();
            String instrument_type = Request["instrument_type"].ToString();
            String billing_instrument = Request["billing_instrument"].ToString();
            String status = Request["status"].ToString();
            String currency = Request["currency"].ToString();
            String purpose = Request["purpose"].ToString();

            paymentIdLabel.Text = "Payment Id : " + paymentid;
            instrumenttypeLabel.Text = "Instrument Type : " + instrument_type;
            billinginstrumentLabel.Text = "Billing Instrument : " + billing_instrument;
            statusLabel.Text = "Status : " + status;
            currencyLabel.Text = "Currency : " + currency;
            purposeLabel.Text = "Purpose : " + purpose;

            sql = "Update SelectedEvent set Eventstatus = 'PaymentDone', paymentid = '" + paymentid + "', InstrumentType='" + instrument_type + "', billinginstrument='" + billing_instrument + "', status = '" + status + "', Currency = '" + currency + "', Purpose='" + purpose + "' where SelectedId in (Select MAX(SelectedId) from SelectedEvent)";

            row = obj.ExecuteCommand(sql);
            if (row > 0)
            {
                String msg = "Event Selected Successfull & Payment Updated One of the executive will give a call ASAP";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
            }
        }
    }
}