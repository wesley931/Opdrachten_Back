using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLeeftijd_Click(object sender, EventArgs e)
    {
        DateTime slcDate = kalVerjaardag.SelectedDate;
        DateTime crnDate = DateTime.Now;
        TimeSpan lftJaren = crnDate - slcDate;
        int jAren = lftJaren.Days / 365;
        lblLeeftijd.Text = kalVerjaardag.SelectedDate.ToString("D");
        
        if(slcDate.Month < crnDate.Month)
        {
            jAren = jAren - 1;
            lblJaar.Text = Convert.ToString(jAren);
        }
        else
        {
            lblJaar.Text = Convert.ToString(jAren);
        }


    }




}