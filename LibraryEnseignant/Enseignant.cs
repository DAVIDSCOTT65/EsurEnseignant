using DataBaseUtilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;

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
        public Image Photo { get; set; }
        public string Pseudo { get; set; }
        public string Pass { get; set; }
        private byte[] ConverttoByteImage(Image img)
        {
            MemoryStream ms = new MemoryStream();
            Bitmap bmpImage = new Bitmap(img);
            byte[] bytImage;
            bmpImage.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
            bytImage = ms.ToArray();
            ms.Close();
            return bytImage;
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



                cmd.ExecuteNonQuery();

                SaveLogin(e);

                
            }
        }
    }
}