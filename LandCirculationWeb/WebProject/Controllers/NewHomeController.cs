using Microsoft.AspNetCore.Mvc;

namespace Farm.Controllers
{   
    public class NewHomeController : Controller
    {
        public IActionResult NewHome(string regionId)
        {
            ViewData["regionId"] = regionId;
            return View("NewHome");
        }
    }
}
