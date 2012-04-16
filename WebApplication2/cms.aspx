<%@ Page Language="C#" CodeBehind="~/cms.aspx.cs" Inherits="WP_Site.cms" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CMS</title>
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
            <img src="WP7logo.png" alt="Картинка" />
        </a>
    </div>
    <center>
        <h2>
            <asp:Label ID="cms_title" runat="server" Text="News on main page"></asp:Label>
        </h2>
    </center>
    <div id="menu">
        <ul type="circle">
            <li><a href="Default.aspx">News</a>&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click" Font-Size="Small">Доб.</asp:LinkButton></li>
            <li><a href="page1.aspx">Интерфейс «Metro»</a>&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Font-Size="Small">Ред.</asp:LinkButton></li>
            <li><a href="page2.aspx">Требования к оборудованию</a>&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Font-Size="Small">Ред.</asp:LinkButton></li>
            <li><a href="page3.aspx">Разработка игр и приложений WP7</a>&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" Font-Size="Small">Ред.</asp:LinkButton></li>
            <li><a href="page4.aspx">Дополнительные сведения</a>&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" Font-Size="Small">Ред.</asp:LinkButton></li>
            <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton2_Click" Font-Size="Small">Добавить</asp:LinkButton>
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
        <asp:Label ID="Label4" runat="server" Font-Size="Small" ForeColor="Black" Text="Заголовок:"></asp:Label>
        <br>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br>
        <br>
        <asp:Label ID="Label5" runat="server" Font-Size="Small" ForeColor="Black" Text="Содержание:"></asp:Label>
        <asp:TextBox ID="newsTextBox" TextMode="MultiLine" runat="server" Font-Names="Tahoma"></asp:TextBox>
        <br>
        <br>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Добавить" />
    </div>
    </form>
</body>
</html>
