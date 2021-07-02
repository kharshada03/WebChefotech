using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dictionary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string a = TextBox1.Text;
        Response.Redirect("https://www.google.com/search?source=hp&ei=VQGmXLOHKdem9QORloyYDA&q="+ a);
    }
}