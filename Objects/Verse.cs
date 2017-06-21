using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Text.RegularExpressions;
using System;
using Markov;

namespace NickiMinAPI.Objects
{
  public class MarkoVerse
  {
    public MarkovChain<string> Corpus { get; set; }
    public List<string> AllBars { get; set; }

    public MarkoVerse()
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
      AllBars = allBars;
      Corpus = chain;
    }
    public string Spit(Random rand)
    {
      string sentence = string.Join(" ", this.Corpus.Chain(rand));
      while (this.AllBars.Contains(sentence) || sentence.Length < 3)
      {
        sentence = string.Join(" ", this.Corpus.Chain(rand));
      }
      return sentence;
    }

    public string Spit(int bars)
    {
      string bigSentence = "";
      for (int i = 0; i < bars; i++)
      {
        Random rand = new Random();
        bigSentence += this.Spit(rand) + ". ";
      }
      return bigSentence;
    }

    public List<string> SpitVerse()
    {
      Random rand = new Random();
      string lineOne = this.Spit(rand);
      string lineTwo = "";
      bool AARhyme = false;
      while (!AARhyme)
      {
        lineTwo = this.Spit(rand);
        if (lineOne[lineOne.Length - 1] == lineTwo[lineTwo.Length - 1]
         && lineOne[lineOne.Length - 2] == lineTwo[lineTwo.Length - 2]
         && lineOne != lineTwo
         && lineOne.Length > lineTwo.Length - 20
         && lineOne.Length < lineTwo.Length + 20) {
          AARhyme = true;
        }
        // Console.WriteLine("Attempt: \n lineOne: {0} \n lineTwo: {1} \n Rhyme: {2}", lineOne, lineTwo, AARhyme);
      }

      // Console.WriteLine("Success: \n lineOne: {0} \n lineTwo: {1} \n Rhyme: {2}", lineOne, lineTwo, AARhyme);
      return new List<string>{ lineOne, lineTwo };
    }
  }
}

//TODO: Make verse compose 8 lines.
//TODO: Enforce similar line length.
//TODO: Bleep n*gg, p*ssy, f*ck
// TODO: Remove parens and maybe q marks
