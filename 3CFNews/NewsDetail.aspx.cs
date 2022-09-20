using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3CFNews
{
    public partial class NewsDetail : System.Web.UI.Page
    {
        ClassSql clas = new ClassSql();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string newsid = Request.QueryString["newsid"];
                GetDetailNews(newsid);
            }
        }
        protected void GetDetailNews(string id)
        {
            DataTable dt = clas.getdatatable("Select * from Tb_NewsEdit where NewsID=" + id);
            if (dt != null)
            {
                LtlHead.Text = dt.Rows[0]["NewsHead"].ToString();
                LblImage.Text = dt.Rows[0]["NewsFoto"].ToString();
                LtlText.Text = dt.Rows[0]["NewsText"].ToString();
            }
        }
    }
}