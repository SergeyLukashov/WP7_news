<%@ Page Language="C#" CodeBehind="~/page3.aspx.cs" Inherits="WP_Site.page3"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Разработка игр и приложений WP7</title>
    <link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body link="black" vlink="black" alink="grey">
<form id="form1" runat="server">
<div id="user">
        <asp:Label ID="Label3" runat="server" Font-Size="Small" ForeColor="Black" Text="Please log-in..."></asp:Label>
        &nbsp;<asp:HyperLink ID="HyperLink1" NavigateUrl="~/cms.aspx" runat="server" Font-Size="Small" Font-Underline="True">Edit</asp:HyperLink>&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Size="Small">Exit</asp:LinkButton>
    </div>
    <div id="logo">
        <a href="Default.aspx">
            <img src="WP7logo.png" alt="Картинка" />
        </a>
    </div>
    <center>
        <h2>
            Разработка игр и приложений WP7</h2>
    </center>
    <ul type="circle">
        <li><a href="page1.aspx">Интерфейс «Metro»</a></li>
        <li><a href="page2.aspx">Требования к оборудованию</a></li>
        <li><a href="page3.aspx">Разработка игр и приложений WP7</a></li>
        <li><a href="page4.aspx">Дополнительные сведения</a></li>
    </ul>
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
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("Select * from page3 ORDER BY ID DESC", sqlc);

            System.Data.SqlClient.SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                Response.Write("<br>" + sdr.GetString(1) + "<br><br><hr>");
            }
            sqlc.Close();
        %>
        <%--Разработка игр и приложений WP7 поддерживает Silverlight (вне браузера) и XNA. В
        состав нового инструментария входит специальная версия среды разработки Microsoft
        Visual Studio 2010 Express for Windows Phone, Expression Blend 4 for Windows Phone
        (ориентированный на дизайн интерфейсов для мобильных приложений), среда конструирования
        игр XNA Game Studio for Windows Phone, эмулятор мобильных устройств Windows Phone
        7 Series Emulator для тестирования, а также технология Silverlight for Windows Phone.[7]
        Mozilla Foundation решили отказаться от поддержки ОС Windows Phone 7, поскольку
        код очень старый и перенос его в сыром виде на новую платформу только усугубит ситуацию.[8]
        Microsoft на конференции MIX11 объявила о том, что Skype появится на Windows Phone
        7 уже осенью 2011 года.[9] Electronic Arts заявила о намерении разрабатывать игры
        под WP7, в скором времени появятся Need for Speed Undercover, Tetris, The Sims 3
        и Monopoly (эти игры уже есть — ноябрь 2011).[10] Установка приложений на Windows
        Phone 7 стандартными средствами (без аккаунта разработчика) возможна либо из магазина
        Windows Phone Marketplace, либо при официальной разблокировке через ChevronWP Labs
        ($9), в результате чего ваш КПК может использоваться для теста приложений. Windows
        Phone 7 является самой быстрорастущей мобильной платформой по базе программ. По
        данным на март 2011 года было доступно более 12 тыс. программ, появившихся менее,
        чем за 5 месяцев. На 29 октября программ уже более 34 тыс.[11] Этот рост быстрее
        Google Android и Apple iOS.--%>
    </div>
    </form>
</body>
</html>
