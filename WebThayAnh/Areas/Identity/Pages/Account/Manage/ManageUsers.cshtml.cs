using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Threading.Tasks;
using WebThayAnh.Data;

namespace WebThayAnh.Areas.Identity.Pages.Account.Manage
{
    public class ManageUsersModel : PageModel
    {
        private readonly UserManager<ApplicationUser> _userManager;

        public ManageUsersModel(UserManager<ApplicationUser> userManager)
        {
            _userManager = userManager;
        }

        public IList<ApplicationUser> Users { get; set; }

        public UserManager<ApplicationUser> UserManager => _userManager;

        public async Task OnGetAsync()
        {
            Users = await _userManager.Users.ToListAsync();
        }
    }
}
