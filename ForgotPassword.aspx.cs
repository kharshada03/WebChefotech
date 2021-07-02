using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Data.Common;
using WebChefotech.App_Code;


public partial class ForgotPassword : System.Web.UI.Page
{
    UserClass u;
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=C:\\Users\\admin\\Desktop\\Website\\WebChefotech\\App_Data\\Database.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    //SqlDataReader sda;
    Random r = new Random();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    SqlDataAdapter da = new SqlDataAdapter();
    
    //HotelClass h = HotelClass.GetHotel();

    protected void Page_Load(object sender, EventArgs e)
    {
        u= UserClass.GetUser();
        OTPpanel.Visible = false;
        PasswordPannel.Visible = false;
    }
  /*  protected void LinkButton2_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
        //string username = "";
        //string password= "";
        //cmd.CommandText = "(select username, password from User where email)values(@email)",con;
       cmd.CommandText="select Username, Password from [User] where Emailid='"+ TextBox1.Text + "'";
       SqlDataAdapter da = new SqlDataAdapter(cmd);
        //cmd.Parameters.AddWithValue("Emailid", TextBox1.Text);
        da.Fill(ds);
        /*using (SqlDataReader dr = cmd.ExecuteReader())
        {
            if (dr.Read())
            {
                username = dr["username"].ToString();
                password = dr["password"].ToString();
            }
        }
        con.Close();
        if (ds.Tables[0].Rows.Count > 0)
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(TextBox1.Text);
            msg.To.Add(TextBox1.Text);
            int num = r.Next();
            msg.Subject = "Recover your Password";
            msg.Body = ("Your OPT is "+num);
            msg.IsBodyHtml = true;

            SmtpClient smt = new SmtpClient();
            smt.Host = "smtp.gmail.com";
            System.Net.NetworkCredential ntwd = new NetworkCredential();
            Label5.Text = "chefotech08@gmail.com"; //Your Email ID  
            Label6.Text= "chefo@08"; // Your Password  
            smt.UseDefaultCredentials = true;
            smt.Credentials = ntwd;
            smt.Port = 587;
            smt.EnableSsl = true;
            smt.Credentials = new NetworkCredential(Label5.Text, Label6.Text);
            smt.Send(msg);
            Label4.Text = "OTP Sent Successfully";
            Label4.ForeColor = System.Drawing.Color.ForestGreen;
        }
        //Response.Redirect("Login.aspx");
    }*/
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
        //string username = "";
        //string password= "";
        //cmd.CommandText = "(select username, password from User where email)values(@email)",con;
        cmd.CommandText = "select Username, Password from [User] where Emailid='" + TextBox1.Text + "'";
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //cmd.Parameters.AddWithValue("Emailid", TextBox1.Text);
        da.Fill(ds);
        /*using (SqlDataReader dr = cmd.ExecuteReader())
        {
            if (dr.Read())
            {
                username = dr["username"].ToString();
                password = dr["password"].ToString();
            }
        }*/
        con.Close();
        if (ds.Tables[0].Rows.Count > 0)
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(TextBox1.Text);
            msg.To.Add(TextBox1.Text);
            int num = r.Next();
            msg.Subject = "Recover your Password";
            msg.Body = ("Your OPT is " + num);
            HttpContext.Current.Session["s"] = num;
            msg.IsBodyHtml = true;

            SmtpClient smt = new SmtpClient();
            smt.Host = "smtp.gmail.com";
            System.Net.NetworkCredential ntwd = new NetworkCredential();
            Label5.Text = "chefotech08@gmail.com"; //Your Email ID  
            Label6.Text = "chefo@08"; // Your Password  
            smt.UseDefaultCredentials = true;
            smt.Credentials = ntwd;
            smt.Port = 587;
            smt.EnableSsl = true;
            smt.Credentials = new NetworkCredential(Label5.Text, Label6.Text);
            smt.Send(msg);
            Label4.Text = "OTP Sent Successfully";
            Label4.ForeColor = System.Drawing.Color.ForestGreen;
            OTPpanel.Visible = true;
        }
        else
        {
            Label4.Text = "Email does not match that Entered while Signup";
            Label4.ForeColor = System.Drawing.Color.Red;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        OTPpanel.Visible = true;
        int s1 = Convert.ToInt32(TextBox2.Text);
        int s = (int)Session["s"];
        if (s1 == s)
        {
            PasswordPannel.Visible = true;
        }
        else
        {
            Label8.Text = "Entered OTP is Incorrect. Please enter the correct OTP.";
            Label8.ForeColor = System.Drawing.Color.Red;
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        OTPpanel.Visible = true;
        PasswordPannel.Visible = true;
        
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "update [User] set Password=@Password where Emailid='" + TextBox1.Text + "'";
            cmd.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar, 50));
            cmd.Parameters["@Password"].Value = TextBox4.Text;
            cmd.ExecuteNonQuery();
            Session["user"] = u;
            con.Close();
            Label11.Text = "Password Updated!!";
            Label11.ForeColor = System.Drawing.Color.Green;
            OTPpanel.Visible = false;
            PasswordPannel.Visible = false;
            
        
           /* con.Open();
            cmd.Connection = con;
            cmd.CommandText = "update [Hotel] set Password=@Password where Emailid='" + TextBox1.Text + "'";
            cmd.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar, 50));
            cmd.Parameters["@Password"].Value = TextBox4.Text;
            cmd.ExecuteNonQuery();
            Session["hotel"] = h;
            con.Close();*/
        
    }
}