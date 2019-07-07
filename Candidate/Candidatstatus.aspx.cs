using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Candidate_Candidatstatus : System.Web.UI.Page
{
    DB db = new DB();
    string user;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["lid"] != null)
        {
            user = Session["lid"].ToString();
        }
        else
        {
            Response.Redirect("~/Mainpage/HOME.aspx");
        }
        DataTable dt = db.selectquery("select * from candidates where  status='accept' and lid='"+ user+"' ");
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

    }

}