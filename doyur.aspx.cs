using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class doyur : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("insert into bagis(ad,soyad,mail,bagis) values (@ad,@soy,@mail,@bagis)", bag);
        cmd.Parameters.AddWithValue("@ad", TextBox1.Text);
        cmd.Parameters.AddWithValue("@soy", TextBox2.Text);
        cmd.Parameters.AddWithValue("@mail", TextBox3.Text);
        cmd.Parameters.AddWithValue("@bagis", TextBox4.Text);
      
        cmd.ExecuteNonQuery();
        bag.Close();
        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "HATA", "<script>alert('Bağışınız için teşekkürler.');</script>");

    }
}