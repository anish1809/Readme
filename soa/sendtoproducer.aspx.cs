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

public partial class sendtoproducer : System.Web.UI.Page
{
    fed f = new fed();
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["soa"]);
    DataSet ds = new DataSet();
    Int32 cid;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            con.Open();

            SqlCommand cmd1 = new SqlCommand("select id from register where username='" + (string)Session["uname"] + "' and password='" + (string)Session["pass"] + "' and usertype='Customer'", con);
            cid = Convert.ToInt32(cmd1.ExecuteScalar());
            SqlDataAdapter adp = new SqlDataAdapter("select producerid from producer where customerid='"+cid+"'", con);
            adp.Fill(ds);
            DropDownList1.Items.Add("--Select--");
            for (int i = 0; i < ds.Tables.Count; i++)
            {
                DropDownList1.Items.Add(ds.Tables[0].Rows[i]["producerid"].ToString());
            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label3.Text = "successfully Sent";
    }
}
