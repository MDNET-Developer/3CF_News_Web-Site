using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3CFNews
{
    public partial class Master3CF : System.Web.UI.MasterPage
    {

        ClassSql clas = new ClassSql();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GetMenu();
            }
        }
        protected void GetMenu()
        {
            LtMenu.Text+= "<div id='divmenu'>";
            DataTable dt = clas.getdatatable("SELECT * FROM Tb_AdminMenu ORDER BY MenuRow");
            LtMenu.Text += "<ul class='menu'>";
            foreach (DataRow dr in dt.Rows)
            {
                LtMenu.Text += @"<li><a href='" + dr["MenuURL"].ToString() +"'>"+dr["MenuName"].ToString()+"</a></li>";
            }

            LtMenu.Text += "</ul>";
            LtMenu.Text += "</div>";
        }
    }
}