using ESUR_GUI.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ESUR_GUI
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnConnect_Click(object sender, EventArgs e)
        {
            if (teacherName.Text == "" || teacherPass.Text == "")
            {

            }
            else
            {
                Glossaires.getInstance().loginTest(teacherName.Text, teacherPass.Text);
                Response.Redirect("pages/identification.aspx");

            }
        }
    }
}