using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System;
using Markov;

namespace NickiMinAPI.Objects
{
  public class Verse
  {
    public static string Spit()
    {

      MarkovChain<string> ourChain = new MarkovChain<string>(2);
      ourChain.Add(new List<string> {"Only I can change my life No one can do it for me",
      "Smile in the mirror Do that every morning and you'll start to see a big difference in your life",
      "Infuse your life with action Don't wait for it to happen Make it happen Make your own future Make your own hope Make your own love And whatever your beliefs honor your creator not by passively waiting for grace to come down from upon high but by doing what you can to make grace happen yourself right now right down here on Earth"});
      var result = ourChain.Chain();
      Console.WriteLine(result.Value);

      return "Hello World";
    }
  }
}

// Only I can change my life. No one can do it for me.
// Smile in the mirror. Do that every morning and you'll start to see a big difference in your life.
// Infuse your life with action. Don't wait for it to happen. Make it happen. Make your own future. Make your own hope. Make your own love. And whatever your beliefs, honor your creator, not by passively waiting for grace to come down from upon high, but by doing what you can to make grace happen... yourself, right now, right down here on Earth.
// Today I choose life. Every morning when I wake up I can choose joy, happiness, negativity, pain... To feel the freedom that comes from being able to continue to make mistakes and choices - today I choose to feel life, not to deny my humanity but embrace it.
