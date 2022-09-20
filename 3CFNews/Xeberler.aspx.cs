using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3CFNews
{
    public partial class Xeberler : System.Web.UI.Page
    {
        ClassSql clas = new ClassSql();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string idmenunew = Request.QueryString["p"].ToString();
                string pagenew = "0";
                if (Request.QueryString["page"] != null)
                {
                    pagenew = Request.QueryString["page"].ToString();
                    pagenew = (int.Parse(pagenew) - 1).ToString();

                }
                GetNews(idmenunew,pagenew);
            }
        }
        private void GetNews(string idmenu,string page)
        {
            DataTable dt = clas.getdatatable("Select top 6* from Tb_NewsEdit where MenuID=" + idmenu + " and NewsID not in (select top (" + page + "*18) NewsID from TB_NewsEdit order by NewsID) order by NewsID");
            RpNews.DataSource = dt;
            RpNews.DataBind();


        }
    }
}