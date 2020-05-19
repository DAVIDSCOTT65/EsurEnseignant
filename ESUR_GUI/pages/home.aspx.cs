using LibraryEnseignant;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ESUR_GUI.pages
{
    public partial class home : System.Web.UI.Page
    {
        Enseignant en = new Enseignant();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblNP.Text = en.NbrEnseignant("NP").ToString();
            lblNU.Text = en.NbrEnseignant("NU").ToString();
            lblNI.Text = en.NbrEnseignant("NI").ToString();
        }
    }
}