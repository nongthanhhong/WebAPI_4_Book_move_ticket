using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApiDoAnVePhim.Models
{
    public class Users
    {
        public int userId { get; set; }
        public string userFullName { get; set; }
        public string userPhone { get; set; }
        public string userMail { get; set; }
        public string userName { get; set; }
        public string userPassword { get; set; }
    }
}