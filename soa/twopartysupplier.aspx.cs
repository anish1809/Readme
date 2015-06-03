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

public partial class twopartysupplier : System.Web.UI.Page
{
    fed f = new fed();
    DataSet ds = new DataSet();
    DataSet ds1 = new DataSet();
    DataSet ds3 = new DataSet();
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["soa"]);


    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select id from register where username='" + (string)Session["uname"] + "' and password='" + (string)Session["pass"] + "'", con);
        adp.Fill(ds);
        SqlDataAdapter adp1 = new SqlDataAdapter("select customerid,producerid from supply where supplierid='"+Convert.ToInt32(ds.Tables[0].Rows[0]["id"])+"'", con);
        adp1.Fill(ds1);
        DropDownList1.Items.Add("--Select--");
        for (int i = 0; i < ds1.Tables.Count; i++)
        {
            DropDownList1.Items.Add(ds1.Tables[0].Rows[i]["customerid"].ToString());
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       // con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select id from register where username='" + (string)Session["uname"] + "' and password='" + (string)Session["pass"] + "'", con);
        adp.Fill(ds);
        SqlDataAdapter adp1 = new SqlDataAdapter("select customerid,producerid from supply where supplierid='" + Convert.ToInt32(ds.Tables[0].Rows[0]["id"]) + "'", con);
        adp1.Fill(ds1);
        SqlDataAdapter adp2 = new SqlDataAdapter("select supplystatus from supply where supplierid='" + Convert.ToInt32(ds.Tables[0].Rows[0]["id"]) + "'and producerid='" + Convert.ToInt32(ds1.Tables[0].Rows[0]["producerid"]) + "' and customerid='" + Convert.ToInt32(DropDownList1.SelectedItem.Text) + "'and supplierid='" + Convert.ToInt32(ds.Tables[0].Rows[0]["id"]) + "' ", con);
        adp2.Fill(ds3);
        string supstat = ds3.Tables[0].Rows[0]["supplystatus"].ToString();
        if (supstat == "Not Send")
        {
            f.updatecustomprod(Convert.ToInt32(ds.Tables[0].Rows[0]["id"]), Convert.ToInt32(ds1.Tables[0].Rows[0]["producerid"]), Convert.ToInt32(DropDownList1.SelectedItem.Text));
            Label3.Text = "Supply Successfully";
        }
        else
            Label3.Text = "Already Sent";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       // con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select id from register where username='" + (string)Session["uname"] + "' and password='" + (string)Session["pass"] + "'", con);
        adp.Fill(ds);
        SqlDataAdapter adp1 = new SqlDataAdapter("select customerid,producerid from supply where supplierid='" + Convert.ToInt32(ds.Tables[0].Rows[0]["id"]) + "'", con);
        adp1.Fill(ds1);
        SqlCommand cmd1 = new SqlCommand("select product from prod where producerid='" + Convert.ToInt32(ds1.Tables[0].Rows[0]["producerid"]) + "'and customerid='" + Convert.ToInt32(ds1.Tables[0].Rows[0]["customerid"]) + "'", con);
        Label7.Text = Convert.ToString(cmd1.ExecuteScalar());
    }
}
