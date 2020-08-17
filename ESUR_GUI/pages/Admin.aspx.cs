using LibraryEnseignant;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ESUR_GUI.pages
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName=="sid")
            {
                int crow;
                crow = Convert.ToInt32(e.CommandArgument.ToString());
                string v = GridView1.Rows[crow].Cells[0].Text;

                Enseignant en = new Enseignant();
                en.Confirmation(v);
                Response.Redirect("Admin.aspx");
            }
        }
    }
}