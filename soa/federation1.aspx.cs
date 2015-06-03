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

public partial class federation1 : System.Web.UI.Page
{
    fed f = new fed();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = (string)Session["str"];
        if (str == "Server1")
        {
            ds = f.show1(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }


        if (str == "Server2")
        {
            ds = f.show2(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }


        if (str == "Server3")
        {
            ds = f.show3(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }


        if (str == "Server4")
        {
            ds = f.show4(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        if (str == "Server5")
        {
            ds = f.show5(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
