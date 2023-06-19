using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YF.BLL
{
    public class News
    {
        public static List<YF.Model.News> list()
        {
            return YF.DAL.News.list();
        }
    }
}
