using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

/// <summary>
/// Summary description for fed
/// </summary>
public class fed
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["soa"]);
    DataSet data = new DataSet();
    
    public DataSet show1(string str)
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["joinquery"]);
        
            con.Open();
               SqlDataAdapter adp = new SqlDataAdapter("select * from Server1", con);
                adp.Fill(data);
                return data;
           
    }
    public DataSet show2(string str)
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["joinquery"]);

        con.Open();
        SqlDataAdapter adp1 = new SqlDataAdapter("select * from Server2", con);
        adp1.Fill(data);
        return data;

    }
    public DataSet show3(string str)
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["soa"]);

        con.Open();
        SqlDataAdapter adp2 = new SqlDataAdapter("select * from Server3", con);
        adp2.Fill(data);
        return data;

    }
    public DataSet show4(string str)
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["joinquery"]);

        con.Open();
        SqlDataAdapter adp3 = new SqlDataAdapter("select * from Server4", con);
        adp3.Fill(data);
        return data;

    }
    public DataSet show5(string str)
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["joinquery"]);

        con.Open();
        SqlDataAdapter adp4 = new SqlDataAdapter("select * from Server5", con);
        adp4.Fill(data);
        return data;

    }
    public void updatesession(Int32 pid,Int32 cid,Int32 sid,double g,double n,double x,double y,long a,long b,string k1,string k2,double n1,double y1,long c,string k3)
    {
        con.Open();

        SqlCommand com = new SqlCommand("update session set psnumber='" + g + "',csnumber='" + n + "',ppnumber='" + x + "',cpnumber='" + y + "',psend='" + a + "',csend='" + b + "',pkey='" + k1 + "',ckey='" + k2 + "',ssnumber='" + n1 + "',spnumber='" + y1 + "',ssend='" + c + "',skey='" + k3 + "' where producerid='"+pid+"' and customerid='"+cid+"' and supplierid='"+sid+"'", con);
       com.ExecuteNonQuery();
    }

    public void savecustomer(Int32 pid,Int32 cid,string pn, string cn, double g, double n, double x, double y, long a, long b, string k1, string k2)
    {
        con.Open();

        SqlCommand com = new SqlCommand("insert into customer values('" + pid + "','" + pn + "','" + cid + "','" + cn + "','" + g + "','" + n + "','" + x + "','" + y + "','" + a + "','" + b + "','" + k1 + "','" + k2 + "','')", con);
        com.ExecuteNonQuery();
    }
   public void saveproducer(Int32 pid,Int32 sid,string pn, string sn, double g, double n1, double x, double y1, long a, long c, string k1, string k3,Int32 cid)
    {
        con.Open();

        SqlCommand com = new SqlCommand("insert into producer values('"+pid+"','" + pn + "','"+sid+"','" + sn + "','" + g + "','" + n1 + "','" + x + "','" + y1 + "','" + a + "','" + c + "','" + k1 + "','" + k3 + "','"+cid+"','Not Send')", con);
        com.ExecuteNonQuery ();
    }
   public void saveregister(string name , string dob, string occu, string add , string city,string country , string mobile ,string mailid, string utype,string prod,Int32 pid )
   {
       string id1;
       Int32 id2;
       con.Open();
       SqlCommand cmd = new SqlCommand("select max(id) from register",con);
       id1=Convert.ToString(cmd.ExecuteScalar());
       if (id1 == "")
       {
           id2 = 0+1;
       }
       else
       {
           id2 = Convert.ToInt32(id1)+1;
       }
       SqlCommand com = new SqlCommand("insert into register values('"+id2+"','" + name + "','" + dob + "','" + add + "','" + occu + "','" + city + "','" +country + "','" + mobile + "','" +mailid + "','" +utype + "','" + prod + "','"+mailid+"','"+dob+"','"+pid+"')", con);
       com.ExecuteNonQuery();
   }
   public void savesession(int id, string name,  string product,int cid,string cname)
   {
        con.Open();           
        SqlCommand com = new SqlCommand("insert into session values ('"+id+"','"+name+"','"+product+"','"+cid+"','"+cname+"','','','','','','','','','','','','','','')",con);
        com.ExecuteNonQuery();
   }
   public void savesupply(int sid, string sname, int pid, int cid, string product)
   {
       con.Open();
       SqlCommand com = new SqlCommand("insert into supply values ('" + sid + "','" +sname + "','" + pid + "','" + cid + "','Not Send')", con);
       com.ExecuteNonQuery();
       SqlCommand com1 = new SqlCommand("update prod set supplierid='" + sid + "',supplierName='" + sname + "' where producerid='" + pid + "' and customerid='" + cid + "'", con);
       com1.ExecuteNonQuery();

   }
   public void savetwopartycustomer(int pid, string pname, string product, int cid, string cname)
   {
       con.Open();
       SqlCommand com = new SqlCommand("insert into custom values ('" +cid+ "','" +cname+"','" +pid+ "','" +pname+ "','" +product+ "','Not Send')", con);
       com.ExecuteNonQuery();
       SqlCommand com1 = new SqlCommand("insert into prod values ('" + cid + "','" + cname + "','" + pid + "','" + pname + "','" + product + "','Not Send','','')", con);
       com1.ExecuteNonQuery();
      

   }
   public DataSet selectlogin(string uname)
   {
       con.Open();
       SqlDataAdapter adp4 = new SqlDataAdapter("select username,password from register where username='"+uname+"' ", con);
       adp4.Fill(data);
       return data;
   }
   
   public void updatesupplier(int sid, string sn, int pid, int cid)
   {
       con.Open();

       SqlCommand com = new SqlCommand("update session set supplierid='" + sid + "',suppliername='" + sn + "' where producerid='" + pid + "' and customerid='" + cid + "'", con);
       com.ExecuteNonQuery();
   }
   public void updatecustomprod(int sid, int pid, int cid)
   {
       con.Open();

       SqlCommand com = new SqlCommand("update custom set supplystatus='Sent' where producerid='"+pid+"'and customerid='"+cid+"' ", con);
       com.ExecuteNonQuery();
       SqlCommand com1 = new SqlCommand("update prod set supplystatus='Sent' where producerid='" + pid + "'and customerid='" + cid + "' and supplierid='"+sid+"' ", con);
       com1.ExecuteNonQuery();
       SqlCommand com2 = new SqlCommand("update supply set supplystatus='Sent' where producerid='" + pid + "'and customerid='" + cid + "' and supplierid='" + sid + "' ", con);
       com2.ExecuteNonQuery();

   }
   public void sendsupplierid(int sid)
   {
       try
       {
           Int32 ckey,cid,pid,pkey;
           con.Open();
           SqlDataAdapter adp = new SqlDataAdapter("select * from producer where supplierid='" + sid + "'", con);
           adp.Fill(data);
           pid = Convert.ToInt32(data.Tables[0].Rows[0]["producerid"]);
           pkey = Convert.ToInt32(data.Tables[0].Rows[0]["pkey"]);
           cid = Convert.ToInt32(data.Tables[0].Rows[0]["customerid"]);
           SqlCommand com1 = new SqlCommand("select ckey from session where producerid='" + pid + "' and pkey='" + pkey+ "' and customerid='" +cid + "'", con);
           ckey = Convert.ToInt32(com1.ExecuteScalar());
           SqlCommand com = new SqlCommand("insert into supplier values ('" + Convert.ToInt32(data.Tables[0].Rows[0]["producerid"]) + "','" + data.Tables[0].Rows[0]["producername"].ToString() + "','" + Convert.ToInt32(data.Tables[0].Rows[0]["supplierid"]) + "','" + data.Tables[0].Rows[0]["suppliername"].ToString() + "','" + Convert.ToInt32(data.Tables[0].Rows[0]["psnumber"]) + "','" + Convert.ToInt32(data.Tables[0].Rows[0]["ssnumber"]) + "','" + Convert.ToInt32(data.Tables[0].Rows[0]["ppnumber"]) + "','" + Convert.ToInt32(data.Tables[0].Rows[0]["spnumber"]) + "','" + Convert.ToInt32(data.Tables[0].Rows[0]["psend"]) + "','" + Convert.ToInt32(data.Tables[0].Rows[0]["ssend"]) + "','" + Convert.ToInt32(data.Tables[0].Rows[0]["pkey"]) + "','" + Convert.ToInt32(data.Tables[0].Rows[0]["skey"]) + "','" + Convert.ToInt32(data.Tables[0].Rows[0]["customerid"]) + "','" + ckey + "')", con);
           com.ExecuteNonQuery();
           SqlCommand com2 = new SqlCommand("update producer set status='Send' where supplierid='" + sid + "'", con);
           com2.ExecuteNonQuery();
       }
       catch (Exception e)
       {
           MsgBox.Show(e.Message);
       }

   }
   public string mobilesearch(string uname,string pass,int cid)
   {
       string stat;
       DataSet ds = new DataSet();
       con.Open();
       SqlDataAdapter adp = new SqlDataAdapter("select id from register where username='" + uname + "' and password='" + pass + "'", con);
       adp.Fill(ds);
       Int32 pid = Convert.ToInt32(ds.Tables[0].Rows[0]["id"]);
       SqlCommand cmd1 = new SqlCommand("select supplystatus from custom where producerid='" + pid + "'and customerid='" + Convert.ToInt32(cid) + "'", con);
       stat = Convert.ToString(cmd1.ExecuteScalar());
       return stat;
   }

}
