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

public partial class login : System.Web.UI.Page
{
    fed f = new fed();
    DataSet data = new DataSet();
    string user, pwd;

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["uname"] = TextBox1.Text;
        Session["pass"] = TextBox2.Text;
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        data = f.selectlogin(TextBox1.Text);

        if (DropDownList1.SelectedItem.Text == "--Select--")
        {
            MsgBox.Show("Select User Type");
        }

        else
        {
            if (TextBox1.Text == "session" && TextBox2.Text == "session" && DropDownList1.SelectedItem.Text == "Session")
                Response.Redirect("session.aspx");
             else

                user = data.Tables[0].Rows[0]["username"].ToString();
                pwd = data.Tables[0].Rows[0]["password"].ToString();
            if (TextBox1.Text == data.Tables[0].Rows[0]["username"].ToString() && TextBox2.Text == data.Tables[0].Rows[0]["password"].ToString() && DropDownList1.SelectedItem.Text == "Producer")
                Response.Redirect("producer.aspx");
            else
                if (TextBox1.Text == data.Tables[0].Rows[0]["username"].ToString() && TextBox2.Text == data.Tables[0].Rows[0]["password"].ToString() && DropDownList1.SelectedItem.Text == "Customer")
                    Response.Redirect("customer.aspx");
                else
                    if (TextBox1.Text == user && TextBox2.Text == pwd && DropDownList1.SelectedItem.Text == "Supplier")
                        Response.Redirect("sendtocustomer .aspx");
                   
                       
            
        }

    }
}
