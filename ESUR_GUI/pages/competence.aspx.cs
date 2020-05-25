using ESUR_GUI.Classes;
using LibraryCompetence;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ESUR_GUI
{
    public partial class competence : System.Web.UI.Page
    {
        public int id = 0;
        public int idComp = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (UserSession.GetInstance().Id == 0)
            {

                txtMatricule.Text = Request.QueryString["ref_ens"].ToString();
                Button1.Enabled = false;
            }
            else
            {
                txtMatricule.Text = UserSession.GetInstance().Id.ToString();
            }   
        }
        public int Session
        {
            get
            {
                return UserSession.GetInstance().Id;
            }
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                AvoirCompetence c = new AvoirCompetence();

                c.Id = id;
                c.RefCompetence = idComp;
                c.Designation = txtDesign.Text;
                c.Domaine = txtDomaine.Text;
                c.NiveauMetrise = txtDate.Text;
                c.RefEnseignant = UserSession.GetInstance().Id;

                c.SaveDatas(c);

                Response.Redirect("competence.aspx");

            }
            catch (Exception ex)
            {


            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}