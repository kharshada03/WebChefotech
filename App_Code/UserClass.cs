using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserClass
/// </summary>
namespace WebChefotech.App_Code
{
    public class UserClass
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Contactno { get; set; }
        public string Emailid { get; set; }
        public string Bio { get; set; }
        public string Orders { get; set; }
        public string Speciality { get; set; }
        public string MenuOrder { get; set; }
        public string FoodPrice { get; set; }
        public string Username { get; set; }

        public UserClass()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public static UserClass GetUser()
        {
            UserClass user = (UserClass)HttpContext.Current.Session["user"];
            if (user == null)
                HttpContext.Current.Session["user"] = new UserClass();
            return (UserClass)HttpContext.Current.Session["user"];
        }
    }
}