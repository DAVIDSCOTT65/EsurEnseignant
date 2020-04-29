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
        public string imagelink = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!(Page.IsPostBack))
            {
                Glossaires.getInstance().chargeCombo(cmbType, "SELECT_DESIGNATION_TYPE");
                Glossaires.getInstance().chargeCombo(cmbGrade, "SELECT_DESIGNATION_GRADE");
                Glossaires.getInstance().chargeTextBox(id, txtNom, txtPostnom, txtPrenom, cmbSexe, txtAnnee, txtFiliere, cmbGrade, cmbType, "SELECT_ENSEIGNANT", UserSession.GetInstance().Id);
            }  
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (UploadImage() == true)
                {
                    Enseignant en = new Enseignant();

                    en.Id = id;
                    en.Nom = txtNom.Text;
                    en.Postnom = txtPostnom.Text;
                    en.Prenom = txtPrenom.Text;
                    en.Sexe = cmbSexe.Text;
                    en.DBO = Convert.ToDateTime(txtDate.Text);
                    en.AnneeFinEtude = Convert.ToInt32(txtAnnee.Text);
                    en.Filiere = txtFiliere.Text;
                    en.RefGrade = Convert.ToInt32(Glossaires.getInstance().GetID("GetIdGrade", cmbGrade.SelectedItem.Text));
                    en.RefType = Convert.ToInt32(Glossaires.getInstance().GetID("GetIdType", cmbType.SelectedItem.Value));
                    en.Pseudo = userTxt.Text;
                    en.Pass = txtPass.Text;
                    en.UrlImage = imagelink;



                    en.SaveDatas(en);

                    Response.Redirect("identification.aspx");
                }
                
            }
            catch (Exception ex)
            {


            }
        }
        private Boolean UploadImage()
        {
            Boolean imageSaved = false;
            if (FileUpload1.HasFile==true)
            {
                String contenttype = FileUpload1.PostedFile.ContentType;

                if (contenttype=="image/jpeg")
                {
                    int filesize;
                    filesize = FileUpload1.PostedFile.ContentLength;

                    //if (filesize <= 5200)
                    //{
                        System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
                        int height = img.Height;
                        int width = img.Width;
                        //if (height==200 && width==200)
                        //{
                            FileUpload1.SaveAs(Server.MapPath("~/images/profiles/") + FileUpload1.FileName + ".jpg");
                            //Image1.ImageUrl= "~/images/profiles/" +FileUpload1.FileName + ".jpg";
                            imagelink = "../images/profiles/" + FileUpload1.FileName + ".jpg";
                            imageSaved = true;
                        //}
                        //else
                        //{
                        //    Label1.Text = "Kindly upload JPEG Image in Proper Dimensions 200 x 200";
                        //}
                    //}
                    //else
                    //{
                    //    Label1.Text = "File Size exceeds 50 KB - Please Upload File Size Maximum 50 KB";
                    //}
                }
                else
                {
                    Label1.Text = "Only JPEG/JPG Image File Acceptable - Please Upload Image File Again";
                }
            }
            else
            {
                Label1.Text = "You have not selected any file - Browse and Select File First";
            }
            return imageSaved;
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