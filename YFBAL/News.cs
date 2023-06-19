using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace YF.DAL
{
    public class News
    {
        public static List<YF.Model.News> list()
        {
            string strsql = "select * from [tb_news] order by id";
            DataTable dt = SBS.MysqlHelper.YFMsSqlHelper.Query(strsql).Tables[0];
            return Dttolist(dt);
        }

        private static List<YF.Model.News> Dttolist(DataTable dt)
        {
            List<YF.Model.News> list = new List<YF.Model.News>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                YF.Model.News news = new YF.Model.News();
                news = GetNews(dt.Rows[i]["id"].ToString());
                list.Add(news);
            }
            return list;
        }


        public static YF.Model.News GetNews(String id)
        {
            YF.Model.News news = new YF.Model.News();
            string strsql = "select * from [tb_news] where id=" + id + "";
            DataTable dataTable = SBS.MysqlHelper.YFMsSqlHelper.Query(strsql).Tables[0];
            if (dataTable.Rows.Count != 0)
            {
                //如果数据是int类型加int.Parse()
                news.Id = dataTable.Rows[0]["id"].ToString();
                news.Newstitle = dataTable.Rows[0]["newstitle"].ToString();
                news.Newsurl = dataTable.Rows[0]["newsurl"].ToString();


            }
            else
            {
                return news = null;
            }
            return news;
        }
    }
}
