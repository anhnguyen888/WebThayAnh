using Microsoft.AspNetCore.Identity;

namespace WebThayAnh.Data
{
    public class ApplicationUser : IdentityUser
    {
        public string StudentId { get; set; }
    }
}
