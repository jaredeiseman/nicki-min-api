using Nancy;
using NickiMinAPI.Objects;
using System;
using System.Collections.Generic;

namespace NickiMinAPI
{
  public class HomeModule : NancyModule
  {
    public HomeModule()
    {
      Get["/"] = parameters => {
        return View["index.cshtml"];
      };
      Get["/{page}"] = parameters => {
        Console.WriteLine("Triggered dynamic route: " + parameters.page);
        return View[parameters.page + ".cshtml"];
      };
      Get["/api/songs/{title}"] = parameters => {
        string title = parameters.title;
        Song foundSong = Song.Find(title);
        return foundSong;
        // return Json.Encode(foundSong);
        // return new JavaScriptSerializer().Serialize(foundSong);
      };

    }
  }
}
