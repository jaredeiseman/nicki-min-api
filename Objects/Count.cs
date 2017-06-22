using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Text.RegularExpressions;
using System;

namespace NickiMinAPI.Objects
{
  public class Count
  {
    public static Dictionary<string, int> Words(string lyrics)
    {
      Dictionary<string, int> counts = new Dictionary<string, int> {};
      string withoutBracketedText = Regex.Replace(lyrics, @"\[.*?\]", "");
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
      //TODO: Order Dictionary by value;
      return counts;
    }
    public static Dictionary<string, int> AnAlbum(Album album)
    {
      string corpus = "";
      foreach (Song song in album.GetSongs())
      {
        corpus += song.Lyrics + " ";
      }
      Dictionary<string, int> counts = Count.Words(corpus);
      return counts;
    }
    public static Dictionary<string, int> All()
    {
      string corpus = "";
      foreach (Album album in Album.GetAll())
      {
        foreach (Song song in album.GetSongs()) {
          corpus += song.Lyrics + " ";
        }
      }
      Dictionary<string, int> counts = Count.Words(corpus);
      return counts;
    }
  }
}
