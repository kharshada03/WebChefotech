using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebChefotech.App_Code;
using System.Data;
using System.Data.SqlClient;
using System.Xml.Linq;
using System.Configuration;
using System.Windows.Forms;


public partial class HotelProfileaspx : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database"].ToString());
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    HotelClass h;
    byte up;

    protected void Page_Load(object sender, EventArgs e)
    {
        h = HotelClass.GetHotel();
        HotelProfilePanel.Visible = false;
        PasswordPannel.Visible = false; ;
        //EditPannel.Visible = false;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        HotelProfilePanel.Visible = true;
        TextBox1.Enabled = false;
        TextBox2.Enabled = false;
        TextBox3.Enabled = false;
        TextBox4.Enabled = false;
        TextBox5.Enabled = false;
        show();
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
   /* protected void LinkButton4_Click(object sender, EventArgs e)
    {
        HotelProfilePanel.Visible = false;
        EditPannel.Visible = true;
        HotelClass h = HotelClass.GetHotel();
        TextBox6.Text = h.Name;
        TextBox7.Text = h.Address;
        TextBox8.Text = h.Maplink;
        TextBox9.Text = h.Bio;
        TextBox10.Text = h.Username;
        
    }*/
   /* protected void LinkButton5_Click(object sender, EventArgs e)
    {
        HotelClass h = HotelClass.GetHotel();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText= "Update [Hotel] set Name='" + TextBox1.Text + "',Address='" + TextBox2.Text + "',Maplink='" + TextBox3.Text + "',Bio='" + TextBox4.Text + "',Username='" + TextBox5.Text +"' where HId='" + h.HId + "'";
        cmd.ExecuteNonQuery();
        Session["hotel"]=h;
        con.Close();
        MessageBox.Show("Profile Updated");
    }*/
   public void show()
    {
        TextBox1.Text = h.Name;
        TextBox2.Text = h.Address;
        TextBox3.Text = h.Maplink;
        TextBox4.Text = h.Bio;
        TextBox5.Text = h.Username;
    }
    //Edit Profile
   protected void Button1_Click(object sender, EventArgs e)
   {
       h = HotelClass.GetHotel();
       HotelProfilePanel.Visible = true;
       show();
       TextBox1.Enabled = true;
       TextBox2.Enabled = true;
       TextBox3.Enabled = true;
       TextBox4.Enabled = true;
       TextBox5.Enabled = true;
       Button2.Visible = true;
       Button3.Visible = true;
   }
    //Save Profile
   protected void Button2_Click(object sender, EventArgs e)
   {
       HotelProfilePanel.Visible = true;
       Button2.Visible = true;
       Button3.Visible = true;
       h = HotelClass.GetHotel();
    //  show();
       con.Open();
       cmd.Connection = con;
       TextBox1.Enabled = false;
       TextBox2.Enabled = false;
       TextBox3.Enabled = false;
       TextBox4.Enabled = false;
       TextBox5.Enabled = false;

       h.Name = TextBox1.Text;
       h.Address = TextBox2.Text;
       h.Maplink = TextBox3.Text;
       h.Bio = TextBox4.Text;
       h.Username = TextBox5.Text;

       cmd.CommandText = "update [Hotel] Set Name=@Name,Address=@Address,Maplink=@Maplink,Bio=@Bio,Username=@Username where HId='"+h.HId+"'";
       cmd.Parameters.Add(new SqlParameter("@Name", SqlDbType.VarChar, 50));
       cmd.Parameters.Add(new SqlParameter("@Address", SqlDbType.VarChar, 500));
       cmd.Parameters.Add(new SqlParameter("@Maplink", SqlDbType.VarChar, 500));
       cmd.Parameters.Add(new SqlParameter("@Bio", SqlDbType.VarChar, 500));
       cmd.Parameters.Add(new SqlParameter("@Username", SqlDbType.VarChar, 10));
  
       cmd.Parameters["@Name"].Value=TextBox1.Text;
                //cmd.Parameters["@Password"].Value = TextBox21.Text;
                cmd.Parameters["@Address"].Value = TextBox2.Text;
                cmd.Parameters["@Maplink"].Value = TextBox3.Text;
                cmd.Parameters["@Bio"].Value = TextBox4.Text;
                cmd.Parameters["@Username"].Value = TextBox5.Text;
                       //cmd.CommandText = "Update [Hotel] set Name='" + TextBox1.Text + "',Address='" + TextBox2.Text + "',Maplink='" + TextBox3.Text + "',Bio='" + TextBox4.Text + "',Username='" + TextBox5.Text + "' where HId='" + h.HId + "'";
       cmd.ExecuteNonQuery();
       Session["hotel"] = h;
       con.Close();
       MessageBox.Show("Profile Updated");
   }
    //Cancel Profile
   protected void Button3_Click(object sender, EventArgs e)
   {
       Response.Redirect("Iconspage.aspx");
   }
   protected void LinkButton2_Click(object sender, EventArgs e)
   {
       PasswordPannel.Visible = true;   
   }
   protected void Button4_Click(object sender, EventArgs e)
   {
       PasswordPannel.Visible = true;
       h = HotelClass.GetHotel();
       con.Open();
       string str = "select Password from [Hotel] where Name='" + h.Name + "'";
       cmd = new SqlCommand(str, con);
       dr = cmd.ExecuteReader();
       while (dr.Read())
       {
           if (TextBox6.Text == dr["Password"].ToString())
           {
               up = 1;
           }
       }
       dr.Close();
       con.Close();
       if (up == 1)
       {
           con.Open();
           cmd.Connection = con;
           str = "update [Hotel] set Password=@Password where Name='" + h.Name + "'";
           cmd = new SqlCommand(str, con);
           cmd.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar, 50));
           cmd.Parameters["@Password"].Value = TextBox8.Text;
           cmd.ExecuteNonQuery();
           Session["hotel"] = h;
           con.Close();
           Label10.Text = "Password changed Successfully";
       }
       else
       {
           Label10.Text = "Please enter correct Current password";
       }
   }
}