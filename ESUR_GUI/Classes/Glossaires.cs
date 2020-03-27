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

                while (rd.Read())
                {
                    string de = rd["Designation"].ToString();
                    cmb.Items.Add(de);
                }
                rd.Close();
                rd.Dispose();
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