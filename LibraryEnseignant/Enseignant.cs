using DataBaseUtilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace LibraryEnseignant
{
    public class Enseignant
    {
        public int Id { get; set; }
        public string Nom { get; set; }
        public string Postnom { get; set; }
        public string Prenom { get; set; }
        public string Sexe { get; set; }
        public DateTime DBO { get; set; }
        public int AnneeFinEtude { get; set; }
        public string Filiere { get; set; }
        public int RefGrade { get; set; }
        public int RefType { get; set; }
        public FileUpload File { get; set; }
        public string UrlImage { get; set; }
        public string Telephone { get; set; }
        public string Email { get; set; }
        public string Statut { get; set; }
        public string Pseudo { get; set; }
        public string Pass { get; set; }
        private byte[] ConvertImageToByte(FileUpload img)
        {
            HttpPostedFile postedFiles = img.PostedFile;
            Stream stream = postedFiles.InputStream;
            BinaryReader binaryReader = new BinaryReader(stream);
            Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);
            return bytes;
        }
        public void SaveLogin(Enseignant e)
        {
            if (ImplementeConnexion.Instance.Conn.State == ConnectionState.Closed)
                ImplementeConnexion.Instance.Conn.Open();
            using (IDbCommand cmd = ImplementeConnexion.Instance.Conn.CreateCommand())
            {
                cmd.CommandText = "INSERT_LOGIN";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@idModif", 10, DbType.Int32, e.Id));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@pseudo", 50, DbType.String, e.Pseudo));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@pass", 255, DbType.String, e.Pass));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@statut", 255, DbType.String, "Enseignant"));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@nom", 255, DbType.String, e.Nom));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@postnom", 255, DbType.String, e.Postnom));

                cmd.ExecuteNonQuery();


            }
        }
        public void SaveDatas(Enseignant e)
        {
            if (ImplementeConnexion.Instance.Conn.State == ConnectionState.Closed)
                ImplementeConnexion.Instance.Conn.Open();
            using (IDbCommand cmd = ImplementeConnexion.Instance.Conn.CreateCommand())
            {
                cmd.CommandText = "INSERT_ENSEIGNANT";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@idModif", 10, DbType.Int32, e.Id));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@nom", 100, DbType.String, e.Nom));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@postnom", 100, DbType.String, e.Postnom));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@prenom", 100, DbType.String, e.Prenom));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@sexe", 2, DbType.String, e.Sexe));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@dob", 20, DbType.Date, e.DBO));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@annee", 5, DbType.String, e.AnneeFinEtude));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@filiere", 100, DbType.String, e.Filiere));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@refgrade", 20, DbType.Int32, e.RefGrade));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@reftype", 20, DbType.Int32, e.RefType));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@url", 255, DbType.String, e.UrlImage));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@telephone", 255, DbType.String, e.Telephone));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@mail", 255, DbType.String, e.Email));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@statut", 255, DbType.String, e.Statut));


                cmd.ExecuteNonQuery();

                SaveLogin(e);

                
            }
        }
        public void Confirmation(string matricule)
        {
            if (ImplementeConnexion.Instance.Conn.State == ConnectionState.Closed)
                ImplementeConnexion.Instance.Conn.Open();
            using (IDbCommand cmd = ImplementeConnexion.Instance.Conn.CreateCommand())
            {
                cmd.CommandText = "CONFIRMER_IDENTITE";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@matricule", 10, DbType.String, matricule));

                cmd.ExecuteNonQuery();


            }
        }
        public void Suppression(string matricule)
        {
            if (ImplementeConnexion.Instance.Conn.State == ConnectionState.Closed)
                ImplementeConnexion.Instance.Conn.Open();
            using (IDbCommand cmd = ImplementeConnexion.Instance.Conn.CreateCommand())
            {
                cmd.CommandText = "SUPRIMER_DEMANDE";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@matricule", 10, DbType.String, matricule));

                cmd.ExecuteNonQuery();


            }
        }
        public int NbrEnseignant(string type)
        {
            int nbr = 0;
            connecter();
            if (ImplementeConnexion.Instance.Conn.State == ConnectionState.Closed)
                ImplementeConnexion.Instance.Conn.Close();
            using (IDbCommand cmd = ImplementeConnexion.Instance.Conn.CreateCommand())
            {
                cmd.CommandText = "COUNT_ENSEIGNANT_PAR_TYPE";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@type", 20, DbType.String, type));

                IDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    if (dr["Nbr"] == DBNull.Value)
                        nbr = 0;
                    else
                        nbr = Convert.ToInt32(dr["Nbr"].ToString());
                }
                dr.Dispose();
            }
            return nbr;
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
                //if (ImplementeConnexion.Instance.Conn != null)
                //{
                //    if (ImplementeConnexion.Instance.Conn.State == System.Data.ConnectionState.Open)
                //    {
                //        ImplementeConnexion.Instance.Conn.Close();
                //    }
                //}
            }
        }
    }
}