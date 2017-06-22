using System.Collections.Generic;
using System.Data.SqlClient;
using System;

namespace NickiMinAPI.Secrets
{
  public class EnvVars
  {
    public static string ConsumerSecret { get; } = "---";
    public static string ConsumerKey { get; } = "---";
    public static string AccessToken { get; } = "---";
    public static string AccessTokenSecret { get; } = "---";

  }
}
