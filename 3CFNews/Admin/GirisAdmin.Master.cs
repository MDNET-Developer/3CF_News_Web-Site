using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3CFNews.Admin
{
    public partial class GirisAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"].ToString() == "0")
            {
                Response.Redirect("Default.aspx");
            }

        }
    }
}