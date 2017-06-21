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
      timer.Interval = 6000000;

      timer.Elapsed += OnTimedEvent;
      timer.AutoReset = true;
      timer.Enabled = true;
    }
    // public static ActionResult Authorize()
    // {
    //   TwitterService service = new TwitterService(EnvVars.ConsumerKey, EnvVars.ConsumerSecret);
    // //   OAuthRequestToken requestToken = service.GetRequestToken("http://localhost:5004/AuthorizeCallback");
    // //   Uri uri = service.GetAuthorizationUri(requestToken);
    // //   return new RedirectResult(uri.ToString(), false);
    // // }
    // // public static ActionResult AuthorizeCallback(string oAuthToken, string oAuthVerifier)
    // // {
    // //   OAuthRequestToken requestToken = new OAuthRequestToken {Token = oAuthToken};
    // //
    // //   TwitterService service = new TwitterService(EnvVars.ConsumerKey, EnvVars.ConsumerSecret);
    // //   OAuthAccessToken accessToken = service.GetAccessToken(requestToken, oAuthVerifier);
    // //
    // //   service.AuthenticateWith(accessToken.Token, accessToken.TokenSecret);
    // //   TwitterUser user = service.VerifyCredentials();
    // //   ViewModel.Message = string.Format("Your username is {0}", user.ScreenName);
    // //   return View();
    // // }
    // }
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
