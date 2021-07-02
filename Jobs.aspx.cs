using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Windows.Forms;
using WebChefotech.App_Code;
using System.IO;
//using System.Web.HttpPostedFile;

public partial class Jobs : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database"].ToString());
    //string con = "Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\\Users\\admin\\Desktop\\Website\\WebChefotech\\App_Data\\Database.mdf;Integrated Security=True";
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        //fillData();
        if (!IsPostBack)
        {
            fillData();
        }
    }
    private void fillData()
    {
        if (Session["User"] != null)
        {
            UserClass u = UserClass.GetUser();
            Label8.Text = u.Name.ToString();
        }
        else
        {
            HotelClass h = HotelClass.GetHotel();
            Label8.Text = h.Name.ToString();
        }
        Label7.Visible = false;
        con.Open();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter("select * from Job", con);
        da.Fill(dt);
       // con.Close();
       /* PagedDataSource pds = new PagedDataSource();
        DataView dv = new DataView(dt);
        pds.DataSource = dv;
        Repeater1.DataSource = pds;
        Repeater1.DataBind();*/
        //DataList1.DataSource = dt;
        DataList1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //int sizeLimit = 5242880;
        if (FileUpload1.HasFile)
        {
            con.Open();
            cmd.Connection = con;
            SqlDataAdapter sda = new SqlDataAdapter("Select isnull(max(cast(Id as int)),0)+1 From [Job]", con);
            sda.Fill(dt);
            Label7.Text = dt.Rows[0][0].ToString();
            //string path = "~/App_Data/" + Guid.NewGuid().ToString + "" + Path.GetExtension(FileUpload1.FileName);
            //string path = "~/UploadFiles/" + FileUpload1.FileName;
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/UploadFiles/" + str));
            string file = "~/UploadFiles/" + str.ToString();
            //FileUpload1.PostedFile.SaveAs(Server.MapPath("~/UploadFiles/" +str.ToString()));
            //string file = "~/UploadFiles/" + FileUpload1.FileContent;
            //string name = TextBox1.Text;

           /* FileUpload img = (FileUpload)FileUpload1;
            Byte[] imgByte = null;
            if (img.HasFile && img.PostedFile != null)
            {
                //To create a PostedFile
                HttpPostedFile File = FileUpload1.PostedFile;
                //Create byte Array with file len
                imgByte = new Byte[File.ContentLength];
                //force the control to load data in array
                File.InputStream.Read(imgByte, 0, File.ContentLength);
            }*/
            //FileUpload1.SaveAs(path);
            cmd.Parameters.AddWithValue("@Id", Label7.Text);
            cmd.Parameters.AddWithValue("@Name", Label8.Text);
            cmd.Parameters.AddWithValue("@file", file);
            cmd.CommandText = "Insert into [Job] Values(@Id,@Name,@file)";
            cmd.ExecuteNonQuery();
            Label6.Text = "File Uploaded";
            //cmd.ExecuteNonQuery();
            con.Close();
            fillData();
            //TextBox1.Text = "";
            //FileUpload1= Unload;
        }
        else
        {
            Label6.Text = "File Not Uploaded";
        }
    }
    /*protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        //FileUpload1.PostedFile = null;
    }*/
}