using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Text.RegularExpressions;
using System;

namespace NickiMinAPI.Objects
{
  public class Count
  {
    public static Dictionary<string, int> TheSong(Song song)
    {
      Dictionary<string, int> counts = new Dictionary<string, int> {};
      string withoutBracketedText = Regex.Replace(song.Lyrics, @"\[.*?\]", "");
      string withoutPunctuation = Regex.Replace(withoutBracketedText, "[^a-zA-Z0-9' ]", "");
      string[] corpusSplit = withoutPunctuation.ToLower().Split(default(string[]), StringSplitOptions.RemoveEmptyEntries);
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
      return counts;
    }
    public static Dictionary<string, int> TheAlbum(Album album)
    {
      Dictionary<string, int> counts = new Dictionary<string, int> {};
      foreach (Song song in album.GetSongs())
      {
        string withoutBracketedText = Regex.Replace(song.Lyrics, @"\[.*?\]", "");
        string withoutPunctuation = Regex.Replace(withoutBracketedText, "[^a-zA-Z0-9' ]", "");
        string[] corpusSplit = withoutPunctuation.ToLower().Split(default(string[]), StringSplitOptions.RemoveEmptyEntries);
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
      //TODO: There has to be a better way!
      //   Dictionary<string, int> songCount = Count.TheSong(song);
      //
      //   foreach (int countamount in songCount)
      //   {
      //     if (counts.containsKey())
      //   }
      }
      return counts;
    }
  }
}


// using System;
// using System.Collections.Generic;
//
// namespace WordCounter.Objects
// {
//   public class RepeatCounter
//   {
//     private string _corpus;
//     private string[] _corpusSplit;
//     private string[] _searchTerms;
//     private Dictionary<string, int> _counts = new Dictionary<string, int> {};
//
//     public RepeatCounter(string corpus, string searchTerms)
//     {
//       _corpus = corpus;
//       _corpusSplit = _corpus.Split(default(string[]), StringSplitOptions.RemoveEmptyEntries);
//       _searchTerms = searchTerms.Split(default(string[]), StringSplitOptions.RemoveEmptyEntries);
//     }
//     public Dictionary<string, int> CountRepeats()
//     {
//       foreach (string query in _searchTerms) {
//         _counts.Add(query, 0);
//       }
//       foreach (string word in _corpusSplit) {
//         if (_counts.ContainsKey(word)) {
//           _counts[word] ++;
//         }
//       }
//       return _counts;
//     }
//   }
// }
