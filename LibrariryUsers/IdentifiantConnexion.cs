using DataBaseUtilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace LibrariryUsers
{
    public class IdentifiantConnexion
    {
        public int Id { get; set; }
        public string Pseudo { get; set; }
        public string Password { get; set; }
        public string Status { get; set; }
        public int RefEnseignant { get; set; }

        public void SaveDatas(IdentifiantConnexion i)
        {
            if (ImplementeConnexion.Instance.Conn.State == System.Data.ConnectionState.Closed)
                ImplementeConnexion.Instance.Conn.Open();
            using (IDbCommand cmd = ImplementeConnexion.Instance.Conn.CreateCommand())
            {
                cmd.CommandText = "";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@id", 10, DbType.Int32, i.Id));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@pseudo", 100, DbType.String, i.Pseudo));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@pass", 200, DbType.String, i.Password));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@status", 100, DbType.String, i.Status));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@refenseign", 10, DbType.Int32, i.RefEnseignant));

                cmd.ExecuteNonQuery();
            }
        }
    }
}