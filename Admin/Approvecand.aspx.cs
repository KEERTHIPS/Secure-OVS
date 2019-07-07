using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Candidates : System.Web.UI.Page
{
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {
       if(!IsPostBack)
        {
            gridbind();
        }
    }
    public void gridbind()
    {
        Label1.Text = "";
        DataTable dt = db.selectquery("select * from candidates c join constituency cy on c.conid=cy.cid where  c.status !='accept' ");
        if (dt.Rows.Count > 0)
        {
            gridview1.DataSource = dt;
            gridview1.DataBind();

            Label1.Text = "";
        }
        else
        {
            Label1.Text = "Empty Details !!!!";

        }
    }
    protected void gridview1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "aprv")
        {
            
                int a = db.exequery("update candidates set status='accept' where cid='" + e.CommandArgument + "'");

                if (a > 0)
                {

                    gridbind();

                Response.Redirect("Approvecand.aspx");
                }
            
        }
       
    }

}