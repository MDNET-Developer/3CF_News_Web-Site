using System.Data.SqlClient;

namespace _3CFNews.Admin
{
    internal class Sqlcommand
    {
        private string v;
        private SqlConnection baglanti;

        public Sqlcommand(string v, SqlConnection baglanti)
        {
            this.v = v;
            this.baglanti = baglanti;
        }
    }
}