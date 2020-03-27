using DataBaseUtilities;
using LibraryEnseignant;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ESUR_GUI.pages
{
    public partial class typeEnseignant : System.Web.UI.Page
    {
        public int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                TypeEnseignant t = new TypeEnseignant();

                t.Id = id;
                t.Designation = txtDesign.Text;
                t.Accronyme = txtAcro.Text;

                t.SaveDatas(t);

                Response.Redirect("typeEnseignant.aspx");

            }
            catch (Exception ex)
            {

                
            }
        }
        

    }
}