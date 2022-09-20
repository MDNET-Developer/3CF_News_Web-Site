using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3CFNews
{
    public partial class AnaSehife : System.Web.UI.Page
    {
        ClassSql klas = new ClassSql();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GetKriminal();
                GetMedeni();
                GetIqtisadi();
                GetSiyaset();
                GetHadise();
                GetMaraq();
                Getİdman();
                GetSouBiznes();
                GetTurizm();
                GetSlide();
                GetFoto();
            }

        }

        void GetSlide()
        {
            DataTable dt = klas.getdatatable("Select * , case when (row_number() over(order by Slideorder))=1 then 'active' else '' end as slideshow from TB_Slider");
            RpSlideIndicator.DataSource = dt;
            RpSlideIndicator.DataBind();

            RpSlideInner.DataSource = dt;
            RpSlideInner.DataBind();
        }
        //Galery hissesi  elaqe kodlari ------------------------------------------------


        void GetFoto()
        {
            DataTable dt = klas.getdatatable("Select * from Tb_Foto");
            FotoRepeaterID.DataSource = dt;
            FotoRepeaterID.DataBind();
        }

        static string Hash(string input)
        {
            using (SHA1Managed sha1 = new SHA1Managed())
            {
                var hash = sha1.ComputeHash(Encoding.UTF8.GetBytes(input));
                var sb = new StringBuilder(hash.Length * 2);

                foreach (byte b in hash)
                {
                    sb.Append(b.ToString("X2"));
                }

                return sb.ToString();
            }
        }
        protected void GetKriminal()
        {
            DataTable dt = klas.getdatatable("Select top 3 * from TB_NewsEdit where MenuID=5 order by NewsDate desc");
            RpKriminal.DataSource = dt;
            RpKriminal.DataBind();
        }
        protected void GetMedeni()
        {
            DataTable dt = klas.getdatatable("Select top 3 * from TB_NewsEdit where MenuID=2 order by NewsDate desc");
            RpMedeni.DataSource = dt;
            RpMedeni.DataBind();
        }
        protected void GetIqtisadi()
        {
            DataTable dt = klas.getdatatable("Select top 3 * from TB_NewsEdit where MenuID=1 order by NewsDate desc");
            RpIqtisadi.DataSource = dt;
            RpIqtisadi.DataBind();
        }
        protected void GetSiyaset()
        {
            DataTable dt = klas.getdatatable("Select top 3 * from TB_NewsEdit where MenuID=6 order by NewsDate desc");
            RpSiyaset.DataSource = dt;
            RpSiyaset.DataBind();
        }
        protected void GetHadise()
        {
            DataTable dt = klas.getdatatable("Select top 3 * from TB_NewsEdit where MenuID=4 order by NewsDate desc");
            RpHadise.DataSource = dt;
            RpHadise.DataBind();
        }
        protected void GetMaraq()
        {

            DataTable dt = klas.getdatatable("Select top 3 * from TB_NewsEdit where MenuID=8 order by NewsDate desc");
            RpMaraq.DataSource = dt;
            RpMaraq.DataBind();
        }
        protected void Getİdman()
        {
            DataTable dt = klas.getdatatable("Select top 3 * from TB_NewsEdit where MenuID=7 order by NewsDate desc");
            Rpİdman.DataSource = dt;
            Rpİdman.DataBind();
        }
        protected void GetSouBiznes()
        {
            DataTable dt = klas.getdatatable("Select top 3 * from TB_NewsEdit where MenuID=3 order by NewsDate desc");
            RpSou.DataSource = dt;
            RpSou.DataBind();
        }
        protected void GetTurizm()
        {
            DataTable dt = klas.getdatatable("Select top 3 * from TB_NewsEdit where MenuID=9 order by NewsDate desc");
            RpTurizm.DataSource = dt;
            RpTurizm.DataBind();
        }
        protected void ModalSubmitbtn_Click(object sender, EventArgs e)
        {
            if (txtPass.Text == xtxRePass.Text)
            {
                SqlCommand cmd = new SqlCommand("Insert into Tb_UsersWebsite (UserName, Mail, Password) values (@UserName,@Mail,@Password)", klas.baglanti);
                cmd.Parameters.AddWithValue("Username", txtUser.Text);
                cmd.Parameters.AddWithValue("Mail", txtMail.Text);
                cmd.Parameters.AddWithValue("Password", Hash(txtPass.Text));
                klas.baglanti.Open();
                cmd.ExecuteNonQuery();
                klas.baglanti.Close();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Diqqət !!!", "mesaj1();", true);
                txtUser.Text = "";
                txtMail.Text = "";
                txtPass.Text ="";
                xtxRePass.Text = "";
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Diqqət !!!", "mesaj();", true);
            }
        }

        protected void DaxilOl_Click(object sender, EventArgs e)
        {
            string username = txtUser.Text;
            string password = Hash(txtPass.Text);
            DataTable dt = klas.getdatatable(@"Select *  from Tb_UsersWebsite where UserName= '" + username + "'and Password='" + password + "'");
            if (dt != null && dt.Rows.Count > 0)
            {
                Response.Write("Daxil oldunuz" + dt.Rows[0]["UserName"].ToString());
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Diqqət !!!", "mesaj2();", true);
            }
        }
    }
}