using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class giris : System.Web.UI.Page
{
    SqlConnection bag = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True");


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

    protected void Button7_Click(object sender, EventArgs e)
    {
        bag.Open();
        SqlCommand cmd = new SqlCommand("select * from uye where mail=@email and sifre=@sifre", bag);
        cmd.Parameters.AddWithValue("@email", TextBox1.Text);
        cmd.Parameters.AddWithValue("@sifre", TextBox2.Text);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            if (dr.Read())
            {
                HtmlMeta meta = new HtmlMeta();
                meta.HttpEquiv = "Refresh";
                meta.Content = "1;url=/Default.Aspx";
                this.Page.Controls.Add(meta);
                

            }
            else
            {
                HtmlMeta meta = new HtmlMeta();
                meta.HttpEquiv = "Refresh";
                meta.Content = "1;url=/Default.Aspx";
                this.Page.Controls.Add(meta);
                


            }
        }

        else
        {
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "HATA", "<script>alert('Yanlış e-mail veya parola.Üye değilseniz üye olunuz.');</script>");

        }
        bag.Close();
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("uyeol.aspx");
    }
}