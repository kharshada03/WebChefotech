using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using WebChefotech.App_Code;
using System.IO;

public partial class Post : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database"].ToString());
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] != null)
        {
            UserClass u = UserClass.GetUser();
            Label5.Text = u.Name.ToString();
        }
    }
    /*protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        OpenFileDialog open = new OpenFileDialog();
    }*/
    protected void Button1_Click(object sender, EventArgs e)
    {
        FontDialog fd = new FontDialog();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Iconspage.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database"].ToString());
        con.Open();
        cmd.Connection = con;
        SqlDataAdapter sda = new SqlDataAdapter("Select isnull(max(cast(Id as int)),0)+1 From [Post]", con);
        sda.Fill(dt);
        Label4.Text = dt.Rows[0][0].ToString();

        string str = FileUpload1.FileName;
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/PostImages/" + str));
        string file = "~/PostImages/" + str.ToString();

        cmd.Parameters.AddWithValue("@Id", Label4.Text);
        cmd.Parameters.AddWithValue("@Name",Label5.Text);
        cmd.Parameters.AddWithValue("@Title", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Type",DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@file",file);
        cmd.Parameters.AddWithValue("@Post",TextBox2.Text);
        cmd.CommandText = "Insert into [Post] values(@Id,@Name,@Title,@Type,@file,@Post)";
        cmd.ExecuteNonQuery();
        con.Close();
        MessageBox.Show("Blog Posted Successfully..!!!");
        TextBox1.Text = "";
        TextBox2.Text = "";
        DropDownList1.ClearSelection();
        Response.Redirect("Iconspage.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        //TextBox3.Text = "";
        DropDownList1.ClearSelection();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //var reader = new FileReader();
        //Image1.ImageUrl = reader.unload;
        /*string path = Path.GetFileName(FileUpload1.FileName);
        path = path.Replace(" ", "");
        String filename1 = path;
        FileUpload1.SaveAs(Server.MapPath("~/PostImages/") + path);*/
        //Label3.Text = "Image Uploaded and Saved in Server Successfully";
    }
}