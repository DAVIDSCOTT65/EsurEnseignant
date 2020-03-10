﻿using DataBaseUtilities;
using System;
using System.Collections.Generic;
using System.Data;
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
        public void SaveDatas(Enseignant e)
        {
            if (ImplementeConnexion.Instance.Conn.State == ConnectionState.Closed)
                ImplementeConnexion.Instance.Conn.Open();
            using (IDbCommand cmd = ImplementeConnexion.Instance.Conn.CreateCommand())
            {
                cmd.CommandText = "";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@id", 10, DbType.Int32, e.Id));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@nom", 100, DbType.String, e.Nom));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@postnom", 100, DbType.String, e.Postnom));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@prenom", 100, DbType.String, e.Prenom));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@sexe", 2, DbType.String, e.Sexe));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@dob", 20, DbType.String, e.DBO));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@afe", 5, DbType.String, e.AnneeFinEtude));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@filiere", 100, DbType.String, e.Filiere));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@refgrade", 20, DbType.Int32, e.RefGrade));
                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "reftype", 20, DbType.Int32, e.RefType));

                cmd.ExecuteNonQuery();

                
            }
        }
    }
}