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
        return View[parameters.page + ".cshtml"];
      };
      Get["/api/songs/{title}"] = parameters => {
        Song foundSong = Song.Find(parameters.title);
        return View["REPLACEME.cshtml"];
      };
    }
  }
}
