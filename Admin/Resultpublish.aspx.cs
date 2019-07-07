using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Resultpublish : System.Web.UI.Page
{
    DB db = new DB();

    string mail;
    string msgs;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void bindrsult()
    {
        DataTable dt = db.selectquery("select  (c.name) as name,v.candid,count(v.candid)as count,c.symbols,c.partypname,c.photo from voting v join candidates c on v.candid = c.cid GROUP BY  v.candid, c.name,c.symbols,c.partypname,c.photo order by count desc ");
        if (dt.Rows.Count > 0)
        {
            gridview1.DataSource = dt;
            gridview1.DataBind();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string ms = "";
        string msg = "";
        DataTable dtt = db.selectquery("select  (c.name) as name,v.candid,count(v.candid)as count,c.symbols,c.partypname,c.photo from voting v join candidates c on v.candid = c.cid GROUP BY  v.candid, c.name,c.symbols,c.partypname,c.photo order by count desc ");
        if (dtt.Rows.Count > 0)
        {
            for (int j = 0; j < dtt.Rows.Count; j++)
            {
                ms = dtt.Rows[j]["name"].ToString() + "- Party Name -" + dtt.Rows[j]["partypname"].ToString() + "- No. vote-" + dtt.Rows[j]["count"].ToString()  ;
                msg = msg+"\n" + ms;
            }
            msgs = msg ;
        }

        
        DataTable dt = db.selectquery("select email from voters union select email from candidates");
        if (dt.Rows.Count > 0)
        {
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                mail = dt.Rows[i]["email"].ToString();
                                
                var fromAddress = "mysoft.123@gmail.com";
                var toAddress = mail;

                const string fromPassword = "mysoft123";


                string subject = "Result";

                string body = " " + "\n";


                body += "Result : " + msgs + "\n";
                var smtp = new System.Net.Mail.SmtpClient();

                {

                    smtp.Host = "smtp.gmail.com";

                    smtp.Port = 587;

                    smtp.EnableSsl = true;

                    smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;

                    smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);

                    //client.UseDefaultCredentials = true;

                    smtp.Timeout = 20000;

                }

                smtp.Send(fromAddress, toAddress, subject, body);
            }
        }
        bindrsult();
        }
    }
