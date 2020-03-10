using DataBaseUtilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace LibraryCompetence
{
    public class AvoirCompetence
    {
        public int Id { get; set; }
        public int RefCompetence { get; set; }
        public int RefEnseignant { get; set; }
        public string NiveauMetrise { get; set; }
        public void SaveDatas(AvoirCompetence a)
        {
            if (ImplementeConnexion.Instance.Conn.State == System.Data.ConnectionState.Closed)
                ImplementeConnexion.Instance.Conn.Open();
            using (IDbCommand cmd = ImplementeConnexion.Instance.Conn.CreateCommand())
            {
                cmd.CommandText = "";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@id", 10, DbType.Int32, a.Id));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@refcomp", 10, DbType.Int32, a.RefCompetence));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@refenseign", 10, DbType.Int32, a.RefEnseignant));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@niveau", 100, DbType.String, a.NiveauMetrise));

                cmd.ExecuteNonQuery();
            }
        }
    }
}