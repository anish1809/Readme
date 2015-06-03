using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class sendidtosupplier : System.Web.UI.Page
{
    fed f = new fed();
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["soa"]);
    DataSet ds = new DataSet();
    string stat;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            con.Open();
            SqlDataAdapter adp = new SqlDataAdapter("select supplierid from producer where status='Not send'", con);
            adp.Fill(ds);
            DropDownList1.Items.Add("--Select--");
            for (int i = 0; i < ds.Tables.Count; i++)
            {
                DropDownList1.Items.Add(ds.Tables[0].Rows[i]["supplierid"].ToString());
            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select status from producer where supplierid='" + Convert.ToInt32(DropDownList1.SelectedItem.Text) + "'", con);
        stat = Convert.ToString(cmd1.ExecuteScalar());
        if (stat == "Not Send")
        {
            f.sendsupplierid(Convert.ToInt32(DropDownList1.SelectedItem.Text));
            Label3.Text = "Successfully Sent";
        }
        else
            MsgBox.Show("Already Sent");

    }
}
