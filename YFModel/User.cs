using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YF.Model
{
    public class User
    {
        private string id;
        private string username;
        private string password;
        private string address;

        public string Id { get => id; set => id = value; }
        public string Username { get => username; set => username = value; }
        public string Password { get => password; set => password = value; }
        public string Address { get => address; set => address = value; }
    }
}
