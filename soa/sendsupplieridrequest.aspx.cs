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

public partial class sendsupplieridrequest : System.Web.UI.Page
{
    fed f = new fed();
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["soa"]);
    DataSet ds = new DataSet();
    DataSet ds1 = new DataSet();
    DataSet ds2 = new DataSet();
    Int32 pid,cid;
    string pname,cname;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            SqlDataAdapter adp = new SqlDataAdapter("select id,name from register where username='" + (string)Session["uname"] + "' and password='" + (string)Session["pass"] + "'", con);
            adp.Fill(ds);
            pid = Convert.ToInt32(ds.Tables[0].Rows[0]["id"]);
            pname = Convert.ToString(ds.Tables[0].Rows[0]["name"]);   
            SqlDataAdapter adp1 = new SqlDataAdapter("select customerid from session where producerid='" + pid + "' and producername='" + pname + "'", con);
            adp1.Fill(ds1);
            //cid = Convert.ToInt32(ds1.Tables[0].Rows[0]["customerid"]);
            //cname = Convert.ToString(ds1.Tables[0].Rows[0]["customername"]);
            DropDownList3.Items.Add("--Select--");
            for (int i = 0; i < ds1.Tables.Count; i++)
            {
                DropDownList3.Items.Add(ds1.Tables[0].Rows[i]["customerid"].ToString());
            }
            SqlDataAdapter adp2 = new SqlDataAdapter("select id from register where producerid='" + pid + "'", con);
            adp2.Fill(ds2);
            DropDownList1.Items.Add("--Select--");
            for (int i = 0; i < ds2.Tables.Count; i++)
            {
                DropDownList1.Items.Add(ds2.Tables[0].Rows[i]["id"].ToString());
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select id,name from register where username='"+(string)Session["uname"]+"' and password='"+(string)Session["pass"]+"'",con);
        adp.Fill(ds);
        pid = Convert.ToInt32(ds.Tables[0].Rows[0]["id"]);
        pname = Convert.ToString(ds.Tables[0].Rows[0]["name"]);        
        f.updatesupplier(Convert.ToInt32(DropDownList1.SelectedItem.Text),Label8.Text,pid,Convert.ToInt32(DropDownList3.SelectedItem.Text));
        Label3.Text = "Submited Successfully";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select name from register where id='" + Convert.ToInt32(DropDownList1.SelectedItem.Text) + "'", con);
        Label8.Text = Convert.ToString(cmd1.ExecuteScalar());
    }
}
