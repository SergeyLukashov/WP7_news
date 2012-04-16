<%@ Page Language="C#" CodeBehind="~/page1.aspx.cs" Inherits="WP_Site.page1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Интерфейс «Metro»</title>
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
            Интерфейс «Metro»</h2>
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
            string query="Select * from pages where Source='page1.aspx'";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(query, sqlc);

            System.Data.SqlClient.SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                Response.Write("<br>" + sdr.GetString(2) + "<br><br><hr>");
            }
            sqlc.Close();
        %>
        <%--Интерфейс «Metro» полностью пересмотрен и визуально похож на интерфейс Zune HD,
        с поддержкой технологии multi-touch. Переработан начальный (домашний) экран — здесь
        больше нет статичных иконок — все они заменены на так называемые «живые элементы»
        (Live Tiles), которые отражают информацию в режиме реального времени без участия
        пользователя (например, можно создать элемент для своего друга и, просто глядя на
        этот элемент, пользователь всегда будет знать обо всех новых записях в социальных
        сетях и опубликованных фотографиях своего знакомого), используются «плитки», которые
        прокручиваются по вертикали и могут быть настроены для быстрого запуска, ссылки
        на контакты или управление, содержатся виджеты. Интерфейс включает 6 вытянутых по
        горизонтали панелей (Hubs), которые на экране мобильного устройства можно прокручивать
        влево и вправо. Панель «Люди» (People) объединяет всю информацию, касающуюся какого-либо
        определенного человека, в том числе его записи и комментарии в социальных сетях,
        а также фотографии, предоставляя централизованный доступ к таким сетям как Facebook
        и Windows Live. Панель «Картинки» (Pictures) объединяет фотографии и видеозаписи
        пользователя, хранящиеся в памяти устройства, на компьютере и в интернете, также
        открывая доступ к фотографиям и видеозаписям друзей. Панель «Игры» (Games) открывает
        доступ к аватарам, используемым в Xbox Live, достижениям, профилям других игроков
        и мобильным играм. «Музыка + Видео» (Music + Video): объединяет мультимедийный контент,
        хранящийся на пользовательском компьютере, музыкальные онлайн-сервисы и встроенное
        FM-радио и открывает доступ к сервису Zune Social для обмена музыкой. Панель Marketplace
        позволяет загружать приложения и игры Office обеспечивает доступ к Office Mobile,
        SharePoint и OneNote — пользователю предоставляется возможность открытия, создания
        и редактирования документов.--%>
    </div>
    </form>
</body>
</html>
