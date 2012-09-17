using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

/// <summary>
/// Description résumée de pageDeBase
/// </summary>
public class pageDeBase : System.Web.UI.Page
{
    public pageDeBase()
    {
    }

    public void Page_Error(object sender, EventArgs e) 
    {
        Exception erreur = Server.GetLastError();
        this.traiteErreur(this.Page, "UNE ERREUR EST SURVENUE:", erreur);
    }

    public string traiteErreur(System.Web.UI.Page page, String msg, Exception ex)
    {
        try 
        {
            File.AppendAllText(page.Server.MapPath("App_Data'\'logErreur.txt"), "ERREUR " + DateTime.Now.ToLongDateString() + "\r\n");
            File.AppendAllText(page.Server.MapPath("App_Data'\'logErreur.txt"), msg + ex.ToString());
        }
        catch 
        {
            Exception ex2;
        }

        return "UNE ERREUR S'EST PRODUITE: " + ex.ToString();
    }

}
