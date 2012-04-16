using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WP_Site
{
    public partial class Default:System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["isLogged"] != null)&&((bool)Session["isLogged"] == true))
            {
                Label3.Text = (string)Session["login"];
            }
            else
            {
                Label3.Text = "Please log-in...";
                LinkButton1.Visible = false;
                HyperLink1.Visible = false;
            }
            //////////////////////////////////////////////////// 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((TextBox1.Text == "admin") && (TextBox2.Text == "123"))
            {
                Session["login"] = TextBox1.Text;
                //there was been if
                Label3.Text = (string)Session["login"];
                Session["isLogged"] = true;

                LinkButton1.Visible = true;
                HyperLink1.Visible = true;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Label3.Text = "Please log-in...";
            Session.Clear();
            Session.Abandon();
            LinkButton1.Visible = false;
            HyperLink1.Visible = false;
        }
    }
}