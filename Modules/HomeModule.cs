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
        object songResponse = new { title = foundSong.Title,
                                    lyrics = foundSong.Lyrics,
                                    album = Album.Find(foundSong.AlbumId).Title
                                  };
        return songResponse;
      };
      Get["/api/albums/{title}"] = parameters => {
        string title = parameters.title;
        Album foundAlbum = Album.Find(title);
        List<object> albumTracks = new List<object> {};
        foreach (Song song in foundAlbum.GetSongs())
        {
          object newSong = new { title = song.Title, lyrics = song.Lyrics};
          albumTracks.Add(newSong);
        }
        object albumResponse = new { title = foundAlbum.Title,
                                     releaseDate = foundAlbum.ReleaseDate.ToString(),
                                     tracks = albumTracks
                                   };
        return albumResponse;
      };
      Get["/api/count"] = parameters => {
        string title = parameters.title;
        Song foundSong = Song.Find(title);
        return foundSong;
      };
    }
  }
}
