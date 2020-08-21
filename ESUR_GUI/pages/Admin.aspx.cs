using LibraryEnseignant;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace ESUR_GUI.pages
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //try
            //{
                if (e.CommandName == "sid")
                {
                    int crow;
                    crow = Convert.ToInt32(e.CommandArgument.ToString());
                    string v = GridView1.Rows[crow].Cells[0].Text;

                    Enseignant en = new Enseignant();
                    en.Confirmation(v);

                    SendMail(GridView1.Rows[crow].Cells[10].Text, "davidscottmirindi65@gmail.com", "Confirmation identité enseignant", "Bonjour !\n Votre status a bien été confirmer par l'administration du Ministère.\nCordialement merci.");

                    Response.Redirect("Admin.aspx");
                }
            //}
            //catch (Exception ex)
            //{

                
            //}
        }
        void SendMail(string to, string from, string subject, string body)
        {
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress(from);
            mail.Sender = new MailAddress(from);
            mail.To.Add(to);
            mail.IsBodyHtml = true;
            mail.Subject = subject;
            mail.Body = body;

            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.UseDefaultCredentials = false;

            smtp.Credentials = new System.Net.NetworkCredential("davidscottmirindi65@gmail.com", "1111996scott");
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.EnableSsl = true;

            smtp.Timeout = 30000;
            //try
            //{

                smtp.Send(mail);
            //}
            //catch (SmtpException e)
            //{
            //    //textBox1.Text = e.Message;
            //}
        }
    }
}