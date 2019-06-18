using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sahiplendir : System.Web.UI.Page
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
    string uzanti = "";
    string foto = "";
    protected void Button7_Click(object sender, EventArgs e)
    {
        if (fuResim.HasFile)
        {
            uzanti = Path.GetExtension(fuResim.PostedFile.FileName);
            foto = (TextBox1.Text) + "_hayvanresim_" + DateTime.Now.Day + uzanti;
            fuResim.SaveAs(Server.MapPath("~/Resimler/sahte" + uzanti));

            int Donusturme = 640;

            Bitmap bmp = new Bitmap(Server.MapPath("~/Resimler/sahte" + uzanti));
            using (Bitmap OrjinalResim = bmp)
            {
                double ResYukseklik = OrjinalResim.Height;
                double ResGenislik = OrjinalResim.Width;
                double oran = 0;

                if (ResGenislik >= Donusturme)
                {
                    oran = ResGenislik / ResYukseklik;
                    ResGenislik = Donusturme;
                    ResYukseklik = Donusturme / oran;

                    Size yenidegerler = new Size(Convert.ToInt32(ResGenislik), Convert.ToInt32(ResYukseklik));
                    Bitmap yeniresim = new Bitmap(OrjinalResim, yenidegerler);
                    yeniresim.Save(Server.MapPath("~/Resimler/" + foto));

                    yeniresim.Dispose();
                    OrjinalResim.Dispose();
                    bmp.Dispose();


                }
                else
                {
                    fuResim.SaveAs(Server.MapPath("~/Resimler/" + foto));
                }
            }
            FileInfo figecici = new FileInfo(Server.MapPath("~/Resimler/sahte" + uzanti));
            figecici.Delete();
        }
        bag.Open();
        SqlCommand cmd = new SqlCommand("insert into sahiplendir(hayvan,cins,yas,cinsiyet,resim) values (@Hayvan,@Cıns,@Yas,@Cınsıyet,@Resım)", bag);
        cmd.Parameters.AddWithValue("@Hayvan", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Cıns", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Yas", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Cınsıyet", TextBox4.Text);
        cmd.Parameters.AddWithValue("@Resım", foto);
        cmd.ExecuteNonQuery();

        bag.Close();
        

    }
}