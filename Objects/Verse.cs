using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Text.RegularExpressions;
using System;
using Markov;

namespace NickiMinAPI.Objects
{
  public class Verse
  {
    public static string Spit()
    {
      string lyrics = "";
      foreach (Song song in Song.GetAll())
      {
        lyrics += song.Lyrics + " ";
      }
      string withoutBracketedText = Regex.Replace(lyrics, @"\[.*?\]", "");
      string linebreaksSpaced = withoutBracketedText.Replace(System.Environment.NewLine, " ");
      // string withoutPunctuation = Regex.Replace(linebreaksSpaced, @"[^a-zA-Z' \-]", " ");
      string[] corpusSplit = linebreaksSpaced.Split(new string[] {" ", "—"}, StringSplitOptions.RemoveEmptyEntries);

      var chain = new MarkovChain<string>(2);

      chain.Add(corpusSplit, 1);

      var rand = new Random();
      var sentence = string.Join(" ", chain.Chain(rand));
      return sentence;
    }
  }
}
