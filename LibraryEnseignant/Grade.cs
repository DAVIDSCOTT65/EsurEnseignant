using DataBaseUtilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace LibraryEnseignant
{
    public class Grade
    {
        public int Id { get; set; }
        public string Designation { get; set; }
        public DateTime DateEnregistre { get; set; }
        public void SaveDatas(Grade g)
        {
            if (ImplementeConnexion.Instance.Conn.State == System.Data.ConnectionState.Closed)
                ImplementeConnexion.Instance.Conn.Open();
            using (IDbCommand cmd = ImplementeConnexion.Instance.Conn.CreateCommand())
            {
                cmd.CommandText = "";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@id", 10, DbType.Int32, g.Id));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@designation", 100, DbType.String, g.Designation));

                cmd.ExecuteNonQuery();
            }
        }
    }
}