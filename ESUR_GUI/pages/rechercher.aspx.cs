using DataBaseUtilities;
using ESUR_GUI.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ESUR_GUI.pages
{
    public partial class rechercher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataListCharge();
        }
        void DataListCharge()
        {
            try
            {
                Glossaires.getInstance().connecter();
                if (ImplementeConnexion.Instance.Conn.State == ConnectionState.Closed)
                    ImplementeConnexion.Instance.Conn.Open();
                using (IDbCommand cmd = ImplementeConnexion.Instance.Conn.CreateCommand())
                {
                    cmd.CommandText = "DATALIST_ENSEIGNANT";
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter sda = new SqlDataAdapter();
                    sda.SelectCommand = (SqlCommand)cmd;
                    DataSet ds = new DataSet();
                    sda.Fill(ds);
                    DataList1.DataSource = ds;
                    DataList1.DataBind();

                }
            }
            catch (Exception ex)
            {


            }
        }
    }
}