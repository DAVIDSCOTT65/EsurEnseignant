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
                connecter();
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
        public void chargeTextBox(int id,TextBox txt1, TextBox txt2, TextBox txt3, DropDownList txt4, TextBox txt5, TextBox txt6, DropDownList txt7, DropDownList txt8, TextBox txt9, TextBox txt10, string procedure,int condition)
        {
            connecter();
            if (ImplementeConnexion.Instance.Conn.State == System.Data.ConnectionState.Closed)
                ImplementeConnexion.Instance.Conn.Open();
            using (IDbCommand cmd = ImplementeConnexion.Instance.Conn.CreateCommand())
            {
                cmd.CommandText = procedure;
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(Parametres.Instance.AddParametres(cmd, "@id", 10, DbType.Int32, condition));

                IDataReader rd = cmd.ExecuteReader();

                //cmb.Items.Clear();

                while (rd.Read())
                {
                    id = Convert.ToInt32(rd["Id"].ToString());
                    txt1.Text = rd["Nom"].ToString();
                    txt2.Text = rd["Postnom"].ToString();
                    txt3.Text = rd["Prenom"].ToString();
                    txt4.Text = rd["Sexe"].ToString();
                    txt5.Text = rd["AnneeFinEtude"].ToString();
                    txt6.Text = rd["FiliereEtude"].ToString();
                    txt7.Text = rd["Grade"].ToString();
                    txt8.Text = rd["Type"].ToString();
                    txt9.Text = rd["Telephone"].ToString();
                    txt10.Text = rd["Email"].ToString();
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