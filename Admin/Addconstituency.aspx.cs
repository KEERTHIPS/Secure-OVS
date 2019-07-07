using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Crimetype : System.Web.UI.Page
{
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showdetails();

           

        }

    }
    private void showdetails()
    {
        DataTable dt = db.selectquery("select * from constituency");
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }





    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = db.selectquery("select * from constituency where constituency='"+txt_constituency.Text+ "' and state='" + dropstate.SelectedItem + "' ");
        if(dt.Rows.Count>0)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "invalid();", true);
        }

        int a = db.exequery("insert into constituency (state,constituency)values('" + dropstate.SelectedItem +"','"+txt_constituency.Text+"')");
        if (a > 0)
        {

            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);


          txt_constituency.Text = " ";
            dropstate.SelectedIndex = -1;
            showdetails();


        }
        else
        {
            Response.Write("some error occur,please try again!!");
        }
    }





    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int a = db.exequery("delete FROM constituency where cid='"+e.CommandArgument+ "'");
        if (a > 0)
        {

            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert1();", true);



        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //dropstate.SelectedValue = " ";
        showdetails();
    }

  
}