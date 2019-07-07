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
        DataTable dt = db.selectquery("select * from voters v join constituency cy on v.conid=cy.cid ");
        if(dt.Rows.Count>0)
        {
            gridview1.DataSource = dt;
            gridview1.DataBind();
        }
    }
}