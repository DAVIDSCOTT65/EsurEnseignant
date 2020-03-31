using DataBaseUtilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace ESUR_GUI.Classes
{
    public class Glossaires
    {
        SqlConnection con = null;
        SqlCommand cmd = null;
        SqlDataReader dr = null;
        SqlDataAdapter dt = null;

        static Glossaires _instance = null;
        public static Glossaires getInstance()
        {
            if (_instance == null)
                _instance = new Glossaires();
            return _instance;
        }
        public int loginTest(string nom, string password)
        {
            int count = 0;
            int id = 0;
            string username = "";
            string niveau = "";
            string fonction = "";
            string ability = "";
            string etat = "";
            string maison = "";
            try
            {
                if (ImplementeConnexion.Instance.Conn.State == ConnectionState.Closed)
                    ImplementeConnexion.Instance.Conn.Open();
                using (IDbCommand cmd = ImplementeConnexion.Instance.Conn.CreateCommand())
                {
                    cmd.CommandText = "SP_Login";
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@pseudo", 50, DbType.String, nom));
                    cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@pass", 200, DbType.String, password));


                    IDataReader dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        id = Convert.ToInt32(dr["RefEnseignant"].ToString().Trim());
                        count += 1;
                    }
                    dr.Dispose();
                    if (count == 1)
                    {



                        UserSession.GetInstance().Id = id;
                        UserSession.GetInstance().UserName = username;
                        UserSession.GetInstance().Fonction = fonction;
                        UserSession.GetInstance().Maison = maison;


                    }
                    else
                    {
                        //MessageBox.Show("Echec de Connexion.", "Message Serveur...", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
            }
            finally
            {

            }
            return count;
        }
        public void chargeCombo(DropDownList cmb, string procedure)
        {
            connecter();
            if (ImplementeConnexion.Instance.Conn.State == System.Data.ConnectionState.Closed)
                ImplementeConnexion.Instance.Conn.Open();
            using (IDbCommand cmd = ImplementeConnexion.Instance.Conn.CreateCommand())
            {
                cmd.CommandText = procedure;
                cmd.CommandType = CommandType.StoredProcedure;

                IDataReader rd = cmd.ExecuteReader();

                cmb.Items.Clear();

                while (rd.Read())
                {
                    string de = rd["Designation"].ToString();
                    cmb.Items.Add(de);
                }
                rd.Close();
                rd.Dispose();
            }
        }
        public string GetID(string procedure,string valeur)
        {
            string _id = string.Empty;
            connecter();
            if (ImplementeConnexion.Instance.Conn.State == System.Data.ConnectionState.Closed)
                ImplementeConnexion.Instance.Conn.Open();
            using (IDbCommand cmd = ImplementeConnexion.Instance.Conn.CreateCommand())
            {
                cmd.CommandText = procedure;
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@designation", 100, DbType.String, valeur));

                IDataReader rd = cmd.ExecuteReader();

                while (rd.Read())
                {
                    _id = rd["Id"].ToString();
                }
                rd.Dispose();
            }
               
            return _id.ToString();
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