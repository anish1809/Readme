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

public partial class registration : System.Web.UI.Page
{
    fed f = new fed();

    protected void Page_Load(object sender, EventArgs e)
    {
        Label12.Visible = false;
        TextBox9.Visible = false;
        RequiredFieldValidator11.Visible = false;
        Label13.Visible = false;
        DropDownList2.Visible = false;

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "Producer")
        {
            Label12.Visible = true;
            TextBox9.Visible = true;
            RequiredFieldValidator11.Visible = true;

        }
        else
            if (DropDownList1.SelectedItem.Text == "Supplier")
            {
                Label13.Visible = true;
                DropDownList2.Visible = true;
                
            }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label10.Visible = true;
        Int32 p;
        if (DropDownList1.SelectedItem.Text!="Supplier"||DropDownList2.SelectedItem.Text != "")
        {
            string pid=DropDownList2.SelectedItem.Text;

            if(pid=="")
            {
                p=0;
            }
            else
            {
             p= Convert.ToInt32(pid);
            }

            f.saveregister(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text, TextBox8.Text, DropDownList1.SelectedItem.Text, TextBox9.Text,p);
            Label10.Text = "Registered Successfully";
        }
        else
            MsgBox.Show("Select producer name");
    }

        protected void Button2_Click(object sender, EventArgs e)
    {
        Label10.Visible = false;
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        DropDownList1.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 0; 
       

    }
}