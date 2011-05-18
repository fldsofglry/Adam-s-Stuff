using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class main : System.Web.UI.MasterPage
{
    public void HightlightNavItem(string menuItem)
    {

        lnkHome.CssClass = "";
        lnkProfile.CssClass = "";
        lnkRefManage.CssClass = "";
        lnkGameEntry.CssClass = "";

        switch (menuItem)
        {
            case "Home":
                lnkHome.CssClass = "on";
                break;
            case "MyProfile":
                lnkProfile.CssClass = "on";
                break;
            case "RefereeManage":
                lnkRefManage.CssClass = "on";
                break;
            case "GameEntry":
                lnkGameEntry.CssClass = "on";
                break;
            case "Register":
                lnkRegister.CssClass = "on";
                break;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}
