using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Election : System.Web.UI.Page
{
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int a = db.exequery("insert into election(electionname,electiondate,fromtime,totime)values('" + txt_ename.Text + "','" + txt_date.Text + "','" + txt_from.Text + "','" + txt_to.Text + "') ");

        if (a > 0)
        {
            txt_from.Text = "";
            txt_to.Text = "";
            txt_date.Text = "";
            txt_ename.Text = "";
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);
        }

    }
}