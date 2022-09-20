using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3CFNews
{
    public partial class DaxilOl : System.Web.UI.Page
    {
        ClassSql clas = new ClassSql();
        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string username = TextBox1.Text;
            string password = Hash(TextBox2.Text);
            DataTable dt = clas.getdatatable(@"Select *  from Tb_UsersWebsite where UserName= '" + username+"'and Password='"+password+"'");
            if (dt!=null && dt.Rows.Count>0)
            {
                Response.Write("Daxil oldunuz" + dt.Rows[0]["UserName"].ToString());
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Diqqət !!!", "mesaj();", true);
            }
        }
    }
}