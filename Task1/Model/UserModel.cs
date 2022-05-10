using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Task1.Model
{
    public class UserModel
    {
        [Required]
        public string FirstName { get; set; }
        [Required]
        public string LastName { get; set; }
        [Required]
        public string Gender { get; set; }
        [Required]
        [Key]
        public string Email { get; set; }
        public long PhoneNumber { get; set; }
        [DataType(DataType.Date)]
        public DateTime Dob { get; set; }
        public string Role { get; set; }

    }
}