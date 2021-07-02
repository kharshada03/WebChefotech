using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for HotelClass
/// </summary>
namespace WebChefotech.App_Code
{
    public class HotelClass
    {
        public int HId { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string Maplink { get; set; }
        public string Bio { get; set; }
        public string Username { get; set; }

        public HotelClass()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public static HotelClass GetHotel()
        {
            HotelClass user = (HotelClass)HttpContext.Current.Session["hotel"];
            if (user == null)
                HttpContext.Current.Session["hotel"] = new HotelClass();
            return (HotelClass)HttpContext.Current.Session["hotel"];
        }
    }
}