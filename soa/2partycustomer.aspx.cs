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

public partial class _2partycustomer : System.Web.UI.Page
{
    fed f = new fed();
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["soa"]);
    DataSet data = new DataSet();
    DataSet data1 = new DataSet();
    DataSet data2 = new DataSet();
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
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       // con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select name,product from register where id='"+Convert.ToInt32(DropDownList1.SelectedItem.Text)+"' ", con);
        adp.Fill(data);
        Label6.Text=data.Tables[0].Rows[0]["name"].ToString();
        Label7.Text = data.Tables[0].Rows[0]["product"].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter adp2 = new SqlDataAdapter("select id,name from register where username='"+(string)Session["uname"]+"' and Password='"+(string)Session["pass"]+"' and usertype='Customer'",con);
        adp2.Fill(data2);
        f.savetwopartycustomer(Convert.ToInt32(DropDownList1.SelectedItem.Text),Label6.Text,Label7.Text,Convert.ToInt32(data2.Tables[0].Rows[0]["id"]),data2.Tables[0].Rows[0]["name"].ToString());
        Label3.Text = "Sent Successfully";

    }
}
