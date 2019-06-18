using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class uyeol : System.Web.UI.Page
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
        Response.Redirect("giris.aspx");
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        bag.Open();
        SqlCommand cmd = new SqlCommand("insert into uye (mail,ad,soyad,sifre,telefon,adres)values(@mail,@ad,@soyad,@sifre,@tel,@adres)", bag);
        cmd.Parameters.AddWithValue("@mail", TextBox3.Text);
        cmd.Parameters.AddWithValue("@ad", TextBox1.Text);
        cmd.Parameters.AddWithValue("@soyad", TextBox2.Text);
        cmd.Parameters.AddWithValue("@sifre", TextBox4.Text);
        cmd.Parameters.AddWithValue("@tel", TextBox5.Text);
        cmd.Parameters.AddWithValue("@adres", TextBox6.Text);
        cmd.ExecuteNonQuery();
        
        Label1.Text = "üye kaydınız gerçekleştirildi.Giriş Yapınız.";
        bag.Close();

    }
}
