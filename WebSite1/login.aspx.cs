using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_Click(object sender, EventArgs e)
    {
        string username = this.name.Text;
        string password = this.pwd.Text;

        if (YF.BLL.User.login(username, password)) {
            SBS.JsHelper.AlertAndRedirect("登陆成功！" , "index.aspx");

        }
        else
        {
            SBS.JsHelper.AlertAndRedirect("登录失败，账号或密码错误！", "login.aspx");
        }
       
    }
}