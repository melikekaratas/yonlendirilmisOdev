using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sahiplen : System.Web.UI.Page
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

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataAdapter da1 = new SqlDataAdapter("select * from sahiplendir where hayvan= '" + DropDownList1.Text + "'", bag);
        DataTable dt1 = new DataTable();
        da1.Fill(dt1);
        TextBox1.Text = dt1.Rows[0][1].ToString();
        TextBox2.Text = dt1.Rows[0][2].ToString();
        TextBox3.Text = dt1.Rows[0][3].ToString();
        TextBox4.Text = dt1.Rows[0][4].ToString();
        //Label3.Text = dt1.Rows[0][2].ToString();
        //Label4.Text = dt1.Rows[0][3].ToString();
        //Label5.Text = dt1.Rows[0][4].ToString();
        
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        bag.Open();
        SqlCommand cmd = new SqlCommand("insert into sahiplendir(hayvan,cins,yas,cinsiyet) values (@Hayvan,@Cıns,@Yas,@Cınsıyet)", bag);
        cmd.Parameters.AddWithValue("@Hayvan", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Cıns", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Yas", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Cınsıyet", TextBox4.Text);
   
        cmd.ExecuteNonQuery();

        bag.Close();
        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "HATA", "<script>alert('Sahiplenme talebiniz tarafımıza ulaşmıştır. En kısa zamanda geri dönüş yapılacaktır.');</script>");

    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataAdapter da1 = new SqlDataAdapter("select * from sahiplendir where cins= '" + DropDownList2.Text + "'", bag);
        DataTable dt1 = new DataTable();
        da1.Fill(dt1);
        TextBox1.Text = dt1.Rows[0][1].ToString();
        TextBox2.Text = dt1.Rows[0][2].ToString();
        TextBox3.Text = dt1.Rows[0][3].ToString();
        TextBox4.Text = dt1.Rows[0][4].ToString();
        //Label3.Text = dt1.Rows[0][2].ToString();
        //Label4.Text = dt1.Rows[0][3].ToString();
        //Label5.Text = dt1.Rows[0][4].ToString();
        

    }
}