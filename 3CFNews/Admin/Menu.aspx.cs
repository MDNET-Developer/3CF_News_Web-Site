using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace _3CFNews.Admin
{
    public partial class Menu : System.Web.UI.Page
    {
        ClassSql klas = new ClassSql ();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                getMenu();
                ViewState["MenuID"] = 0;

            }


           
        }

       protected void getMenu()
        {
            DataTable dt = klas.getdatatable("SELECT * FROM Tb_AdminMenu ORDER BY MenuRow");
            RepeatMenu.DataSource = dt;
            RepeatMenu.DataBind();
        }

       
        //Tesdiq et buttonu
        protected void duyme_Click(object sender, EventArgs e)
        {
            if (ViewState["MenuID"].ToString() == "0")
            {
                SqlCommand cmd = new SqlCommand("Insert Into Tb_AdminMenu (MenuName,MenuURL,MenuRow) values(@MenuName,@MenuURL,@MenuRow)", klas.baglanti);
                cmd.Parameters.AddWithValue("MenuName", TextBox1.Text);
                cmd.Parameters.AddWithValue("MenuURL", TextBox2.Text);
                cmd.Parameters.AddWithValue("MenuRow", TextBox3.Text);
                klas.baglanti.Open();
                cmd.ExecuteNonQuery();
                klas.baglanti.Close();
                getMenu();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Diqqət !!!", "tesdiqle();", true);
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";

            }
            else if (ViewState["MenuID"].ToString() != "0")
            {
                SqlCommand cmd = new SqlCommand("Update TB_AdminMenu set MenuName=@MenuName,MenuURL=@MenuURL,MenuRow=@MenuRow where MenuID=@MenuID", klas.baglanti);
                cmd.Parameters.AddWithValue("MenuName", TextBox1.Text);
                cmd.Parameters.AddWithValue("MenuURL", TextBox2.Text);
                cmd.Parameters.AddWithValue("MenuRow", TextBox3.Text);
                cmd.Parameters.AddWithValue("MenuID", ViewState["MenuID"].ToString());
                klas.baglanti.Open();
                cmd.ExecuteNonQuery();
                klas.baglanti.Close();
                getMenu();

            }
            
            
        }

        protected void RepeatMenu_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
        {

            //Duzelis et duymesi
            if (e.CommandName.ToString() == "edit")
            {
                DataTable dt = klas.getdatatable("Select * from TB_AdminMenu WHERE MenuID=" + e.CommandArgument.ToString());
   
                TextBox1.Text = dt.Rows[0]["MenuName"].ToString();
                TextBox2.Text = dt.Rows[0]["MenuURL"].ToString();
                TextBox3.Text = dt.Rows[0]["MenuRow"].ToString();
                ViewState["MenuID"] = e.CommandArgument.ToString();
     
            }

            //Sil duymesi
            else if (e.CommandName.ToString() == "delete")
            {
               SqlCommand cmd = new SqlCommand("Delete from Tb_AdminMenu WHERE  MenuID= " + e.CommandArgument.ToString(),klas.baglanti);
                klas.baglanti.Open();
                cmd.ExecuteNonQuery();
                klas.baglanti.Close();
                getMenu();
            }

           
        }

       
    }
    
}