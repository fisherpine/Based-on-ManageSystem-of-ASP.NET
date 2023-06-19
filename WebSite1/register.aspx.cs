using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        YF.Model.User user = new YF.Model.User();
        user.Username = this.name.Text;
        user.Password = this.pwd.Text;
        user.Id = null;
        user.Address = this.address.Text;

        if (YF.BLL.User.Search(this.name.Text)==false)
        {
            SBS.JsHelper.AlertAndRedirect("用户名已存在！", "register.aspx");
        }

        if (YF.BLL.User.add(user)) {
            SBS.JsHelper.AlertAndRedirect("注册成功！","index.aspx");
        }
        else
        {
            SBS.JsHelper.AlertAndRedirect("注册失败！", "register.aspx");
        }
    }
}