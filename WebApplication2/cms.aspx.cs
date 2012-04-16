using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WP_Site
{
    public partial class cms:System.Web.UI.Page
    {
        //int category=0;

        //protected void Pa


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["category"] == null)
            {
                Session["category"] = 0;
            }

            if ((Session.Count >= 2) && (Session.Keys[1] == "true"))
                Label3.Text = Session.Contents.Keys.Get(0);
            else
            {
                Label3.Text = "Please log-in...";
                LinkButton1.Visible = false;
                HyperLink1.Visible = false;
            }
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

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session["category"] = 1;
            cms_title.Text = "Content on 1-st page";
            TextBox3.Visible = false;
            Label4.Visible = false;
            Button2.Text = "Изменить";
            //System.Data.SqlClient.SqlConnection sqlc = new System.Data.SqlClient.SqlConnection(@"Data Source=F\SQLEXPRESS;Initial Catalog=contentDB;Integrated Security=True");
            System.Data.SqlClient.SqlConnection sqlc = new System.Data.SqlClient.SqlConnection(@"Data Source=localhost;Initial Catalog=contentDB;Integrated Security=True");
            sqlc.Open();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("Select * from page1 ORDER BY ID DESC", sqlc);

            System.Data.SqlClient.SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                //Response.Write("<br>" + sdr.GetString(1) + "<br><br><hr>");
                newsTextBox.Text = sdr.GetString(1);
            }
            sqlc.Close();
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["category"] = 2;
            cms_title.Text = "Content on 2-nd page";
            TextBox3.Visible = false;
            Label4.Visible = false;
            Button2.Text = "Изменить";
            //System.Data.SqlClient.SqlConnection sqlc = new System.Data.SqlClient.SqlConnection(@"Data Source=F\SQLEXPRESS;Initial Catalog=contentDB;Integrated Security=True");
            System.Data.SqlClient.SqlConnection sqlc = new System.Data.SqlClient.SqlConnection(@"Data Source=localhost;Initial Catalog=contentDB;Integrated Security=True");
            sqlc.Open();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("Select * from page2 ORDER BY ID DESC", sqlc);

            System.Data.SqlClient.SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                //Response.Write("<br>" + sdr.GetString(1) + "<br><br><hr>");
                newsTextBox.Text = sdr.GetString(1);
            }
            sqlc.Close();
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["category"] = 3;
            cms_title.Text = "Content on 3-rd page";
            TextBox3.Visible = false;
            Label4.Visible = false;
            Button2.Text = "Изменить";
            //System.Data.SqlClient.SqlConnection sqlc = new System.Data.SqlClient.SqlConnection(@"Data Source=F\SQLEXPRESS;Initial Catalog=contentDB;Integrated Security=True");
            System.Data.SqlClient.SqlConnection sqlc = new System.Data.SqlClient.SqlConnection(@"Data Source=localhost;Initial Catalog=contentDB;Integrated Security=True");
            sqlc.Open();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("Select * from page3 ORDER BY ID DESC", sqlc);

            System.Data.SqlClient.SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                //Response.Write("<br>" + sdr.GetString(1) + "<br><br><hr>");
                newsTextBox.Text = sdr.GetString(1);
            }
            sqlc.Close();
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Session["category"] = 4;
            cms_title.Text = "Content on 4-th page";
            TextBox3.Visible = false;
            Label4.Visible = false;
            Button2.Text = "Изменить";
            //System.Data.SqlClient.SqlConnection sqlc = new System.Data.SqlClient.SqlConnection(@"Data Source=F\SQLEXPRESS;Initial Catalog=contentDB;Integrated Security=True");
            System.Data.SqlClient.SqlConnection sqlc = new System.Data.SqlClient.SqlConnection(@"Data Source=localhost;Initial Catalog=contentDB;Integrated Security=True");
            sqlc.Open();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("Select * from page4 ORDER BY ID DESC", sqlc);

            System.Data.SqlClient.SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                //Response.Write("<br>" + sdr.GetString(1) + "<br><br><hr>");
                newsTextBox.Text = sdr.GetString(1);
            }
            sqlc.Close();
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Session["category"] = 0;
            cms_title.Text = "News on main page";
            TextBox3.Visible = true;
            Label4.Visible = true;
            Button2.Text = "Добавить";
            //System.Data.SqlClient.SqlConnection sqlc = new System.Data.SqlClient.SqlConnection(@"Data Source=F\SQLEXPRESS;Initial Catalog=contentDB;Integrated Security=True");
            System.Data.SqlClient.SqlConnection sqlc = new System.Data.SqlClient.SqlConnection(@"Data Source=localhost;Initial Catalog=contentDB;Integrated Security=True");
            sqlc.Open();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("Select * from page4 ORDER BY ID DESC", sqlc);

            System.Data.SqlClient.SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                //Response.Write("<br>" + sdr.GetString(1) + "<br><br><hr>");
                newsTextBox.Text = sdr.GetString(1);
            }
            sqlc.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)//add
        {
            //System.Data.SqlClient.SqlConnection sqlc = new System.Data.SqlClient.SqlConnection(@"Data Source=F\SQLEXPRESS;Initial Catalog=contentDB;Integrated Security=True");hiroku
            System.Data.SqlClient.SqlConnection sqlc = new System.Data.SqlClient.SqlConnection(@"Data Source=localhost;Initial Catalog=contentDB;Integrated Security=True");
            System.Data.SqlClient.SqlCommandBuilder scb;
            sqlc.Open();

            System.Data.SqlClient.SqlDataAdapter sda;
            System.Data.DataSet ds;

            int category =(int) Session["category"];
            switch (category)
            {
                case 0:
                    sda = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM news", sqlc);
                    scb = new System.Data.SqlClient.SqlCommandBuilder(sda);
                    ds = new System.Data.DataSet();

                    sda.Fill(ds);
                    if ((newsTextBox.Text != "") && (TextBox3.Text != ""))
                    {
                        ds.Tables[0].Rows.Add(0, TextBox3.Text, newsTextBox.Text, DateTime.Now);
                        sda.Update(ds);

                        newsTextBox.Text = "Новость успешно добавлена.";
                        TextBox3.Text = "";
                    }
                    else
                    {
                        newsTextBox.Text = "Заполните все поля!";
                    }
                    break;
                case 1:
                    sda = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM page1", sqlc);
                    scb = new System.Data.SqlClient.SqlCommandBuilder(sda);
                    ds = new System.Data.DataSet();

                    sda.Fill(ds);
                    if ((newsTextBox.Text != ""))
                    {
                        ds.Tables[0].Rows[0].BeginEdit();
                        ds.Tables[0].Rows[0].ItemArray=new object[]{0,newsTextBox.Text};
                        ds.Tables[0].Rows[0].EndEdit();

                        sda.Update(ds);

                        newsTextBox.Text = "Изменения сохранены.";
                        TextBox3.Text = "";
                    }
                    else
                    {
                        newsTextBox.Text = "Заполните все поля!";
                    }
                    break;
                case 2:
                    sda = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM page2", sqlc);
                    scb = new System.Data.SqlClient.SqlCommandBuilder(sda);
                    ds = new System.Data.DataSet();

                    sda.Fill(ds);
                    if ((newsTextBox.Text != ""))
                    {
                        ds.Tables[0].Rows[0].BeginEdit();
                        ds.Tables[0].Rows[0].ItemArray = new object[] { 0, newsTextBox.Text };
                        ds.Tables[0].Rows[0].EndEdit();

                        sda.Update(ds);

                        newsTextBox.Text = "Изменения сохранены.";
                        TextBox3.Text = "";
                    }
                    else
                    {
                        newsTextBox.Text = "Заполните все поля!";
                    }
                    break;
                case 3:
                    sda = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM page3", sqlc);
                    scb = new System.Data.SqlClient.SqlCommandBuilder(sda);
                    ds = new System.Data.DataSet();

                    sda.Fill(ds);
                    if ((newsTextBox.Text != ""))
                    {
                        ds.Tables[0].Rows[0].BeginEdit();
                        ds.Tables[0].Rows[0].ItemArray = new object[] { 0, newsTextBox.Text };
                        ds.Tables[0].Rows[0].EndEdit();

                        sda.Update(ds);

                        newsTextBox.Text = "Изменения сохранены.";
                        TextBox3.Text = "";
                    }
                    else
                    {
                        newsTextBox.Text = "Заполните все поля!";
                    }
                    break;
                case 4:
                    sda = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM page4", sqlc);
                    scb = new System.Data.SqlClient.SqlCommandBuilder(sda);
                    ds = new System.Data.DataSet();

                    sda.Fill(ds);
                    if ((newsTextBox.Text != ""))
                    {
                        ds.Tables[0].Rows[0].BeginEdit();
                        ds.Tables[0].Rows[0].ItemArray = new object[] { 0, newsTextBox.Text };
                        ds.Tables[0].Rows[0].EndEdit();

                        sda.Update(ds);

                        newsTextBox.Text = "Изменения сохранены.";
                        TextBox3.Text = "";
                    }
                    else
                    {
                        newsTextBox.Text = "Заполните все поля!";
                    }
                    break;
            }

            
            sqlc.Close();
        }
    }
}