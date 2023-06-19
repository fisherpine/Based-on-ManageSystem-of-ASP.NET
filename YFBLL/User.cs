using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YF.BLL
{
    public class User
    {
        public static bool add(YF.Model.User user)
        {
            return YF.DAL.User.add(user);
         }

        public static bool Search(String username)
        {
            return YF.DAL.User.Search(username);
        }

        public static bool login(String username,String password)
        {
            return YF.DAL.User.login(username, password);
        }

        public static List<YF.Model.User> list()
        {
            return YF.DAL.User.list();
        }

        public static bool del(String id) {
            return YF.DAL.User.del(id);
        }

        public static YF.Model.User GetUser(String id)
        {
            return YF.DAL.User.GetUser(id);
        }


    }
}
