using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Xml.Linq;
using System.Configuration;
using System.Data;

public partial class Signup : System.Web.UI.Page
{
    
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=C:\\Users\\admin\\Desktop\\Website\\WebChefotech\\App_Data\\Database.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader ds;
    DataTable dt=new DataTable();
    DataTable dt1 = new DataTable();
   //code to diplay the data
    protected void Page_Load(object sender, EventArgs e)
    {
       // con.Open();
        /*SqlDataAdapter sda = new SqlDataAdapter("Select isnull(max(cast(Id as int)),0)+1 From [User]", con);
        sda.Fill(dt);
        Label27.Text = dt.Rows[0][0].ToString();
        SqlDataAdapter sda1 = new SqlDataAdapter("Select isnull(max(cast(HId as int)),1)+1 From [Hotel]", con);
        sda1.Fill(dt1);
        Label29.Text = dt.Rows[0][0].ToString();*/
        
        if (!IsPostBack)
        {
            UserPanel.Visible = false;
            EventPanel.Visible = false;
            UserConfirmPanel.Visible = false;
            HotelPanel.Visible = false;
            HotelConfirmPanel.Visible = false;
            LinkButton1.Visible = false;
            LinkButton2.Visible = false;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        EventPanel.Visible = false;
        UserConfirmPanel.Visible = false;
        HotelConfirmPanel.Visible = false;
        RadioButtonList1.ClearSelection();
        DropDownList2.ClearSelection();
        RadioButtonList2.ClearSelection();
        //RadioButton1.Checked = false;
        //RadioButton2.Checked = false;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "-1")
        {
            UserPanel.Visible = false;
            EventPanel.Visible = false;
            UserConfirmPanel.Visible = false;
            LinkButton1.Visible = false;
            LinkButton2.Visible = false;
            HotelConfirmPanel.Visible = false;
            HotelPanel.Visible = false;

        }
        else if (DropDownList1.SelectedValue == "User")
        {
            UserPanel.Visible = true;
            EventPanel.Visible = false;
            UserConfirmPanel.Visible = false;
            LinkButton1.Visible = true;
            LinkButton2.Visible = true;
            HotelConfirmPanel.Visible = false;
            HotelPanel.Visible = false;
        }
        else
        {
            UserPanel.Visible = false;
            EventPanel.Visible = false;
            UserConfirmPanel.Visible = false;
            LinkButton1.Visible = true;
            LinkButton2.Visible = true;
            HotelConfirmPanel.Visible = true;
            HotelPanel.Visible = true;
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
       // SqlCommand cmd = new SqlCommand("Insert into User" + "(Id,Name,Contactno,Emailid,Gender,Country,Bio,Orders,Speciality,MenuOrder,FoodPrice,Username,Password)values(@Id,@Name,@Contactno,@Emailid,@Gender,@Country,@Bio,@Orders,@Speciality,@MenuOrder,@FoodPrice,@Username,@Password)");
        if (DropDownList1.SelectedValue == "User")
        {
            SqlDataAdapter sda = new SqlDataAdapter("Select isnull(max(cast(Id as int)),0)+1 From [User]", con);
            sda.Fill(dt);
            Label27.Text = dt.Rows[0][0].ToString();
            cmd.Parameters.AddWithValue("@Id", Label27.Text);
            cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Contactno", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Emailid", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Country", DropDownList2.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Bio", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Orders", RadioButtonList2.SelectedValue);
            //cmd.Parameters.AddWithValue("@Orders", RadioButton1.Checked);
            //cmd.Parameters.AddWithValue("@Orders", RadioButton2.Checked);
            cmd.Parameters.AddWithValue("@Speciality", TextBox5.Text);
            cmd.Parameters.AddWithValue("@MenuOrder", TextBox6.Text);
            cmd.Parameters.AddWithValue("@FoodPrice", TextBox7.Text);
            cmd.Parameters.AddWithValue("@Username", TextBox8.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox9.Text);
            cmd.CommandText = "Insert into [User](Id,Name,Contactno,Emailid,Gender,Country,Bio,Orders,Speciality,MenuOrder,FoodPrice,Username,Password)values(@Id,@Name,@Contactno,@Emailid,@Gender,@Country,@Bio,@Orders,@Speciality,@MenuOrder,@FoodPrice,@Username,@Password)";
            cmd.ExecuteNonQuery();
        }
        else if (DropDownList1.SelectedValue == "Hotel")
        {
            SqlDataAdapter sda1 = new SqlDataAdapter("Select isnull(max(cast(HId as int)),0)+1 From [Hotel]", con);
              sda1.Fill(dt1);
            Label29.Text = dt1.Rows[0][0].ToString();
            cmd.Parameters.AddWithValue("@HId", Label29.Text);
            cmd.Parameters.AddWithValue("@Name", TextBox11.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox12.Text);
            cmd.Parameters.AddWithValue("@Maplink", TextBox13.Text);
            cmd.Parameters.AddWithValue("@Bio", TextBox14.Text);
            cmd.Parameters.AddWithValue("@Username", TextBox15.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox16.Text);
            // con.Close();
            //con.Open();
            cmd.CommandText = "Insert into [Hotel](HId,Name,Address,Maplink,Bio,Username,Password)values(@HId,@Name,@Address,@Maplink,@Bio,@Username,@Password)";
            cmd.ExecuteNonQuery();
            con.Close();
        }
        
       // GCNotificationStatus.Succeeded.ToString("Inserted");

        if (DropDownList2.SelectedValue=="User")
        {
            //EventPanel.Visible = true;
            UserConfirmPanel.Visible = true;
        }
        else if (DropDownList2.SelectedValue=="Hotel")
        {
            //EventPanel.Visible = false;
            HotelConfirmPanel.Visible = true;
        }
       /*else
        {
            HotelConfirmPanel.Visible = true;
        }*/
        //con.Close();
        Response.Redirect("Login.aspx");
    }
    
    /*protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        UserPanel.Visible = true;
        EventPanel.Visible = true;
        UserConfirmPanel.Visible = true;
        LinkButton1.Visible = true;
        LinkButton2.Visible = true;
        HotelConfirmPanel.Visible = false;
        HotelPanel.Visible = false;
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        UserPanel.Visible = true;
        EventPanel.Visible = false;
        UserConfirmPanel.Visible = true;
        LinkButton1.Visible = true;
        LinkButton2.Visible = true;
        HotelConfirmPanel.Visible = false;
        HotelPanel.Visible = false;
    }*/
    protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList2.SelectedValue == "Yes")
        {
            UserPanel.Visible = true;
            EventPanel.Visible = true;
            UserConfirmPanel.Visible = true;
            LinkButton1.Visible = true;
            LinkButton2.Visible = true;
            HotelConfirmPanel.Visible = false;
            HotelPanel.Visible = false;
        }
        else if(RadioButtonList2.SelectedValue=="No")
        {
            UserPanel.Visible = true;
            EventPanel.Visible = false;
            UserConfirmPanel.Visible = true;
            LinkButton1.Visible = true;
            LinkButton2.Visible = true;
            HotelConfirmPanel.Visible = false;
            HotelPanel.Visible = false;
        }
    }
}