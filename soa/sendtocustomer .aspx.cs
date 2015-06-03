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

public partial class sendtocustomer_ : System.Web.UI.Page
{
    fed f = new fed();
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["soa"]);
    DataSet ds = new DataSet();
    DataSet ds1 = new DataSet();
    DataSet ds2 = new DataSet();
    Int32 sid,skey,supid,pid;
    int k = 0;
    string prod;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select id from register where username='"+(string)Session["uname"]+"' and password='"+(string)Session["pass"]+"' and usertype='Supplier'", con);
            sid = Convert.ToInt32(cmd1.ExecuteScalar());
            SqlDataAdapter adp = new SqlDataAdapter("select customerid from supplier where supplierid='"+sid+"' ", con);
            adp.Fill(ds);
            DropDownList1.Items.Add("--Select--");
            for (int i = 0; i < ds.Tables.Count; i++)
            {
                DropDownList1.Items.Add(ds.Tables[0].Rows[i]["customerid"].ToString());
            }

        }
        Panel1.Visible = false;
        Label6.Visible = false;
        product.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
           Panel1.Visible = true;
       
            con.Open();
            SqlCommand cmd5 = new SqlCommand("select id from register where username='" + (string)Session["uname"] + "' and password='" + (string)Session["pass"] + "' and usertype='Supplier'", con);
            supid = Convert.ToInt32(cmd5.ExecuteScalar());
            SqlCommand cmd6 = new SqlCommand("select skey from supplier where supplierid='" + supid + "' and customerid='" + Convert.ToInt32(DropDownList1.SelectedItem.Text) + "'", con);
            skey = Convert.ToInt32(cmd6.ExecuteScalar());
            if (Convert.ToInt32(TextBox1.Text) == supid && Convert.ToInt32(TextBox2.Text) == skey)
            {
                SqlDataAdapter adp1 = new SqlDataAdapter("select producerid,pkey,customerid,ckey from supplier where supplierid='" + supid + "'", con);
                adp1.Fill(ds1);
                SqlDataAdapter adp2 = new SqlDataAdapter("select producerid,pkey,customerid,ckey from customer", con);
                adp2.Fill(ds2);
                for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
                {
                    if (ds1.Tables[0].Rows[0]["producerid"] != ds2.Tables[0].Rows[i]["producerid"] && ds1.Tables[0].Rows[0]["pkey"] != ds2.Tables[0].Rows[i]["pkey"] && ds1.Tables[0].Rows[0]["customerid"] != ds2.Tables[0].Rows[i]["customerid"] && ds1.Tables[0].Rows[0]["ckey"] != ds2.Tables[0].Rows[i]["ckey"])
                    {
                        
                    }
                    k = 1;

                }
                if (k == 1)
                {

                    SqlCommand cmd4 = new SqlCommand("update customer set supplystatus='Sent' where producerid='" + ds1.Tables[0].Rows[0]["producerid"] + "' and pkey='" + ds1.Tables[0].Rows[0]["pkey"] + "' and customerid='" + ds1.Tables[0].Rows[0]["customerid"] + "' and ckey='" + ds1.Tables[0].Rows[0]["ckey"] + "' ", con);
                    Convert.ToInt32(cmd4.ExecuteScalar());
                    Label3.Text = "Supplied Successfully";
                    Label10.Visible = false;
                }

            }
            else
            {
                Label10.Text = "You Are a Intruder";
            }

        }

    protected void  DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
{
         con.Open();
        SqlCommand cmd8 = new SqlCommand("select id from register where username='" + (string)Session["uname"] + "' and password='" + (string)Session["pass"] + "' and usertype='Supplier'", con);
        sid = Convert.ToInt32(cmd8.ExecuteScalar());
        SqlCommand cmd2 = new SqlCommand("select producerid from producer where supplierid='"+sid+"'", con);
        pid = Convert.ToInt32(cmd2.ExecuteScalar());
        SqlCommand cmd3 = new SqlCommand("select product from register where id='"+pid+"'", con);
        prod = Convert.ToString(cmd3.ExecuteScalar());
        Label6.Visible = true;
        product.Visible = true;
        product.Text = prod;
        Panel1.Visible = true;
}
}
    

