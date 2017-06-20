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
      MarkovChain<string> chain = new MarkovChain<string>(2);
      List<string> allBars = new List<string> {};

      foreach (Song song in Song.GetAll())
      {
        string withoutBracketedText = Regex.Replace(song.Lyrics, @"\[.*?\]", "");
        // string withoutPunctuation = Regex.Replace(linebreaksSpaced, @"[^a-zA-Z' \-]", " ");

        string[] lyricSplit = withoutBracketedText.Split(new string[] { "\r\n", "\n" }, StringSplitOptions.RemoveEmptyEntries);
        foreach (string line in lyricSplit)
        {
          allBars.Add(line);
          chain.Add(line.Split(new string[] {" ", "—"}, StringSplitOptions.RemoveEmptyEntries), 1);
        }
      }

      Random rand = new Random();
      string sentence = string.Join(" ", chain.Chain(rand));
      while (allBars.Contains(sentence))
      {
        sentence = string.Join(" ", chain.Chain(rand));
        Console.WriteLine("Don't bite Nicki's style.");
      }
      return sentence;
    }
    public static string Spit(int bars)
    {
      return "";
    }
  }
}
