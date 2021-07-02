using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using WebChefotech.App_Code;

public partial class Tips : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database"].ToString());
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
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
            Label5.Text = u.Name.ToString();
        }
        con.Open();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter("select * from Tip",con);
        da.Fill(dt);
        con.Close();
        PagedDataSource pds = new PagedDataSource();
        DataView dv = new DataView(dt);
        pds.DataSource = dv;
        pds.AllowPaging = true;
        pds.PageSize = 8;
        pds.CurrentPageIndex = PageNumber;
        if (pds.PageCount > 1)
        {
            rptPaging.Visible = true;
            ArrayList arraylist = new ArrayList();
            for (int i = 0; i < pds.PageCount; i++)
                arraylist.Add((i + 1).ToString());
                rptPaging.DataSource = arraylist;
                rptPaging.DataBind();
        }
        else
        {
            rptPaging.Visible = false;
        }
        Repeater1.DataSource = pds;
        Repeater1.DataBind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //TextBox1.Text = "";
        TextBox2.Text = "";
    }
    public int PageNumber
    {
        get
        {
            if (ViewState["PageNumber"] != null)
                return Convert.ToInt32(ViewState["PageNumber"]);
            else
                return 0;
        }
        set
        {
            ViewState["PageNumber"] = value;
        }
    }
    protected void rptPaging_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
        fillData();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database"].ToString());
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("Select isnull(max(cast(Id as int)),0)+1 From [Tip]", con);
        sda.Fill(dt);
        Label4.Text = dt.Rows[0][0].ToString();
        SqlCommand cmd = new SqlCommand("insert into [Tip](Id,Name,Tip)values(@Id,@Name,@Tip)", con);
        cmd.Parameters.AddWithValue("@Id", Label4.Text);
        cmd.Parameters.AddWithValue("@Name",Label5.Text );
        cmd.Parameters.AddWithValue("@Tip",TextBox2.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        fillData();
        //TextBox1.Text = "";
        TextBox2.Text = "";
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Iconspage.aspx");
    }
}