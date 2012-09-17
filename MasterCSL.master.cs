using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterCSL : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lbtn_Langue_Click(object sender, EventArgs e)
    {
        string culture = "";

        LinkButton bouton = (LinkButton)sender;

        if (bouton.Text == "English?")
        {
            culture = "EN";
        }
        else
        {
            culture = "FR";
        }

        HttpCookie cookieLangue = new HttpCookie("CSLLangue");
        cookieLangue.Value = culture;
        cookieLangue.Expires = System.DateTime.Now.AddDays(365);
        Response.Cookies.Add(cookieLangue);

        Response.Redirect(Request.Url.AbsoluteUri, false);
    }
}
