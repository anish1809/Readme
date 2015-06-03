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
using System.Collections;
using System.Data.SqlClient;


public partial class credential : System.Web.UI.Page
{
    fed f = new fed();
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["soa"]);
    DataSet ds1 = new DataSet();
    DataSet ds2 = new DataSet();
    DataSet ds3 = new DataSet();
    DataSet ds4 = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            SqlDataAdapter adp1 = new SqlDataAdapter("select producerid from session",con);
            adp1.Fill(ds2);
            DropDownList1.Items.Add("--Select--");
            for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
            {
                DropDownList1.Items.Add(ds2.Tables[0].Rows[i]["producerid"].ToString());
            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Random val = new Random();
        TextBox1.Text = Convert.ToString(val.Next(5) + 2);//10
        TextBox4.Text = Convert.ToString(val.Next(5) + 2);//10
        TextBox11.Text = Convert.ToString(val.Next(5) + 2);
        TextBox2.Text = Convert.ToString(val.Next(10) + 5);//40
        TextBox5.Text = Convert.ToString(val.Next(50) + 10);//100
        TextBox12.Text = Convert.ToString(val.Next(60) + 10);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        double g, n,n1,x,y,y1;
        long a, b,c;
        try
        {
            g = Convert.ToDouble(TextBox1.Text);
            n = Convert.ToDouble(TextBox4.Text);
            x = Convert.ToDouble(TextBox2.Text);
            y = Convert.ToDouble(TextBox5.Text);
            n1 = Convert.ToDouble(TextBox11.Text);
            y1 = Convert.ToDouble(TextBox12.Text);
            a = Convert.ToInt64(Math.Pow(g, x)) % Convert.ToInt64(n);
            b = Convert.ToInt64(Math.Pow(g, y)) % Convert.ToInt64(n);
            c = Convert.ToInt64(Math.Pow(g, y1)) % Convert.ToInt64(n1);
            TextBox7.Text = Convert.ToString(a);
            TextBox8.Text = Convert.ToString(b);
            TextBox13.Text = Convert.ToString(c);
        }
        catch (OverflowException exe)
        {
            Response.Write(exe.Message);
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        double g, n, x, y,n1,y1;
        long a, b,c;

        g = Convert.ToDouble(TextBox1.Text);
        n = Convert.ToDouble(TextBox4.Text);
        x = Convert.ToDouble(TextBox2.Text);
        y = Convert.ToDouble(TextBox5.Text);
        a = Convert.ToInt64(TextBox7.Text);
        b = Convert.ToInt64(TextBox8.Text);
        n1 = Convert.ToDouble(TextBox11.Text);
        c = Convert.ToInt64(TextBox13.Text);
        y1 = Convert.ToDouble(TextBox12.Text);
        this.TextBox3.Text = Convert.ToString(Convert.ToInt64(Math.Pow(b, x)) % Convert.ToInt64(n));
        this.TextBox6.Text = Convert.ToString(Convert.ToInt64(Math.Pow(a, y)) % Convert.ToInt64(n));
        this.TextBox14.Text = Convert.ToString(Convert.ToInt64(Math.Pow(c,y1)) % Convert.ToInt64(n1));
        f.updatesession(Convert.ToInt32(DropDownList1.SelectedItem.Text),Convert.ToInt32(DropDownList2.SelectedItem.Text),Convert.ToInt32(DropDownList3.SelectedItem.Text),g, n, x, y, a, b, TextBox3.Text, TextBox6.Text,n1,y1,c,TextBox14.Text);
        Label25.Text = "ID Created Successfully";

    }
   
    protected void Button4_Click(object sender, EventArgs e)
    {
        double g, n, x, y;
        long a, b;

        g = Convert.ToDouble(TextBox1.Text);
        n = Convert.ToDouble(TextBox4.Text);
        x = Convert.ToDouble(TextBox2.Text);
        y = Convert.ToDouble(TextBox5.Text);
        a = Convert.ToInt64(TextBox7.Text);
        b = Convert.ToInt64(TextBox8.Text);
       // n1 = Convert.ToDouble(TextBox11.Text);
       // c = Convert.ToInt64(TextBox13.Text);
       // y1 = Convert.ToDouble(TextBox12.Text);
        this.TextBox3.Text = Convert.ToString(Convert.ToInt64(Math.Pow(b, x)) % Convert.ToInt64(n));
        this.TextBox6.Text = Convert.ToString(Convert.ToInt64(Math.Pow(a, y)) % Convert.ToInt64(n));
       // this.TextBox14.Text = Convert.ToString(Convert.ToInt64(Math.Pow(c, y1)) % Convert.ToInt64(n1));
        f.savecustomer(Convert.ToInt32(DropDownList1.SelectedItem.Text),Convert.ToInt32(DropDownList2.SelectedItem.Text),pname.Text, cname.Text, g, n, x, y, a, b, TextBox3.Text, TextBox6.Text);
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        double g,x,n,n1, y1;
        long a,b,c;

        g = Convert.ToDouble(TextBox1.Text);
        n = Convert.ToDouble(TextBox4.Text);
        x = Convert.ToDouble(TextBox2.Text);
        //y = Convert.ToDouble(TextBox5.Text);
        a = Convert.ToInt64(TextBox7.Text);
        b = Convert.ToInt64(TextBox8.Text);
        n1 = Convert.ToDouble(TextBox11.Text);
        c = Convert.ToInt64(TextBox13.Text);
        y1 = Convert.ToDouble(TextBox12.Text);
        this.TextBox3.Text = Convert.ToString(Convert.ToInt64(Math.Pow(b, x)) % Convert.ToInt64(n));
      //  this.TextBox6.Text = Convert.ToString(Convert.ToInt64(Math.Pow(a, y)) % Convert.ToInt64(n));
        this.TextBox14.Text = Convert.ToString(Convert.ToInt64(Math.Pow(c, y1)) % Convert.ToInt64(n1));
        f.saveproducer(Convert.ToInt32(DropDownList1.SelectedItem.Text),Convert.ToInt32(DropDownList3.SelectedItem.Text),pname.Text,sname.Text, g, n1, x, y1, a, c, TextBox3.Text, TextBox14.Text,Convert.ToInt32(DropDownList2.SelectedItem.Text));
    }
    
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
       SqlCommand cmd1 = new SqlCommand("select producername from session where producerid='"+DropDownList1.SelectedItem.Text+"'", con);
       pname.Text= Convert.ToString(cmd1.ExecuteScalar());
       SqlDataAdapter adp2 = new SqlDataAdapter("select customerid from session where producerid='" + DropDownList1.SelectedItem.Text + "'", con);
       adp2.Fill(ds3);
       DropDownList2.Items.Add("--Select--");
       for (int i = 0; i < ds3.Tables[0].Rows.Count; i++)
       {
           DropDownList2.Items.Add(ds3.Tables[0].Rows[0]["customerid"].ToString());
       }
       SqlDataAdapter adp3 = new SqlDataAdapter("select supplierid from session where producerid='" + DropDownList1.SelectedItem.Text + "'", con);
       adp3.Fill(ds4);
       DropDownList3.Items.Add("--Select--");
       for (int i = 0; i < ds4.Tables[0].Rows.Count; i++)
       {
           DropDownList3.Items.Add(ds4.Tables[0].Rows[0]["supplierid"].ToString());
       }

     
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd2 = new SqlCommand("select customername from session where customerid='" + DropDownList2.SelectedItem.Text + "'", con);
        cname.Text = Convert.ToString(cmd2.ExecuteScalar());
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd3 = new SqlCommand("select suppliername from session where supplierid='" + DropDownList3.SelectedItem.Text + "'", con);
        sname.Text = Convert.ToString(cmd3.ExecuteScalar());
    }
}
