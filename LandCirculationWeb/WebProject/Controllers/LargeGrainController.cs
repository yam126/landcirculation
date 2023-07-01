using Microsoft.AspNetCore.Mvc;

namespace LandCirculationWeb.Controllers
{
    public class LargeGrainController : Controller
    {
        public IActionResult LargeGrain()
        {
            ViewData["LandId"] = "";
            ViewData["CurrentPage"] = "LargeGrain";
            return View("LargeGrain");
        }
    }
}
