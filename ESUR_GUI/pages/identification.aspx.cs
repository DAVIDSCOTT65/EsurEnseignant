using DataBaseUtilities;
using ESUR_GUI.Classes;
using LibraryEnseignant;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace ESUR_GUI
{
    public partial class identification : System.Web.UI.Page
    {
        public int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            //DataListCharge();
            Glossaires.getInstance().chargeCombo(cmbType, "SELECT_DESIGNATION_TYPE");
            Glossaires.getInstance().chargeCombo(cmbGrade, "SELECT_DESIGNATION_GRADE");
            Glossaires.getInstance().chargeTextBox(id, txtNom, txtPostnom, txtPrenom, cmbSexe, txtAnnee, txtFiliere, cmbGrade, cmbType, "SELECT_ENSEIGNANT", UserSession.GetInstance().Id);
            
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                Enseignant en = new Enseignant();
                HttpPostedFile postedFiles = FileUpload1.PostedFile;
                //Stream stream = postedFiles.InputStream;
                //BinaryReader binaryReader = new BinaryReader(stream);
                //Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);

                en.Id = id;
                en.Nom = txtNom.Text;
                en.Postnom = txtPostnom.Text;
                en.Prenom = txtPrenom.Text;
                en.Sexe = cmbSexe.Text;
                en.DBO = Convert.ToDateTime(txtDate.Text);
                en.AnneeFinEtude = Convert.ToInt32(txtAnnee.Text);
                en.Filiere = txtFiliere.Text;
                en.RefGrade = Convert.ToInt32(Glossaires.getInstance().GetID("GetIdGrade", cmbGrade.Text));
                en.RefType = Convert.ToInt32(Glossaires.getInstance().GetID("GetIdType", cmbType.Text));
                en.Pseudo = userTxt.Text;
                en.Pass = txtPass.Text;
                en.UrlImage = Path.GetFullPath(postedFiles.FileName);
                


                en.SaveDatas(en);

                Response.Redirect("identification.aspx");
            }
            catch (Exception ex)
            {


            }
        }
        //void DataListCharge()
        //{
        //    try
        //    {
        //        Glossaires.getInstance().connecter();
        //        if (ImplementeConnexion.Instance.Conn.State == ConnectionState.Closed)
        //            ImplementeConnexion.Instance.Conn.Open();
        //        using (IDbCommand cmd = ImplementeConnexion.Instance.Conn.CreateCommand())
        //        {
        //            cmd.CommandText = "DATALIST_ENSEIGNANT";
        //            cmd.CommandType = CommandType.StoredProcedure;
        //            SqlDataAdapter sda = new SqlDataAdapter();
        //            sda.SelectCommand = (SqlCommand)cmd;
        //            DataSet ds = new DataSet();
        //            sda.Fill(ds);
        //            DataList1.DataSource = ds;
        //            DataList1.DataBind();

        //        }
        //    }
        //    catch (Exception ex)
        //    {

                
        //    }
        //}
        
    }
}