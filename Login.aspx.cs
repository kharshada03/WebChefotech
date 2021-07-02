using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Xml.Linq;
using System.Configuration;
using System.Drawing;
using System.Windows.Forms;
using WebChefotech.App_Code;

public partial class Login : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\\Users\\admin\\Desktop\\Website\\WebChefotech\\App_Data\\Database.mdf;Integrated Security=True");
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database"].ToString());
    //string con = "Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\\Users\\admin\\Desktop\\Website\\WebChefotech\\App_Data\\Database.mdf;Integrated Security=True";
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        UserLoginPanel.Visible = false;
        HotelLoginPanel.Visible = false;
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //string conn = "Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\\Users\\admin\\Desktop\\Website\\WebChefotech\\App_Data\\Database.mdf;Integrated Security=True";
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "select * from [User] where Username='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'";
        cmd.ExecuteNonQuery();
        dr = cmd.ExecuteReader();
        //con.Close();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                //using session login code
                //Session["User"]=TextBox1.Text;
                UserClass u = UserClass.GetUser();
                u.Id = dr.GetInt32(0);
                u.Name = dr.GetString(1);
                u.Contactno = dr.GetString(2);
                u.Emailid = dr.GetString(3);
                u.Bio = dr.GetString(6);
                u.Orders = dr.GetString(7);
                u.Speciality = dr.GetString(8);
                u.MenuOrder = dr.GetString(9);
                u.FoodPrice = dr.GetString(10);
                u.Username = dr.GetString(11);
                Session["User"] = u;
                /*HttpCookie u = new HttpCookie("userinfo");
                u.Value = TextBox1.Text;
                Response.Cookies.Add(u);
                u.Value = TextBox2.Text;
                u.Value = TextBox3.Text;
                u.Value = TextBox4.Text;*/
                Response.Redirect("Iconspage.aspx");
            }

                //Response.Redirect("Iconspage.aspx");
        }
        else
        {
            MessageBox.Show("Username and password is invalid");
            //Label4.Text = "Username and password is invalid";
        }
        //con.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "-1")
        {
            UserLoginPanel.Visible = false;
            HotelLoginPanel.Visible = false;
        }
        else if (DropDownList1.SelectedValue == "UserLogin")
        {
            UserLoginPanel.Visible = true;
            HotelLoginPanel.Visible = false;
        }
        else
        {
            UserLoginPanel.Visible = false;
            HotelLoginPanel.Visible = true;
        }
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "select * from [Hotel] where Username='" + TextBox3.Text + "'and Password='" + TextBox4.Text + "'";
        cmd.ExecuteNonQuery();
        dr = cmd.ExecuteReader();
        //con.Close();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                //Session["Hotel"] = TextBox3.Text;
                HotelClass h = HotelClass.GetHotel();
                h.HId = dr.GetInt32(0);
                h.Name = dr.GetString(1);
                h.Address = dr.GetString(2);
                h.Maplink = dr.GetString(3);
                h.Bio = dr.GetString(4);
                h.Username = dr.GetString(5);
                Session["Hotel"] = h;
                /*HttpCookie h = new HttpCookie("hotelinfo");
                h.Value = TextBox3.Text;
                Response.Cookies.Add(h);*/
                Response.Redirect("Iconspage.aspx");
            }

            //Response.Redirect("Iconspage.aspx");
        }
        else
        {
            /*ScriptManager.RegisterStartupScript(this, this.GetType(), 
            "popup", "alert('Invalid Username and Password.');window.location='Login.aspx';", true);*/
            MessageBox.Show("Username and password is invalid");
            //GCNotificationStatus.Succeeded.ToString("Invalid");
        }
    }
    //public object u { get; set; }
}