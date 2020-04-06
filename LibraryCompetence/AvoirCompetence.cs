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
        public string Designation { get; set; }
        public string Domaine { get; set; }
        public int RefCompetence { get; set; }
        public int RefEnseignant { get; set; }
        public string NiveauMetrise { get; set; }
        public void SaveDatas(AvoirCompetence a)
        {
            if (ImplementeConnexion.Instance.Conn.State == System.Data.ConnectionState.Closed)
                ImplementeConnexion.Instance.Conn.Open();
            using (IDbCommand cmd = ImplementeConnexion.Instance.Conn.CreateCommand())
            {
                cmd.CommandText = "INSERT_COMPETENCE";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@idModif", 10, DbType.Int32, a.Id));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@idComp", 10, DbType.Int32, a.RefCompetence));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@designation", 100, DbType.String, a.Designation));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@domaine", 100, DbType.String, a.Domaine));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@niveau", 100, DbType.String, a.NiveauMetrise));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@refenseignant", 10, DbType.Int32, a.RefEnseignant));

                cmd.ExecuteNonQuery();
            }
        }
    }
}