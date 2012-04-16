<%@ Page Language="C#" CodeBehind="~/Default.aspx.cs" Inherits="WP_Site.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>WP7 - Main page</title>
    <link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body link="black" vlink="black" alink="grey">
    <form id="form1" runat="server">
    <div id="user">
        <asp:Label ID="Label3" runat="server" Font-Size="Small" ForeColor="Black" Text="Please log-in..."></asp:Label>
        &nbsp;<asp:HyperLink ID="HyperLink1" NavigateUrl="~/cms.aspx" runat="server" Font-Size="Small"
            Font-Underline="True">Edit</asp:HyperLink>&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Size="Small">Exit</asp:LinkButton>
    </div>
    <div id="logo">
        <a href="Default.aspx">
            <img src="WP7logo.png" alt="Картинка" id="log" />
        </a>
    </div>
    <center>
        <h2>
            Главная страница</h2>
    </center>
    <div id="menu">
        <ul type="circle">
            <%
                //System.Data.SqlClient.SqlConnection sqlc = new System.Data.SqlClient.SqlConnection(@"Data Source=F\SQLEXPRESS;Initial Catalog=contentDB;Integrated Security=True");
                System.Data.SqlClient.SqlConnection sqlc_m = new System.Data.SqlClient.SqlConnection(@"Data Source=localhost;Initial Catalog=contentDB;Integrated Security=True");
                sqlc_m.Open();
                System.Data.SqlClient.SqlCommand cmd_m = new System.Data.SqlClient.SqlCommand("Select * from pages", sqlc_m);

                System.Data.SqlClient.SqlDataReader sdr_m = cmd_m.ExecuteReader();
                while (sdr_m.Read())
                    Response.Write("<li><a href=\"" + sdr_m.GetString(3).ToString() + "\">" + sdr_m.GetString(1).ToString() + "</a></li>");
                sqlc_m.Close();
            %>
        </ul>
    </div>
    <div id="login">
        <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enter" />
    </div>
    <div id="content">
        <%
            //System.Data.SqlClient.SqlConnection sqlc = new System.Data.SqlClient.SqlConnection(@"Data Source=F\SQLEXPRESS;Initial Catalog=contentDB;Integrated Security=True");
            System.Data.SqlClient.SqlConnection sqlc = new System.Data.SqlClient.SqlConnection(@"Data Source=localhost;Initial Catalog=contentDB;Integrated Security=True");
            sqlc.Open();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("Select * from news ORDER BY Date DESC", sqlc);

            System.Data.SqlClient.SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                Response.Write("<b>" + sdr.GetString(1).ToString() + "</b>&nbsp;&nbsp;");
                Response.Write(sdr.GetDateTime(3).ToString() + "<br><br>");
                Response.Write(sdr.GetString(2) + "<br><br><hr>");
            }
            sqlc.Close();
        %>
    </div>
    </form>
</body>
</html>
