<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Files.aspx.cs" Inherits="Files" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>文件上传和下载</title>
    <style>
        /* CSS样式 */

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            max-width: 600px;
            padding: 20px;
            background-color: #f5f5f5;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            margin-bottom: 10px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        .btn {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            text-decoration: none;
            cursor: pointer;
            font-size: 16px;
        }

        .btn:hover {
            background-color: #45a049;
        }

        .message {
            margin-top: 10px;
            color: #555;
        }

        /* 图片样式 */

        .logo {
            max-width: 200px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
            <div>
                <h2>文件上传</h2>
                <img src="image/01.GIF" alt="Logo" class="logo" />
                
                <label for="fileup">请选择要上传的文件：</label>
                <asp:FileUpload ID="fileup" runat="server" />
                <br />
                <asp:Button ID="btnUpload" runat="server" CssClass="btn" Text="开始上传" OnClick="btnUpload_Click" />
                <br />
                <asp:Literal ID="lblMsg" runat="server"></asp:Literal>
            </div>

            <div>
                 <h2>文件下载</h2>
                <img src="image/02.GIF"  class="logo" />
                <br />
                <asp:DropDownList ID="ddlFiles" runat="server" AppendDataBoundItems="true" DataTextField="Text" DataValueField="Value">
                    <asp:ListItem Text="请选择文件" Value=""></asp:ListItem>
                </asp:DropDownList>
                  <br />
                <asp:Button ID="btnDownload" runat="server" CssClass="btn" Text="下载文件" OnClick="btnDownload_Click" />
            </div>
        </form>
    </div>
</body>
</html>
