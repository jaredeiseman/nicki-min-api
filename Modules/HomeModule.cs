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
      //Dev Routes
      Get["/tweet-timer"] = _ => {
        TwitBot.StartTimer();
        return View["index.cshtml"];
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
      Get["/import/{artist}"] = parameters => {

        return View["index.cshtml"];
        // return Genius.GetRequest("http://www.google.com");
      };
      //User Routes
      Get["/"] = _ => {
        return View["index.cshtml"];
      };
      Get["/{page}"] = parameters => {
        return View[parameters.page + ".cshtml"];
      };
      Get["/api/lyric-pile"] = _ => {
        string allLyrics = "";
        foreach (Song song in Song.GetAll())
        {
          allLyrics += song.Lyrics + " ";
        }
        return allLyrics;
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
      Get["/api/all/count"] = _ => {
        Dictionary<string, int> results = Count.All();
        return results;
      };
      Get["/api/songs/count/{title}"] = parameters => {
        string title = parameters.title;
        Song foundSong = Song.Find(title);
        Dictionary<string, int> results = Count.Song(foundSong, null);
        return results;
      };
      Get["/api/albums/count/{title}"] = parameters => {
        string title = parameters.title;
        Album foundAlbum = Album.Find(title);
        Dictionary<string, int> results = Count.Album(foundAlbum, null);
        return results;
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
