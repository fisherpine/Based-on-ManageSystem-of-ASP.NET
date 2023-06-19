using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YF.DAL
{
    /// <summary>
    /// 
    /// </summary>
    public class User
    {
        public static bool add(YF.Model.User user) {
            bool result = false;
            string strsql = "insert into [tb_user](username,password,address) values('"+user.Username+"','"+user.Password+"','"+user.Address+"')";
            int count = SBS.MysqlHelper.YFMsSqlHelper.ExecuteSql(strsql);

            if (count > 0) {
                result = true;
            }

            return result;
        }

        public static bool del(string id) {
            bool result = false;
            string strsql = "delete from [tb_user] where id=" + id + "";
            int count = SBS.MysqlHelper.YFMsSqlHelper.ExecuteSql(strsql);

            if (count > 0)
            {
                result = true;
            }
            return result;
        }
        public static bool login(string username,string password)
        {
            bool result = false;
            string strsql = "select * from [tb_user] where username='" + username + "' and password='" + password + "'";
            DataTable dataTable = SBS.MysqlHelper.YFMsSqlHelper.Query(strsql).Tables[0];

            if (dataTable.Rows.Count != 0)
            {
                result = true;
            }
            else
            {
                result = false;
            }
            return result;
        }

        public static List<YF.Model.User> list()
        {
            string strsql = "select * from [tb_user] order by id";
            DataTable dt = SBS.MysqlHelper.YFMsSqlHelper.Query(strsql).Tables[0];
            return Dttolist(dt);
        }

        private static List<YF.Model.User> Dttolist(DataTable dt)
        {
            List<YF.Model.User> list = new List<Model.User>();
            for(int i = 0;i<dt.Rows.Count;i++)
            {
                YF.Model.User user = new Model.User();
                user = GetUser(dt.Rows[i]["id"].ToString());
                list.Add(user);
            }
            return list;
        }


        public static YF.Model.User GetUser(String id) {
            YF.Model.User user = new Model.User();
            string strsql = "select * from [tb_user] where id=" + id+"";
            DataTable dataTable = SBS.MysqlHelper.YFMsSqlHelper.Query(strsql).Tables[0];
            if (dataTable.Rows.Count != 0) {
                //如果数据是int类型加int.Parse()
                user.Id = dataTable.Rows[0]["id"].ToString();
                user.Username = dataTable.Rows[0]["username"].ToString();
                user.Address = dataTable.Rows[0]["address"].ToString();
                user.Password = dataTable.Rows[0]["password"].ToString();

            }
            else
            {
              return  user = null;
            }
            return user;
        }

        public static bool Search(String username)
        {
            bool result = false;
            string strsql = "select * from [tb_user] where username='" + username+"'";
            DataTable dataTable = SBS.MysqlHelper.YFMsSqlHelper.Query(strsql).Tables[0];

            if (dataTable.Rows.Count == 0)
            {
                result = true;
            }
            else
            {
                result = false;
            }

            return result;
        }
    }
}
