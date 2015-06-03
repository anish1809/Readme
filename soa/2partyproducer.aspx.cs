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
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class _2partyproducer : System.Web.UI.Page
{
    fed f = new fed();
    DataSet ds = new DataSet();
    DataSet ds1 = new DataSet();
    DataSet ds2 = new DataSet();
    DataSet ds3 = new DataSet();
    Int32 pid;
    string pname;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["soa"]);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            SqlDataAdapter adp = new SqlDataAdapter("select id,name,product from register where username='" + (string)Session["uname"] + "' and password='" + (string)Session["pass"] + "'", con);
            adp.Fill(ds);
            pid = Convert.ToInt32(ds.Tables[0].Rows[0]["id"]);
            pname = Convert.ToString(ds.Tables[0].Rows[0]["name"]);
            SqlDataAdapter adp1 = new SqlDataAdapter("select customerid from prod where producerid='" + pid + "' and producername='" + pname + "'", con);
            adp1.Fill(ds1);
            //cid = Convert.ToInt32(ds1.Tables[0].Rows[0]["customerid"]);
            //cname = Convert.ToString(ds1.Tables[0].Rows[0]["customername"]);
            DropDownList1.Items.Add("--Select--");
            for (int i = 0; i < ds1.Tables.Count; i++)
            {
                DropDownList1.Items.Add(ds1.Tables[0].Rows[i]["customerid"].ToString());
            }
            SqlDataAdapter adp2 = new SqlDataAdapter("select id,name,product from register where producerid='" + pid + "'", con);
            adp2.Fill(ds2);
            DropDownList2.Items.Add("--Select--");
            for (int i = 0; i < ds2.Tables.Count; i++)
            {
                DropDownList2.Items.Add(ds2.Tables[0].Rows[i]["id"].ToString());
            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select id from register where username='" + (string)Session["uname"] + "' and password='" + (string)Session["pass"] + "'", con);
        adp.Fill(ds);
        pid = Convert.ToInt32(ds.Tables[0].Rows[0]["id"]);
        f.savesupply(Convert.ToInt32( DropDownList2.SelectedItem.Text),Label6.Text,pid,Convert.ToInt32(DropDownList1.SelectedItem.Text),Label7.Text);
        Label3.Text="Sent Successfully";
    }
   
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select id,product from register where username='" + (string)Session["uname"] + "' and password='" + (string)Session["pass"] + "'", con);
        adp.Fill(ds);
        pid = Convert.ToInt32(ds.Tables[0].Rows[0]["id"]);
        SqlDataAdapter adp2 = new SqlDataAdapter("select name,product from register where id='" + Convert.ToInt32(DropDownList2.SelectedItem.Text) + "' and Producerid='" + Convert.ToInt32(ds.Tables[0].Rows[0]["id"]) + "'", con);
        adp2.Fill(ds3);
        Label6.Text=Convert.ToString(ds3.Tables[0].Rows[0]["name"]);
        Label7.Text=Convert.ToString(ds.Tables[0].Rows[0]["product"]);
    }
    
}
