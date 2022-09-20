using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3CFNews.Admin
{
    public partial class NewsEdit : System.Web.UI.Page
    {
        ClassSql klas = new ClassSql();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GetNewsType();
                ViewState["NewsID"] = 0;
                GetNews();
            }
        }
        //--------------------------------------------------------------------
        protected void GetNews()
        {
            RPNews.DataSource = klas.getdatatable("Select Row_Number() over(order by NewsDate desc) sn,* from TB_NewsEdit");
            RPNews.DataBind();
        }
        //-----------------------------------------------------------------
        protected void GetNewsType()//dropdownun sql den teqdim olunmasi
        {
            DDLNewsType.DataValueField = "MenuID";
            DDLNewsType.DataTextField = "MenuText";
            DDLNewsType.DataSource = klas.getdatatable("Select * from TB_News");
            DDLNewsType.DataBind();
            DDLNewsType.Items.Insert(0, new ListItem("Seçin", "0"));
        }
        //------------------------------------------------------------------------
        protected void btnok_Click(object sender, EventArgs e)
        {
            if (txtNewsHead.Text != "")
            {

                if (ViewState["NewsID"].ToString() == "0")
                {
                    SqlCommand cmd = new SqlCommand(@"Insert into TB_NewsEdit (NewsHead, NewsFoto, NewsText, NewsDate, MenuID) values(@NewsHead, @NewsFoto, @NewsText, @NewsDate, @MenuID)", klas.baglanti);
                    cmd.Parameters.AddWithValue("NewsHead", txtNewsHead.Text);
                    cmd.Parameters.AddWithValue("NewsFoto", fileimg.FileName);
                    cmd.Parameters.AddWithValue("NewsText", tvtNewsText.Text);
                    cmd.Parameters.AddWithValue("NewsDate", txtdate.Text);
                    cmd.Parameters.AddWithValue("MenuID", DDLNewsType.SelectedValue.ToString());
                    klas.baglanti.Open();
                    cmd.ExecuteNonQuery();
                    klas.baglanti.Close();
                    GetNews();
                    fileimg.SaveAs(Server.MapPath(@"\NewsImage\" + fileimg.FileName));
                }
                else
                {
                    SqlCommand cmd = new SqlCommand(@"Update TB_NewsEdit set NewsHead=@NewsHead, NewsFoto=@NewsFoto, NewsText=@NewsText, NewsDate=@NewsDate, MenuID=@MenuID where NewsID=" + ViewState["NewsID"].ToString(), klas.baglanti);
                    cmd.Parameters.AddWithValue("NewsHead", txtNewsHead.Text);
                    cmd.Parameters.AddWithValue("NewsFoto", fileimg.FileName);
                    cmd.Parameters.AddWithValue("NewsText", tvtNewsText.Text);
                    cmd.Parameters.AddWithValue("NewsDate", txtdate.Text);
                    cmd.Parameters.AddWithValue("MenuID", DDLNewsType.SelectedValue.ToString());
                    klas.baglanti.Open();
                    cmd.ExecuteNonQuery();
                    klas.baglanti.Close();
                    GetNews();
                    fileimg.SaveAs(Server.MapPath(@"\NewsImage\" + fileimg.FileName));
                }

            }
        }

        protected void RPNews_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string newsid = e.CommandArgument.ToString();
            if (e.CommandName == "Baxish")
            {
                Response.Redirect("ViewNews.aspx?p=" + newsid);
            }
            else if (e.CommandName == "Edit")
            {
                DataRow dr = klas.getdatatable("Select * from TB_NewsEdit where NewsID=" + newsid).Rows[0];
                txtNewsHead.Text = dr["NewsHead"].ToString();
                imgnews.ImageUrl = @"..\NewsImage\" + dr["Newsfoto"].ToString();
                tvtNewsText.Text = dr["NewsText"].ToString();
                txtdate.Text = dr["NewsDate"].ToString();
                DDLNewsType.SelectedValue = dr["MenuID"].ToString();
                ViewState["NewsID"] = newsid;
            }
            else if (e.CommandName == "Delete")
            {
                SqlCommand cmd = new SqlCommand("Delete from TB_NewsEdit where MenuID=" + e.CommandArgument.ToString(), klas.baglanti);
                klas.baglanti.Open();
                cmd.ExecuteNonQuery();
                klas.baglanti.Close();
                GetNews();
            }
        }
    }
}