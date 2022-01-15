using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApiDoAnVePhim.Models
{
    public class Bookings
    {
        public int bookingId { get; set; }
        public string bookingMovie { get; set; }
        public string bookingTheater { get; set; }
        public string bookingTime { get; set; }
        public string bookingSeat { get; set; }
    }
}
