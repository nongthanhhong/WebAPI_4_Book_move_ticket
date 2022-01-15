using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebApiDoAnVePhim.Models;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using WebApiDoAnVePhim.Repository;

namespace WebApiDoAnVePhim.Controllers
{
    public class MovieController : ApiController
    {
        [Route("api/MovieController/GetMovies")]
        [HttpGet]
        public IHttpActionResult GetMovies()
        {
            DataTable tb = Database.Read_Table("GetMovies");
            if (tb != null && tb.Rows.Count > 0)
                return Ok(tb);
            else
                return NotFound();
        }

        [Route("api/MovieController/GetTheaters")]
        [HttpGet]
        public IHttpActionResult GetTheaters()
        {
            DataTable tb = Database.Read_Table("GetTheaters");
            if (tb != null && tb.Rows.Count > 0)
                return Ok(tb);
            else
                return NotFound();
        }

        [Route("api/MovieController/GetNews")]
        [HttpGet]
        public IHttpActionResult GetNews()
        {
            DataTable tb = Database.Read_Table("GetNews");
            if (tb != null && tb.Rows.Count > 0)
                return Ok(tb);
            else
                return NotFound();
        }


        [Route("api/MovieController/PostUsers")]
        [HttpPost]
        public string AddUsers(Users user)
        {
            try
            {
                DataTable table = new DataTable();
                string query = @"
                                    insert [dbo].[user]([userfullname], [userphone], [usermail], [username], [userpassword]) values
                                    ('" + user.userFullName + @"',
                                    '" + user.userPhone + @"',
                                    '" + user.userMail + @"',
                                    '" + user.userName + @"',
                                    '" + user.userPassword + @"') ";
                string SQLconnectionString = ConfigurationManager.ConnectionStrings["Connectionstring"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(SQLconnectionString))
                using(var cmd = new SqlCommand(query, conn))
                using (var da = new SqlDataAdapter(cmd))
                {
                    cmd.CommandType = CommandType.Text;
                    da.Fill(table);
                };
                    return "Added Successfully";
            }
            catch (Exception ex)
            {
                return "Failed";
            }
        }


        [Route("api/MovieController/GetUsers")]
        [HttpGet]
        public IHttpActionResult GetUsers(string userName, string userPassword)
        {
                DataTable table = new DataTable();

                string query = @"select [username],[userpassword] from [dbo].[user] where username = '" +userName+@"' and userpassword = '" +userPassword+ @"'" ;
                string SQLconnectionString = ConfigurationManager.ConnectionStrings["Connectionstring"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(SQLconnectionString))
                using (var cmd = new SqlCommand(query, conn))
                using (var da = new SqlDataAdapter(cmd))
                {
                    cmd.CommandType = CommandType.Text;
                    da.Fill(table);
                };
            if (table != null && table.Rows.Count > 0)
                return Ok(table);
            else 
                return BadRequest();

        }


        [Route("api/MovieController/PostBookings")]
        [HttpPost]
        public string AddBookings(Bookings booking)
        {
            try
            {
                DataTable table = new DataTable();

                string query = @"   insert [dbo].[booking]([bookingmovie], [bookingtheater],[bookingtime], [bookingseat]) values
                                    ('" + booking.bookingMovie + @"',
                                    '" + booking.bookingTheater + @"',
                                    '" + booking.bookingTime + @"',
                                    '" + booking.bookingSeat + @"'
                                    ) ";
                string SQLconnectionString = ConfigurationManager.ConnectionStrings["Connectionstring"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(SQLconnectionString))
                using (var cmd = new SqlCommand(query, conn))
                using (var da = new SqlDataAdapter(cmd))
                {
                    cmd.CommandType = CommandType.Text;
                    da.Fill(table);
                };
                return "Added Successfully";
            }
            catch (Exception ex)
            {
                return "Failed";
            }
        }

        [Route("api/MovieController/GetVouchers")]
        [HttpGet]
        public IHttpActionResult GetVouchers()
        {
            DataTable tb = Database.Read_Table("GetVouchers");
            if (tb != null && tb.Rows.Count > 0)
                return Ok(tb);
            else
                return NotFound();
        }

    }
}
