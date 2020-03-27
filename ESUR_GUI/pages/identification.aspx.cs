using ESUR_GUI.Classes;
using LibraryEnseignant;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ESUR_GUI.pages
{
    public partial class identification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Glossaires.getInstance().chargeCombo(cmbType, "SELECT_DESIGNATION_TYPE");
            Glossaires.getInstance().chargeCombo(cmbGrade, "SELECT_DESIGNATION_GRADE");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                Enseignant e = new Enseignant();
            }
            catch (Exception ex)
            {

                
            }
        }
    }
}