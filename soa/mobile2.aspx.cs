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



public partial class Default2 : System.Web.UI.MobileControls.MobilePage
{
    fed f = new fed();
    DataSet ds = new DataSet();
  
    

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void submit_Click(object sender, EventArgs e)
    {

      label3.Text = f.mobilesearch((string)Session["uname"],(string)Session["pass"],Convert.ToInt32( text1.Text));

    }
}
