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
    public partial class grade : System.Web.UI.Page
    {
        public int id = 0;
        Glossaires dn = new Glossaires();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                Grade g = new Grade();

                g.Id = id;
                g.Designation = txtDesign.Text;
                g.Acronyme = txtAcro.Text;

                g.SaveDatas(g);

                Response.Redirect("grade.aspx");
            }
            catch (Exception ex)
            {


            }
        }
    }
}