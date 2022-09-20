using System;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace _3CFNews.Admin
{
    public partial class LogInn : System.Web.UI.Page
    {
        ClassSql klas = new ClassSql();
        protected void Page_Load(object sender, EventArgs e)
        {
          
            Session["ID"] = 0;

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }

        protected void duyme_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from TB_User where Username=@p1 and password=@p2", klas.baglanti);
            cmd.Parameters.AddWithValue("p1", TextBox1.Text);
            cmd.Parameters.AddWithValue("p2", TextBox2.Text);
            klas.baglanti.Open();
            SqlDataAdapter dap = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            dap.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                Session["ID"] = 1;
                Response.Redirect("Default.aspx");
                TextBox1.Text = "";
                TextBox2.Text = "";
                
            }
            else
            {
            Session["ID"] = 0;
            
            
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Diqqət !!!", "mesaj();", true);    
                

            }
            klas.baglanti.Close();
        }
    }
}