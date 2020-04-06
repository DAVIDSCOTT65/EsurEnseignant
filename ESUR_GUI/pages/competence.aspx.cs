using ESUR_GUI.Classes;
using LibraryCompetence;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ESUR_GUI.pages
{
    public partial class competence : System.Web.UI.Page
    {
        public int id = 0;
        public int idComp = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

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
    }
}