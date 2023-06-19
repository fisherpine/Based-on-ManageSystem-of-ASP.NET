<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>教材管理系统注册</title>
    <style type="text/css">
        @import url(CSS/register.css);
    </style>
</head>
<body>
    <form id="form1" runat="server" class="box">
    <div>
        <h1>帐号注册<h1>
       <asp:TextBox ID="name" runat="server" CssClass="con" ToolTip="Username" placeholder="Username"></asp:TextBox>
        <asp:TextBox ID="pwd" runat="server" TextMode="Password" CssClass="con" ToolTip="Password" placeholder="Password"></asp:TextBox>
        <asp:TextBox ID="address" runat="server" CssClass="con" ToolTip="Address" placeholder="Address"></asp:TextBox>
        
        <asp:Button ID="Button1" runat="server" Text="注册"  CssClass="btn" OnClick="Button1_Click"/>
            <a href="login.aspx" class="show">返回登录</a>
    </div>
    </form>
</body>
</html>