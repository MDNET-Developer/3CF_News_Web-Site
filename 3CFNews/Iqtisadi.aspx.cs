using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3CFNews
{
    public partial class Iqtisadi : System.Web.UI.Page
    {
        ClassSql klas = new ClassSql();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
                if (!Page.IsPostBack)
                {
                    Valyuta();
                }

            }

            void Valyuta()
            {
                DataTable dt = klas.getdatatable("Select * from Tb_Valyuta");
                ValyutaRepeatorID.DataSource = dt;
                ValyutaRepeatorID.DataBind();

                
            }

        }
    }
