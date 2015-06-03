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

public partial class getcustomerkey : System.Web.UI.Page
{
    fed f = new fed();
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["soa"]);
    DataSet data=new DataSet();
    DataSet data1 = new DataSet();
    string cname;
    Int32 cid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.Items.Add("--Select--");
            con.Open();
            SqlDataAdapter adp1 = new SqlDataAdapter("select id from register where  usertype='Producer'", con);
            adp1.Fill(data1);
            for (int i = 0; i < data1.Tables[0].Rows.Count; i++)
            {
                DropDownList1.Items.Add(data1.Tables[0].Rows[i]["id"].ToString());

            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select id,name from register where username='"+(string)Session["uname"]+"' and Password='"+(string)Session["pass"]+"' and usertype='Customer'",con);
        adp.Fill(data);
        cid=Convert.ToInt32(data.Tables[0].Rows[0]["id"]);
        cname=Convert.ToString( data.Tables[0].Rows[0]["name"]);
        f.savesession(Convert.ToInt32(DropDownList1.Text),Label6.Text,Label7.Text,cid,cname);
        Label3.Text = "Submited Successfully";
    }


    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select name from register where id='" + Convert.ToInt32(DropDownList1.SelectedItem.Text) + "'",con);
        Label6.Text =Convert.ToString( cmd1.ExecuteScalar());
        SqlCommand cmd2 = new SqlCommand("select product from register where id='" + Convert.ToInt32(DropDownList1.SelectedItem.Text) + "'", con);
        Label7.Text = Convert.ToString(cmd2.ExecuteScalar());
    }
    
    
}