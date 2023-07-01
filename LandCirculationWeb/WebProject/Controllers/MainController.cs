using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Farm.Controllers
{
    public class MainController : Controller
    {
        public IActionResult Index(string regionId)
        {
            ViewData["regionId"] = regionId;
            return View("Index");
        }
    }
}
