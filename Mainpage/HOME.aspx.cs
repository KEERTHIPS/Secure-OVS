using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mainpage_HOME : System.Web.UI.Page
{
    DB db = new DB();
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        DataTable dt = db.selectquery("select * from login where email='" + txt_email.Text + "' and name='" + txt_name.Text + "' ");
        if (dt.Rows.Count > 0)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "invalid();", true);

        }
        else
        {
            int uid;
            if (RadioButtonList1.SelectedIndex == 0)
            {
                uid = 1;
            }
            else
            {
                uid = 2;

            }

            int a = db.exequery("insert into login (name,email,password,utid,Dob,aadhar) values('" + txt_name.Text + "','" + txt_email.Text + "','" + password1.Text + "','" + uid + "','"+ txtDATE_OF_BIRTH.Text+"','"+txtadhar.Text+"')");
            if (a > 0)
            {
                txt_email.Text = "";
                txt_name.Text = "";
                password1.Text = "";
                RadioButtonList1.SelectedIndex = -1;
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);



            }
        }
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        DataTable dt = db.selectquery("select * from login where email='" + txt_lgemail.Text + "' and password='" + txt_lgpswd.Text + "' ");
        if(dt.Rows.Count>0)
        {
            int uid = Convert.ToInt32(dt.Rows[0]["utid"]);
            string lid  =dt.Rows[0]["lid"].ToString();
            Session["lid"] = lid;
            txt_lgemail.Text = "";
            txt_lgpswd.Text = "";
            if (uid == 1)
            {
                DataTable dt2 = db.selectquery("select * from candidates where lid='" + lid + "' ");
                if (dt2.Rows.Count > 0)
                {
                    Response.Redirect("~/Candidate/Home.aspx");
                }
                else
                {
                    Response.Redirect("~/Candidate/Candidatedetails.aspx");
                }

            }
            else if (uid == 2)
            {

                DataTable dt3 = db.selectquery("select * from voters where lid='" + lid + "' ");
                if (dt3.Rows.Count > 0)
                {
                    Response.Redirect("~/User/Home.aspx");
                }
                else
                {
                    //http://localhost:61511/User/UserDetails .aspx
                    Response.Redirect("~/User/UserDetails .aspx");
                }
            }
            else if (uid == 3)
            {
                Response.Redirect("~/Admin/Home.aspx");
            }
           
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "invalid();", true);

        }


    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
}