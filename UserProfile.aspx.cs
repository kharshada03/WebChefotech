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

public partial class UserProfile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database"].ToString());
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    byte up;

    protected void Page_Load(object sender, EventArgs e)
    {
       /* if ((Session["user"] )== null)
        {
            MessageBox.Show("Session is Expired..");
        }
        else if ((Session["hotel"]) == null)
        {
            MessageBox.Show("Session is Expired..");
        }
        else*/
        //{
            ProfilePanel.Visible = false;
            Password.Visible = false;
        //}
        //EditProfile.Visible = false;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Password.Visible = false;
       // EditProfile.Visible = false;
        ProfilePanel.Visible = true;
        TextBox1.Enabled = false;
        TextBox2.Enabled = false;
        TextBox3.Enabled = false;
        TextBox4.Enabled = false;
        TextBox5.Enabled = false;
        TextBox6.Enabled = false;
        TextBox7.Enabled = false;
        TextBox8.Enabled = false;
        TextBox9.Enabled = false;
        show();
    }
    public void show()
    {
        UserClass u = UserClass.GetUser();
        TextBox1.Text = u.Name;
        TextBox2.Text = u.Contactno;
        TextBox3.Text = u.Emailid;
        TextBox4.Text = u.Bio;
        TextBox5.Text = u.Orders;
        TextBox6.Text = u.Speciality;
        TextBox7.Text = u.MenuOrder;
        /*int fp = u.FoodPrice;
        TextBox8.Text = fp.ToString();*/
        TextBox8.Text = u.FoodPrice;
        TextBox9.Text = u.Username; 
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
    /*protected void LinkButton4_Click(object sender, EventArgs e)
    {
        EditProfile.Visible = true;
        UserClass u = UserClass.GetUser();
        TextBox10.Text = u.Name;
        TextBox11.Text = u.Contactno;
        TextBox12.Text = u.Emailid;
        TextBox13.Text = u.Bio;
        TextBox14.Text = u.Orders;
        TextBox15.Text = u.Speciality;
        TextBox16.Text = u.MenuOrder;
        TextBox17.Text = u.FoodPrice;
        TextBox18.Text = u.Username;
        //ProfilePanel.Visible = true;
        Password.Visible = false;
    }*/
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Password.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Password.Visible = true;
        UserClass u = UserClass.GetUser();
        con.Open();
        string str = "select Password from [User] where Name='" + u.Name + "'";
        cmd = new SqlCommand(str, con);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            if (TextBox19.Text == dr["Password"].ToString())
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
            str = "update [User] set Password=@Password where Name='" + u.Name + "'";
            cmd = new SqlCommand(str, con);
            cmd.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar, 50));
            cmd.Parameters["@Password"].Value = TextBox21.Text;
            cmd.ExecuteNonQuery();
            Session["user"] = u;
            con.Close();
            lbl_msg.Text = "Password changed Successfully";
        }
        else
        {
            lbl_msg.Text = "Please enter correct Current password";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Iconspage.aspx");
    }
    //Edit Profile
    protected void Button3_Click(object sender, EventArgs e)
    {
        UserClass u = UserClass.GetUser();
        ProfilePanel.Visible = true;
        show();
        TextBox1.Enabled = true;
        TextBox2.Enabled = true;
        TextBox3.Enabled = true;
        TextBox4.Enabled = true;
        TextBox5.Enabled = true;
        TextBox6.Enabled = true;
        TextBox7.Enabled = true;
        TextBox8.Enabled = true;
        TextBox9.Enabled = true;
        Button4.Visible = true;
        Button5.Visible = true;
    }
    //Save Profile
    protected void Button4_Click(object sender, EventArgs e)
    {
        ProfilePanel.Visible = true;
        Button4.Visible = true;
        Button5.Visible = true;
        UserClass u = UserClass.GetUser();
        con.Open();
        cmd.Connection = con;
        TextBox1.Enabled = false;
        TextBox2.Enabled = false;
        TextBox3.Enabled = false;
        TextBox4.Enabled = false;
        TextBox5.Enabled = false;
        TextBox6.Enabled = false;
        TextBox7.Enabled = false;
        TextBox8.Enabled = false;
        TextBox9.Enabled = false;

        u.Name = TextBox1.Text;
        u.Contactno = TextBox2.Text;
        u.Emailid = TextBox3.Text;
        u.Bio = TextBox4.Text ;
        u.Orders = TextBox5.Text ;
        u.Speciality = TextBox6.Text ;
        u.MenuOrder = TextBox7.Text ;
        u.FoodPrice = TextBox8.Text ;
        u.Username = TextBox9.Text;

        cmd.CommandText = "update [User] set Name=@Name,Contactno=@Contactno,Emailid=@Emailid,Bio=@Bio,Orders=@Orders,Speciality=@Speciality,MenuOrder=@MenuOrder,FoodPrice=@FoodPrice,Username=@Username where Id='"+u.Id+"'";
        cmd.Parameters.Add(new SqlParameter("@Name", SqlDbType.VarChar, 50));
        cmd.Parameters.Add(new SqlParameter("@Contactno", SqlDbType.VarChar, 10));
        cmd.Parameters.Add(new SqlParameter("@Emailid", SqlDbType.VarChar, 50));
        cmd.Parameters.Add(new SqlParameter("@Bio", SqlDbType.VarChar, 500));
        cmd.Parameters.Add(new SqlParameter("@Orders", SqlDbType.Char, 10));
        cmd.Parameters.Add(new SqlParameter("@Speciality", SqlDbType.VarChar, 500));
        cmd.Parameters.Add(new SqlParameter("@MenuOrder", SqlDbType.VarChar, 500));
        cmd.Parameters.Add(new SqlParameter("@FoodPrice", SqlDbType.VarChar, 50));
        cmd.Parameters.Add(new SqlParameter("@Username", SqlDbType.VarChar, 50));

            cmd.Parameters["@Name"].Value = TextBox1.Text;
            cmd.Parameters["@Contactno"].Value = TextBox2.Text;
            cmd.Parameters["@Emailid"].Value = TextBox3.Text;
            cmd.Parameters["@Bio"].Value = TextBox4.Text;
            cmd.Parameters["@Orders"].Value = TextBox5.Text;
            cmd.Parameters["@Speciality"].Value = TextBox6.Text;
            cmd.Parameters["@MenuOrder"].Value = TextBox7.Text;
            cmd.Parameters["@FoodPrice"].Value = TextBox8.Text;
            cmd.Parameters["@Username"].Value = TextBox9.Text;
        cmd.ExecuteNonQuery();
        Session["user"] = u;
        con.Close();
        MessageBox.Show("Profile Updated");
    }
    //Cancel Profile
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Iconspage.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Iconspage.aspx");
    }
}