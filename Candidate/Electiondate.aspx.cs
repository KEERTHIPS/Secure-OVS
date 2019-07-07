using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Electiondate : System.Web.UI.Page
{
    DB db = new DB();

    protected void Page_Load(object sender, EventArgs e)
    {
        DataList1.DataSource = db.selectquery("SELECT TOP 1 * FROM election  ");
        DataList1.DataBind();
    }
}