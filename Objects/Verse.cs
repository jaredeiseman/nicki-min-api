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
        string withoutPunctuation = Regex.Replace(withoutBracketedText, @"[^a-zA-Z' \-.\r\n]", " ");
        string nWordRemoved = Regex.Replace(withoutPunctuation, "(N|n)igg", "n*gg");
        string sWordRemoved = Regex.Replace(nWordRemoved, "(S|s)hit", "sh*t");
        string fWordRemoved = Regex.Replace(sWordRemoved, "(F|f)uck", "f*ck");
        string pWordRemoved = Regex.Replace(fWordRemoved, "(P|p)uss", "p*ss");
        string dWordRemoved = Regex.Replace(pWordRemoved, "(D|d)ick", "d*ck");
        string bWordRemoved = Regex.Replace(dWordRemoved, "(B|b)itch", "b*tch");
        string fixIm = Regex.Replace(bWordRemoved, "(I|i) m", "I'm");
        string fixCant = Regex.Replace(fixIm, "n t ", "n't ");

        string[] lyricSplit = fixCant.Split(new string[] { "\r\n", "\n" }, StringSplitOptions.RemoveEmptyEntries);
        foreach (string line in lyricSplit)
        {
          allBars.Add(line);
          chain.Add(line.Split(new string[] {" ", "—"}, StringSplitOptions.RemoveEmptyEntries), 1);
        }
      }
      AllBars = allBars;
      Corpus = chain;
    }
    public MarkoVerse(bool country)
    {
      MarkovChain<string> chain = new MarkovChain<string>(2);
      List<string> allBars = new List<string> {};

      foreach (Song song in Song.GetAll())
      {
        string withoutBracketedText = Regex.Replace(song.Lyrics, @"\[.*?\]", "");
        string withoutPunctuation = Regex.Replace(withoutBracketedText, @"[^a-zA-Z' \-.\r\n]", " ");
        string nWordRemoved = Regex.Replace(withoutPunctuation, "(N|n)igg", "fell");
        string sWordRemoved = Regex.Replace(nWordRemoved, "(S|s)hit", "toot");
        string fWordRemoved = Regex.Replace(sWordRemoved, "(F|f)uck", "hoot");
        string pWordRemoved = Regex.Replace(fWordRemoved, "(P|p)ussy", "truck");
        string dWordRemoved = Regex.Replace(pWordRemoved, "(D|d)ick", "dog");
        string bWordPluralsRemoved = Regex.Replace(dWordRemoved, "(B|b)itches", "hussies");
        string bWordRemoved = Regex.Replace(bWordPluralsRemoved, "(B|b)itch", "hussy");
        string girlGal = Regex.Replace(bWordRemoved, "(G|g)irl", "gal");
        string youYall = Regex.Replace(girlGal, "(Y|y)ou ", "y'all ");
        string goneDone = Regex.Replace(youYall, "(G|g)one", "done gone");
        string ingIn = Regex.Replace(goneDone, "ing", "in'");
        string fixIm = Regex.Replace(ingIn, "(I|i) m", "I'm");
        string noMun = Regex.Replace(fixIm, "(M|m)un", "YEEHAW");

        string[] lyricSplit = noMun.Split(new string[] { "\r\n", "\n" }, StringSplitOptions.RemoveEmptyEntries);
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
      return sentence + ".";
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
      List<string> verse = new List<string> {};

      for (int i = 0; i < 4; i++)
      {
        string lineOne = this.Spit(rand);
        string lineTwo = "";
        bool Rhyme = false;
        while (!Rhyme)
        {
          lineTwo = this.Spit(rand);
          if (lineOne[lineOne.Length - 3] == lineTwo[lineTwo.Length - 3]
          && lineOne[lineOne.Length - 2] == lineTwo[lineTwo.Length - 2]
          && lineOne != lineTwo
          && lineOne.Length > lineTwo.Length - 20
          && lineOne.Length < lineTwo.Length + 20) {
            Rhyme = true;
          }
        }
        verse.Add(lineOne);
        verse.Add(lineTwo);
        // Console.WriteLine("Attempt: \n lineOne: {0} \n lineTwo: {1} \n Rhyme: {2}", lineOne, lineTwo, AARhyme);
      }
      // Console.WriteLine("Success: \n lineOne: {0} \n lineTwo: {1} \n Rhyme: {2}", lineOne, lineTwo, AARhyme);
      return verse;
    }

    public string SpitTweetBars()
    {
      Random rand = new Random();
        string lineOne = this.Spit(rand);
        while (lineOne.Length >= 70)
        {
          lineOne = this.Spit(rand);
        }
        string lineTwo = "";
        bool Rhyme = false;
        while (!Rhyme)
        {
          lineTwo = this.Spit(rand);
          if (lineOne[lineOne.Length - 3] == lineTwo[lineTwo.Length - 3]
          && lineOne[lineOne.Length - 2] == lineTwo[lineTwo.Length - 2]
          && lineOne != lineTwo
          && lineOne.Length > lineTwo.Length - 20
          && lineOne.Length < lineTwo.Length + 20
          && lineOne.Length + lineTwo.Length <= 138) {
            Rhyme = true;
          }
        }
        string returnString = lineOne + "\r\n" + lineTwo;
      return returnString;
    }
  }
}
