using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
//using System.Web.UI.WebControls;
//using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Drawing;
using System.Security.Cryptography;
using System.ComponentModel;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    public Class1()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public enum CompareResult
    {
        ciCompareOk,
        ciPixelMismatch,
        ciSizeMismatch
    };

    public static CompareResult Compare(Bitmap bmp1, Bitmap bmp2)
    {
        CompareResult cr = CompareResult.ciCompareOk;      

        //Test to see if we have the same size of image
        if (bmp1.Size != bmp2.Size)
        {
            cr = CompareResult.ciSizeMismatch;
        }
        else
        {
            //Convert each image to a byte array
            System.Drawing.ImageConverter ic = new System.Drawing.ImageConverter();
            byte[] btImage1 = new byte[1];
            btImage1 = (byte[])ic.ConvertTo(bmp1, btImage1.GetType());
            byte[] btImage2 = new byte[1];
            btImage2 = (byte[])ic.ConvertTo(bmp2, btImage2.GetType());

            //Compute a hash for each image
            SHA256Managed shaM = new SHA256Managed();
            byte[] hash1 = shaM.ComputeHash(btImage1);
            byte[] hash2 = shaM.ComputeHash(btImage2);

            //Compare the hash values
            for (int i = 0; i < hash1.Length && i < hash2.Length && cr == CompareResult.ciCompareOk; i++)
            {
                if (hash1[i] != hash2[i])
                    cr = CompareResult.ciPixelMismatch;
            }
            shaM.Clear();
        }

        return cr;
    }
}
