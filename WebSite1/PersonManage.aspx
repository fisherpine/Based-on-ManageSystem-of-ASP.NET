<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PersonManage.aspx.cs" Inherits="Manager" %>
<%@ Import Namespace="YF.BLL" %>
<%@ Import Namespace="YF.Model" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Person Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 20px;
        }

        table {
            width: 1000px;
            margin: 0 auto;
            border-collapse: collapse;
        }

        th {
            background-color: #333;
            color: #fff;
            font-weight: bold;
            padding: 10px;
        }

        td {
            padding: 10px;
            text-align: center;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        .btn {
            display: inline-block;
            padding: 6px 12px;
            margin-bottom: 0;
            font-size: 14px;
            font-weight: 400;
            line-height: 1.42857143;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            cursor: pointer;
            border: 1px solid transparent;
            border-radius: 4px;
            color: #fff;
        }

        .btn-primary {
            background-color: #337ab7;
            border-color: #2e6da4;
        }

        .btn-danger {
            background-color: #d9534f;
            border-color: #d43f3a;
        }

        .pagination {
            margin-top: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .pagination a {
            display: inline-block;
            padding: 8px 12px;
            margin: 0 4px;
            color: #333;
            background-color: #f2f2f2;
            text-decoration: none;
            border-radius: 4px;
        }

        .pagination a.active {
            background-color: #337ab7;
            color: #fff;
        }

        .add-btn-container {
            text-align: center;
            margin-top: 20px;
        } 
        .search-container {
            text-align: center;
            margin-bottom: 10px;
        }

        .search-container input[type="text"] {
            padding: 6px;
            width: 200px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .search-container input[type="submit"] {
            padding: 6px 12px;
            margin-top: 5px;
            background-color: #337ab7;
            border-color: #2e6da4;
            color: #fff;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="search-container">
             <asp:TextBox ID="txtSearch" runat="server" placeholder="按编号搜索"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="搜索" OnClick="btnSearch_Click" />

        </div>

        <div>
            <table>
                <tr>
                    <th>编号</th>
                    <th>用户名</th>
                    <th>密码</th>
                    <th>地址</th>
                    <th>操作</th>
                </tr>
                <% string id = Request.QueryString["id"];
                if (id != null)
                {
                    YF.BLL.User.del(id);
                    SBS.JsHelper.AlertAndRedirect("删除成功！", "PersonManage.aspx");
                }
                %>
                <% List<YF.Model.User>  list = new List<YF.Model.User>();

                    string bianhao = Request.QueryString["singleid"];

                    if (bianhao != null)
                    {
                        YF.Model.User SingleUser = YF.BLL.User.GetUser(bianhao);
                        List<YF.Model.User>  Singlelist = new List<YF.Model.User>();
                        Singlelist.Add(SingleUser);
                        list = Singlelist;

                    }
                    else {
                        list = YF.BLL.User.list();
                    }

                    %>
                <% int pageSize = 5; %>
                <% int pageCount = (int)Math.Ceiling((double)list.Count / pageSize); %>
                <% int currentPage = 1; %>
                <% if (Request.QueryString["page"] != null)
                {
                    currentPage = Convert.ToInt32(Request.QueryString["page"]);
                } %>
                <% for (int i = (currentPage - 1) * pageSize; i < currentPage * pageSize && i < list.Count; i++) { %>
                <tr>
                    <td><%=list[i].Id %></td>
                    <td><%=list[i].Username %></td>
                    <td><%=list[i].Password %></td>
                    <td><%=list[i].Address %></td>
                    <td>
                        <a href="PersonManage.aspx?id=<%=list[i].Id %>" class="btn btn-danger">删除</a>
                    </td>
                </tr>
                <% } %>
            </table>

            <div class="pagination">
                <% if (currentPage > 1) { %>
                <a href="?page=1">首页</a>
                <% } %>
                <% for (int i = 1; i <= pageCount; i++) { %>
                <a href="?page=<%=i %>" class="<%= currentPage == i ? "active" : "" %>"><%=i %></a>
                <% } %>
                <% if (currentPage < pageCount) { %>
                <a href="?page=<%=pageCount %>">尾页</a>
                <% } %>
            </div>
        </div>
    </form>
</body>
</html>
