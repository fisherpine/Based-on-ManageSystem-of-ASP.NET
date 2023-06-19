using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace YF.Model
{
    public class News
    {
        private string id;
        private string newstitle;
        private string newsurl;

        public string Id { get => id; set => id = value; }
        public string Newstitle { get => newstitle; set => newstitle = value; }
        public string Newsurl { get => newsurl; set => newsurl = value; }
        
    }
}
