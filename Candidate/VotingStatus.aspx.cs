using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;
public partial class User_VotingStatus : System.Web.UI.Page
{
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {

        DataTable dt = db.selectquery("SELECT COUNT(votingid)as count  FROM voting");

        Chart1.DataSource = dt;
        Chart1.Series[0].ChartType = SeriesChartType.Column;
        //Chart2.Legends[0].Enabled = true;
        // Chart1.Series[0].XValueMember = "candid";
        Chart1.Series[0].YValueMembers = "count";
        Chart1.DataBind();
    }
    //public void mm()
    //{ 
    //    DataTable ChartData = db.selectquery("select  (c.name) as name,v.candid,count(v.candid)as count from voting v join candidates c on v.candid = c.cid GROUP BY  v.candid, c.name");
    //    //DataTable ChartData = ds.Tables[0];
    //    string[] YPointMember = new string[ChartData.Rows.Count];
    //    int[] XPointMember = new int[ChartData.Rows.Count];
    //    //storing total rows count to loop on each Record  
    //    //string[] XPointMember = new string[ChartData.Rows.Count];
    //    //int[] YPointMember = new int[ChartData.Rows.Count];

    //    for (int count = 0; count < ChartData.Rows.Count; count++)
    //    {
    //        //storing Values for X axis  
    //        XPointMember[count] = Convert.ToInt32(ChartData.Rows[count]["count"]);
    //        //   XPointMember[count] = ChartData.Rows[count]["name"].ToString();
    //        //storing values for Y Axis  
    //        //YPointMember[count] = Convert.ToInt32(ChartData.Rows[count]["count"]);
    //        YPointMember[count] = ChartData.Rows[count]["name"].ToString();

    //    }
    //    //binding chart control  
    //    Chart2.Series[0].Points.DataBindXY(YPointMember, XPointMember);

    //    //Setting width of line  
    //    Chart2.Series[0].BorderWidth = 10;
    //    //setting Chart type   
    //    Chart2.Series[0].ChartType = SeriesChartType.Bar;
    //    // Chart1.Series[0].ChartType = SeriesChartType.StackedBar;  

    //    //Hide or show chart back GridLines  
    //    //Chart1.ChartAreas["ChartArea1"].AxisX.MajorGrid.Enabled = false;  
    //    //Chart1.ChartAreas["ChartArea1"].AxisY.MajorGrid.Enabled = false;  

    //    //Enabled 3D  
    //    //Chart2.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;







    //    //DataTable dt = db.selectquery("select candid,count(candid)as count from voting GROUP BY  candid");

    //    //Chart2.DataSource = dt;
    //    //Chart2.Series[0].ChartType = SeriesChartType.Line;
    //    ////Chart2.Legends[0].Enabled = true;
    //    //Chart2.Series[0].XValueMember = "candid";
    //    //Chart2.Series[0].YValueMembers = "count";
    //    //Chart2.DataBind();

    //}
}