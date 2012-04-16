<%@ Page Language="C#"CodeBehind="~/page2.aspx.cs" Inherits="WP_Site.page2"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Требования к оборудованию</title>
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
            Требования к оборудованию</h2>
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
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("Select * from page2 ORDER BY ID DESC", sqlc);

            System.Data.SqlClient.SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                Response.Write("<br>" + sdr.GetString(1) + "<br><br><hr>");
            }
            sqlc.Close();
        %>
        <%--Требования к оборудованию Microsoft объявила минимальные требования к устройствам
        на Windows Phone 7. Все устройства должны обладать: мультисенсорным ёмкостным дисплеем
        (распознавание не менее 4 прикосновений одновременно). С разрешением 800х480 (WVGA).
        процессором с частотой не менее 1 ГГц. На данный момент производителям разрешено
        использовать следующие типы процессоров: Qualcomm QSD8250 (графическое ядро adreno
        200), QSD8255 (графическое ядро adreno 205), а так же QSD8255T (отличается от оригинального
        QSD8255 разгоном до 1,4 ГГц); от 256 МБ оперативной и 8 ГБ флэш памяти; поддержкой
        DirectX 9; GPS-приёмником; акселерометром; электронным компасом; датчиком приближения
        (он же «датчик щеки», «датчик близости»)[1][2]; датчиком внешней освещённости; FM-радио;
        цифровой камерой с разрешением не менее 5 Мп и вспышкой.--%>
    </div>
    </form>
</body>
</html>
