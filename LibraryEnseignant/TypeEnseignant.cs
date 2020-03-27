using DataBaseUtilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace LibraryEnseignant
{
    public class TypeEnseignant
    {

       
        public int Id { get; set; }
        public string Designation { get; set; }
        public string Accronyme { get; set; }
        public DateTime DateEnregistre { get; set; }
        public void SaveDatas(TypeEnseignant t)
        {
            connecter();
            if (ImplementeConnexion.Instance.Conn.State == ConnectionState.Closed)
                ImplementeConnexion.Instance.Conn.Open();
            using (IDbCommand cmd = ImplementeConnexion.Instance.Conn.CreateCommand())
            {
                cmd.CommandText = "INSERT_TYPE";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@idModif", 10, DbType.Int32, t.Id));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@designation", 100, DbType.String, t.Designation));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@acronym", 20, DbType.String, t.Accronyme));

                cmd.ExecuteNonQuery();
            }
        }
        public void connecter()
        {
            string chemin;
            try
            {
                Connexion connexion = new Connexion();

                connexion.Serveur = "DESKTOP-F7M2TM5";
                connexion.Database = "ESUR_DATABASAE";
                connexion.User = "SA";
                connexion.Password = "12345";

                ImplementeConnexion.Instance.Initialise(connexion, ConnexionType.SQLServer);
                ImplementeConnexion.Instance.Conn.Open();

                chemin = "server = " + connexion.Serveur + ";database = " + connexion.Database + ";uid =" + connexion.User + ";pwd = " + connexion.Password + ";";
            }
            catch (InvalidOperationException ex)
            {

            }

            finally
            {
                if (ImplementeConnexion.Instance.Conn != null)
                {
                    if (ImplementeConnexion.Instance.Conn.State == System.Data.ConnectionState.Open)
                    {
                        ImplementeConnexion.Instance.Conn.Close();
                    }
                }
            }
        }
    }
}