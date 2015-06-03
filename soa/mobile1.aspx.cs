using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.Mobile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.MobileControls;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class mobile1 : System.Web.UI.MobileControls.MobilePage
{
    fed f = new fed();
    DataSet data = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        Session["uname"] = text1.Text;
        Session["pass"] = text2.Text;
         data = f.selectlogin(text1.Text);
        if (text1.Text == data.Tables[0].Rows[0]["username"].ToString() && text2.Text == data.Tables[0].Rows[0]["password"].ToString() && text3.Text =="Producer")
        Response.Redirect("mobile2.aspx");

    }
}
