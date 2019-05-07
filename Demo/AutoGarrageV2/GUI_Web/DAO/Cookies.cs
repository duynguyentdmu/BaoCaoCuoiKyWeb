using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GUI_Web.DAO
{
    public class Cookies
    {
        private static Cookies instance;

        public static Cookies Instance
        {
            get
            {
                if (instance == null)
                    instance = new Cookies();
                return instance;
            }

            private set
            {
                instance = value;
            }
        }

        private Cookies() { }

        public HttpCookie CreateCookie(string s)
        {
            HttpCookie cookie = new HttpCookie("Username");
            cookie.Value = s;
            cookie.Expires = DateTime.Now.AddDays(20);
            return cookie;
        }

        public HttpCookie DeleteCookie()
        {
            HttpCookie cookie = new HttpCookie("Username");
            cookie.Expires = DateTime.Now.AddDays(-1);
            return cookie;
        }
    }
}