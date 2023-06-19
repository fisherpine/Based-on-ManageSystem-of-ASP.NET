using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        //填写的id，这里没有对id进行判断，直接在数据库中查
        string id = this.txtSearch.Text;
        // 在此处编写执行搜索操作的代码

        if (string.IsNullOrEmpty(id))
        {
            Response.Redirect("PersonManage.aspx");
            return;
        }
        else
        {
            if (YF.BLL.User.GetUser(id) == null)
            {
                SBS.JsHelper.Alert("查无此人");
                return;
            }
            else
            {
                Response.Redirect("PersonManage.aspx?singleid=" + id);
                return;
            }
        }
    }

}