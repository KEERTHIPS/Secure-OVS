using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Candidate_Candidatedetails : System.Web.UI.Page
{
    DB db = new DB();
    string Image, Image1, Image2, user;
    protected void Page_Load(object sender, EventArgs e)
    {
        // user = 1.ToString();
        if (Session["lid"] != null)
        {
            user = Session["lid"].ToString();
        }
        else
        {
            Response.Redirect("~/Mainpage/HOME.aspx");
        }
        if(!IsPostBack)
        {
            //DataTable dt = db.selectquery("select * from constituency");
            //ddl_constituency.DataSource = dt;
            //ddl_constituency.DataValueField = "cid";
            //ddl_constituency.DataTextField = "constituency";
            //ddl_constituency.DataBind();
            //ddl_constituency.Items.Insert(0,"select");
        }
    }
    public System.Drawing.Image Base64ToImage()
    {
        byte[] imageBytes = Convert.FromBase64String(TextBox1.Text);
        MemoryStream ms = new MemoryStream(imageBytes, 0, imageBytes.Length);
        ms.Write(imageBytes, 0, imageBytes.Length);
        System.Drawing.Image image = System.Drawing.Image.FromStream(ms, true);
        return image;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (fpsym.HasFile)
        {
            string str = fpsym.FileName;
            fpsym.PostedFile.SaveAs(Server.MapPath("~/Symbol/" + str));
            Image2 = "~/Symbol/" + str.ToString();



            if (fpphoto.HasFile)
            {
                string strr = fpphoto.FileName;
                fpphoto.PostedFile.SaveAs(Server.MapPath("~/userphoto/" + strr));
                Image = "~/userphoto/" + strr.ToString();





                string str1 = "fig" + user + ".jpg";
                Base64ToImage().Save(Server.MapPath("~/UploadTump/" + str1));
                Image1 = "~/UploadTump/" + str1.ToString();

                //string j = fpfin.FileName;
                //string ext = System.IO.Path.GetExtension(this.fpfin.PostedFile.FileName);
                //String m = txt_name.Text;
                //string h = m + "-" + user + ext;
                //string str2 = fpfin.FileName.Replace(j,h);                  


                int a = db.exequery("insert into candidates(lid,VoterId,conid,name,partypname,symbols,gender,email,phone,city,address,photo,fingerprint,status)values('" + user + "','" + txt_vid.Text + "','" + ddl_constituency.SelectedValue + "','" + txt_name.Text + "','" + DropDownList1.SelectedItem.Text + "','" + Image2 + "','" + RadioButtonList1.SelectedItem.Text + "','" + txt_email.Text + "','" + txt_ph.Text + "','" + txt_city.Text + "','" + txt_adrs.Text + "','" + Image + "','" + Image1 + "','waiting')");
                if (a > 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);
                }
            }

        }

        
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "invalid();", true);
        }
    }

    protected void txt_vid_TextChanged(object sender, EventArgs e)
    {
        Label1.Text = "";
        DataTable dt1 = db.selectquery("select * from candidates where VoterId='" + txt_vid.Text + "'");

        DataTable dt = db.selectquery("select * from voters where VoterId='" + txt_vid.Text + "'");
        if (dt.Rows.Count > 0)
        {
            Label1.Text = "Already Used !!!";
        }
        else if (dt1.Rows.Count > 0)
        {
            Label1.Text = "Already Used !!!";
        }
        else

        {
            Label1.Text = "";
        }
    }


    protected void dropstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable dt = db.selectquery("select * from constituency where state='" + dropstate.SelectedItem.Text + "' ");
        ddl_constituency.DataSource = dt;
        ddl_constituency.DataValueField = "cid";
        ddl_constituency.DataTextField = "constituency";
        ddl_constituency.DataBind();
        ddl_constituency.Items.Insert(0, "select");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "CallFingerAPI();", true);

    }
}





