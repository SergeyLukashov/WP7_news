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
            if ((Session.Count >= 2) && (Session.Keys[1] == "true"))
            {
                Label3.Text = Session.Contents.Keys.Get(0);
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
            string s = "";
            if ((TextBox1.Text == "admin") && (TextBox2.Text == "123"))
            {
                Session.Add(TextBox1.Text, s);
                if (Session.Count >= 1)
                    Label3.Text = Session.Keys.Get(0);
                Session.Add("true", s);

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