using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.UI.HtmlControls;
//using System.Web.UI.WebControls;
//using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Drawing;
using System.Security.Cryptography;
using System.ComponentModel;
using System.IO;
using System.Data;
using System.Net;
using System.Web.Services;
using PatternRecognition.FingerprintRecognition.Core;
using PatternRecognition.ROC;
using PatternRecognition.FingerprintRecognition.FeatureExtractors;
using PatternRecognition.FingerprintRecognition.Matchers;
using PatternRecognition.FingerprintRecognition.ResourceProviders;
using ImageProcessingTools;
using System.IdentityModel;


   
  
    public partial class Admin_Candidates : System.Web.UI.Page
{
    public string score;
    byte[] _barray1;
    Byte[] bytes;
    Byte[] bytes1;
        string vid;
    DB db = new DB();
    int id;



    protected void Page_Load(object sender, EventArgs e)
    {
        Button2.Visible = false;
        if (Session["lid"] != null)
        {
            id = Convert.ToInt32(Session["lid"]);
        }
        else
        {
            Response.Redirect("~/Mainpage/HOME.aspx");
        }
        if (!IsPostBack)
        {
            DataTable dt = db.selectquery("select * from constituency");
            ddl_constituency.DataSource = dt;
            ddl_constituency.DataValueField = "cid";
            ddl_constituency.DataTextField = "constituency";
            ddl_constituency.DataBind();
            ddl_constituency.Items.Insert(0, "select");
        }
    }
    public void grdbnd()
    {
        DataTable dt = db.selectquery("select * from candidates where  status='accept' and conid='" + ddl_constituency.SelectedValue + "' ");
        if (dt.Rows.Count > 0)
        {
            gridview1.DataSource = dt;
            gridview1.DataBind();
            ImageButton1.Visible = true;
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        //DataTable dv = db.selectquery("select * from  voting where userid='" + id + "'");
        //if (dv.Rows.Count > 0)
        //{
        //    // Label1.Visible = true;
        //    Label1.Text = "already voted !!!";
        //}
        //else
        //{

        //    try
        //    {
        //        if (FileUpload1.HasFile)
        //        {
        //            DataTable dt = db.selectquery("select * from candidates where lid='" + id + "'");

        //            string mm = dt.Rows[0]["fingerprint"].ToString();
        //            vid = dt.Rows[0]["cid"].ToString();

        //            //byte img11 = Convert.ToByte(dt.Rows[0]["fingerprint"].ToString());
        //            using (BinaryReader reader1 = new BinaryReader(FileUpload1.PostedFile.InputStream))
        //            {

        //                _barray1 = reader1.ReadBytes(FileUpload1.PostedFile.ContentLength);
        //                string filePath = Server.MapPath(mm);

        //                string filename = Path.GetFileName(filePath);



        //                FileStream fs = new FileStream(filePath, FileMode.Open, FileAccess.Read);

        //                BinaryReader br = new BinaryReader(fs);

        //                bytes = br.ReadBytes((Int32)fs.Length);

        //                br.Close();

        //                fs.Close();

        //            }
        //        }
        //        //Converting Byte Array To Image And Then Into Bitmap
        //        ImageConverter ic = new ImageConverter();
        //        System.Drawing.Image img = (System.Drawing.Image)ic.ConvertFrom(_barray1);
        //        Bitmap bmp1 = new Bitmap(img);
        //        System.Drawing.Image img1 = (System.Drawing.Image)ic.ConvertFrom(bytes);
        //        Bitmap bmp2 = new Bitmap(img1);
        //        //Calling Compare Function
        //        if (Class1.Compare(bmp1, bmp2) == Class1.CompareResult.ciCompareOk)
        //        {
        //            //Label1.Visible = true;
        //            Label1.Text = " ";
        //            DataList1.DataSource = db.selectquery("Select * from candidates where cid='" + vid + "'");
        //            DataList1.DataBind();
        //            Button2.Visible = true;
        //            pnl_otp.Visible = true;

        //        }
        //        else if (Class1.Compare(bmp1, bmp2) == Class1.CompareResult.ciPixelMismatch)
        //        {
        //            //  Label1.Visible = true;
        //            //Label1.Text = "Pixel not Matching";
        //            Label1.Text = "Invalid User !!!";
        //            DataList1.DataSource = null;
        //            DataList1.DataBind();
        //            Button2.Visible = false;
        //        }
        //        else if (Class1.Compare(bmp1, bmp2) == Class1.CompareResult.ciSizeMismatch)
        //        {
        //            //Label1.Visible = true;
        //            Label1.Text = "Invalid User !!!";
        //            DataList1.DataSource = null;
        //            DataList1.DataBind();
        //            Button2.Visible = false;
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        //  Label1.Visible = true;
        //        Label1.Text = ex.Message.ToString();
        //    }
        //}
    }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        for (int i = 0; i < gridview1.Rows.Count; i++)
        {
            RadioButton rb = (gridview1.Rows[i].FindControl("rdbUser")) as RadioButton;
            if (rb.Checked == true)
            {

                HiddenField hfStatus = (gridview1.Rows[i].FindControl("hfStatus")) as HiddenField;

                string mm = gridview1.Rows[i].Cells[1].Text;
                string p = hfStatus.Value;
                int a = db.exequery("insert into voting (userid,candid) values('" + id + "','" + p + "')");
                if (a > 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);
                }

            }
        }
     //   Response.Redirect("thx.aspx");
    }




    protected void Button2_Click(object sender, EventArgs e)
    {
        int count = DataList1.Items.Count;
        for (int i = 0; i < count; i++)
        {
            Label lbl = DataList1.Items[i].FindControl("Label7") as Label;
            string labeltext = lbl.Text;

            Random r = new Random();
            int num = r.Next(0000, 9999);
            Session["num"] = num;


            Session["otp"] = num;
            var fromAddress = "mysoft.123@gmail.com";
            var toAddress = lbl.Text;

            const string fromPassword = "mysoft123";


            string subject = "OTP";

            string body = " " + "\n";


            body += "OTP : " + num + "\n";
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
            // ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert4();", true);

        }
    }
    public System.Drawing.Image Base64ToImage()
    {
        byte[] imageBytes = Convert.FromBase64String(TextBox2.Text);
        MemoryStream ms = new MemoryStream(imageBytes, 0, imageBytes.Length);
        ms.Write(imageBytes, 0, imageBytes.Length);
        System.Drawing.Image image = System.Drawing.Image.FromStream(ms, true);
        return image;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        lbl_otp.Text = " ";
        string m = Session["num"].ToString();
        if (m == TextBox1.Text)
        {
            lbl_constituency.Visible = true;
            ddl_constituency.Visible = true;

            lbl_otp.Text = " ";
        }
        else
        {
            lbl_otp.Text = "invalid otp";
        }


    }

    protected void ddl_constituency_SelectedIndexChanged(object sender, EventArgs e)
    {
        grdbnd();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "CallFingerAPI();", true);

    }

    protected void Button6_Click(object sender, EventArgs e)
    {

        DataTable dv = db.selectquery("select * from  voting where userid='" + id + "'");
        if (dv.Rows.Count > 0)
        {
            // Label1.Visible = true;
            Label1.Text = "already voted !!!";
        }
        else
        {


            try
            {
                string str1 = "figkk" + ".jpg";

                Base64ToImage().Save(Server.MapPath("~/UploadTump/" + str1));
                string Image1 = "~/UploadTump/" + str1.ToString();
                string filePath1 = Server.MapPath(Image1);
                string filename1 = Path.GetFileName(filePath1);
                FileStream fs1 = new FileStream(filePath1, FileMode.Open, FileAccess.Read);
                BinaryReader br1 = new BinaryReader(fs1);
                bytes1 = br1.ReadBytes((Int32)fs1.Length);


                DataTable dt = db.selectquery("select * from candidates where lid='" + id + "'");

                string mm = dt.Rows[0]["fingerprint"].ToString();
                vid = dt.Rows[0]["cid"].ToString();
                string filePath = Server.MapPath(mm);
                string filename = Path.GetFileName(filePath);
                FileStream fs = new FileStream(filePath, FileMode.Open, FileAccess.Read);
                BinaryReader br = new BinaryReader(fs);
                bytes = br.ReadBytes((Int32)fs.Length);

                var fingerprintImg1 = ImageLoader.LoadImage(filePath);
                var fingerprintImg2 = ImageLoader.LoadImage(filePath1);



                var featExtractor = new PNFeatureExtractor() { MtiaExtractor = new Ratha1995MinutiaeExtractor() };
                var features1 = featExtractor.ExtractFeatures(fingerprintImg1);
                var features2 = featExtractor.ExtractFeatures(fingerprintImg2);

                // Building matcher and matching
                var matcher = new PN();
                double similarity = matcher.Match(features1, features2);
                score = similarity.ToString("0.000");
                Label1.Text = similarity.ToString("0.000");

                if (similarity > 40)
                {
                    Label1.Text = " ";
                    DataList1.DataSource = db.selectquery("Select * from candidates where cid='" + vid + "'");
                    DataList1.DataBind();
                    Button2.Visible = true;
                    pnl_otp.Visible = true;

                }
                else
                {
                    Label1.Text = "Invalid User !!!";
                    DataList1.DataSource = null;
                    DataList1.DataBind();
                    Button2.Visible = false;
                }

            }

            catch (Exception ex)
            {
                //  Label1.Visible = true;
                Label1.Text = ex.Message.ToString();
            }
        }
    }
}
    