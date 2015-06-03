using System;
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

public partial class _Default : System.Web.UI.Page 
{
    fed f = new fed();
    DataSet ds = new DataSet();
    
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label2.Visible = true;
            Image3.Visible = true; //GridView1.Visible = false;
        } 
        
        
        //Label4.Visible = false;
    }
    //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    str = DropDownList1.SelectedItem.Text;
    //    GridView1.Visible = true;
    //    ds = f.show(str);
    //    GridView1.DataSource = ds;
    //    GridView1.DataBind();

    //}
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       Session["str"] = DropDownList1.SelectedItem.Text;
       // GridView1.Visible = true;
            //if (str == "Server1")
            //{
            //   ds = f.show1(str);
            //   GridView1.DataSource = ds;
            //   GridView1.DataBind();
            //}
       
        
            //if (str == "Server2")
            //{
            //    ds = f.show2(str);
            //    GridView1.DataSource = ds;
            //    GridView1.DataBind();
            //}
            
            
            //    if (str == "Server3")
            //    {
            //        ds = f.show3(str);
            //        GridView1.DataSource = ds;
            //        GridView1.DataBind();
            //    }
               
                
            //        if (str == "Server4")
            //        {
            //            ds = f.show4(str);
            //            GridView1.DataSource = ds;
            //            GridView1.DataBind();
            //        }
                   
            //            if (str == "Server5")
            //        {
            //            ds = f.show5(str);
            //            GridView1.DataSource = ds;
            //            GridView1.DataBind();
            //        }

                        
                        
        
        
        
    }






    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("federation1.aspx");
    }
}
