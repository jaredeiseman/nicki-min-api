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
      Get["/tweet-timer"] = _ => {
        TwitBot.StartTimer();
        return "Tweet Timer Started.";
      };
      Get["/"] = parameters => {
        return View["index.cshtml"];
      };
      Get["/{page}"] = parameters => {
        Console.WriteLine("Triggered dynamic route: " + parameters.page);
        return View[parameters.page + ".html"];
      };
      Get["/api/lyric-pile"] = _ => {
        string allLyrics = "";
        foreach (Song song in Song.GetAll())
        {
          allLyrics += song.Lyrics + " ";
        }
        return allLyrics;
      };
      // Get["/api/all"] = _ => {
      //   //TODO: Currently, it appears that we can't send this amount of JSON?
      //   List<object> allResponse = new List <object> {};
      //   foreach (Album album in Album.GetAll())
      //   {
      //     List<object> allTracks = new List<object> {};
      //     foreach (Song song in album.GetSongs())
      //     {
      //       object newSong = new { title = song.Title, lyrics = song.Lyrics};
      //       allTracks.Add(newSong);
      //     }
      //     object albumResponse = new { title = album.Title,
      //       releaseDate = album.ReleaseDate.ToString(),
      //       tracks = allTracks
      //     };
      //     allResponse.Add(albumResponse);
      //   }
      //   object response = new {one = allResponse[0]};
      //   Console.WriteLine(response);
      //   // return allResponse;
      //   return response;
      //   // return new List<object> {new {foo = "bar"}, new {bar = "foo"}};
      // };
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
      Get["/api/all/count"] = _ => {
        Dictionary<string, int> results = Count.All();
        return results;
      };
      Get["/api/songs/count/{title}"] = parameters => {
        string title = parameters.title;
        Song foundSong = Song.Find(title);
        Dictionary<string, int> results = Count.Words(foundSong.Lyrics);
        return results;
      };
      Get["/api/albums/count/{title}"] = parameters => {
        string title = parameters.title;
        Album foundAlbum = Album.Find(title);
        Dictionary<string, int> results = Count.AnAlbum(foundAlbum);
        return results;
      };
      Get["/form"] = _ => {
        List<Album> allAlbums = Album.GetAll();
        return View["form.cshtml", allAlbums];
      };
      Post["/form/album"] = _ => {
        List<Album> allAlbums = Album.GetAll();
        Album newAlbum = new Album(Request.Form["album-title"], Request.Form["album-date"]);
        newAlbum.Save();
        return View["form.cshtml", allAlbums];
      };
      Post["/form/song"] = _ => {
        List<Album> allAlbums = Album.GetAll();
        Song newSong = new Song(Request.Form["song-title"], Request.Form["song-lyrics"], Request.Form["song-album"]);
        newSong.Save();
        return View["form.cshtml", allAlbums];
      };
      Get["/api/spit/verse"] = _ => {
        MarkoVerse ourVerse = new MarkoVerse();
        return ourVerse.SpitVerse();
      };
      Get["/api/spit/country"] = _ => {
        MarkoVerse ourVerse = new MarkoVerse(true);
        return ourVerse.SpitVerse();
      };
      Get["/api/spit/{bars}"] = parameters => {
        int bars = parameters.bars;
        MarkoVerse ourVerse = new MarkoVerse();
        return ourVerse.Spit(bars);
      };
    }
  }
}
