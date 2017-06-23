using System.Collections.Generic;
using System.Data.SqlClient;
using System;
using NickiMinAPI.Secrets;
using TweetSharp;
using System.Timers;

namespace NickiMinAPI.Objects
{
  public class TwitBot
  {
    private static Timer timer;
    public static void StartTimer()
    {
      timer = new Timer();
      timer.Interval = 1000 * 60 * 1.2;

      timer.Elapsed += OnTimedEvent;
      timer.AutoReset = true;
      timer.Enabled = true;
    }
    public static void OnTimedEvent(Object source, System.Timers.ElapsedEventArgs e)
    {
      TwitBot.TweetBars();
    }
    public static void TweetBars()
    {
      TwitterService service = new TwitterService(EnvVars.ConsumerKey, EnvVars.ConsumerSecret);
      service.AuthenticateWith(EnvVars.AccessToken, EnvVars.AccessTokenSecret);

      service.SendTweet(new SendTweetOptions {Status = new MarkoVerse().SpitTweetBars()});
    }
  }
}
