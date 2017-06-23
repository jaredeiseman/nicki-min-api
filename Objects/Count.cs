using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Text.RegularExpressions;
using System.Linq;
using System;

namespace NickiMinAPI.Objects
{
  public class Count
  {
    public static Dictionary<string, int> Song(Song song, Dictionary<string, int> counts)
    {
      if (counts == null) {
        counts = new Dictionary<string, int> {};
      }
      string withoutBracketedText = Regex.Replace(song.Lyrics, @"\[.*?\]", "");
      string linebreaksSpaced = withoutBracketedText.Replace(System.Environment.NewLine, " ");
      string withoutPunctuation = Regex.Replace(linebreaksSpaced, @"[^a-zA-Z' \-]", " ");
      string[] corpusSplit = withoutPunctuation.ToLower().Split(new string[] {" ", "—"}, StringSplitOptions.RemoveEmptyEntries);
      foreach (string word in corpusSplit) {
        if (!counts.ContainsKey(word)) {
          counts.Add(word, 0);
        }
      }
      foreach (string word in corpusSplit) {
        if (counts.ContainsKey(word)) {
          counts[word] ++;
        }
      }
      return counts.OrderByDescending(pair => pair.Value)
                   .ToDictionary(pair => pair.Key, pair => pair.Value);
    }
    public static Dictionary<string, int> Album(Album album, Dictionary<string, int> counts)
    {
      if (counts == null) {
        counts = new Dictionary<string, int> {};
      }
      foreach (Song song in album.GetSongs())
      {
        counts = Count.Song(song, counts);
      }
      return counts;
    }
    public static Dictionary<string, int> All()
    {
      Dictionary<string, int> counts = new Dictionary<string, int> {};
      foreach (Album album in NickiMinAPI.Objects.Album.GetAll())
      {
        counts = Count.Album(album, counts);
      }
      return counts;
    }
  }
}
