using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebChefotech.App_Code;

public partial class Iconspage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"]!=null)
        {
            UserClass u = UserClass.GetUser();
            Label8.Text = u.Name.ToString();
        }
        else 
        {
            HotelClass h = HotelClass.GetHotel();
            Label8.Text = h.Name.ToString();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["User"] != null)
        {
            Response.Redirect("UserProfile.aspx");
        }
        else
        {
            Response.Redirect("HotelProfile.aspx");
        }
    }
}