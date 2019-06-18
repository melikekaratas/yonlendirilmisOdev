using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sev : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        Button5.Visible = false;
        Button6.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button5.Visible = true;
        Button6.Visible = true;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("sahiplendir.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("sahiplen.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("iyilestir.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("doyur.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("sev.aspx");
    }
}