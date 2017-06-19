using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System;

namespace NickiMinAPI.Objects
{
  public class Song
  {
    public int Id  { get; set; }
    public string Title { get; set; }
    public string Lyrics { get; set; }
    public int AlbumId { get; set; }

    public Song(string title, string lyrics, int albumId, int id = 0)
    {
      string titleCase = CultureInfo.CurrentCulture.TextInfo.ToTitleCase(title);
      Id = id;
      Title = titleCase;
      Lyrics = lyrics;
      AlbumId = albumId;
    }
    public override bool Equals(System.Object otherSong)
    {
        if (!(otherSong is Song))
        {
          return false;
        }
        else
        {
          Song newSong = (Song) otherSong;
          bool idEquality = (this.Id == newSong.Id);
          bool titleEquality = (this.Title == newSong.Title);
          bool lyricEquality = (this.Lyrics == newSong.Lyrics);
          bool albumEquality = (this.AlbumId == newSong.AlbumId);
          return (idEquality && titleEquality && lyricEquality && albumEquality);
        }
    }

    public void Save()
    {
      SqlConnection conn = DB.Connection();
      conn.Open();

      SqlCommand cmd = new SqlCommand("INSERT INTO songs (title, lyrics, album_id) OUTPUT INSERTED.id VALUES (@SongTitle, @SongLyrics, @AlbumId);", conn);
      cmd.Parameters.Add(new SqlParameter("@SongTitle", this.Title));
      cmd.Parameters.Add(new SqlParameter("@SongLyrics", this.Lyrics));
      cmd.Parameters.Add(new SqlParameter("@AlbumId", this.AlbumId));
      SqlDataReader rdr = cmd.ExecuteReader();

      while(rdr.Read())
      {
        this.Id = rdr.GetInt32(0);
      }

      if (rdr != null)
      {
        rdr.Close();
      }
      if(conn != null)
      {
        conn.Close();
      }
    }
    public static List<Song> GetAll()
    {
      List<Song> allSongs = new List<Song>{};
      SqlConnection conn = DB.Connection();
      conn.Open();

      SqlCommand cmd = new SqlCommand("SELECT * FROM songs;", conn);
      SqlDataReader rdr = cmd.ExecuteReader();
      while(rdr.Read())
      {
        int songId = rdr.GetInt32(0);
        string songTitle = rdr.GetString(1);
        string songLyrics = rdr.GetString(2);
        int songAlbum = rdr.GetInt32(3);
        Song newSong = new Song(songTitle, songLyrics, songAlbum, songId);
        allSongs.Add(newSong);
      }
      if (rdr != null)
      {
        rdr.Close();
      }
      if (conn != null)
      {
        conn.Close();
      }
      return allSongs;
    }
    public static Song Find(int id)
    {
      SqlConnection conn = DB.Connection();
      conn.Open();

      SqlCommand cmd = new SqlCommand("SELECT * FROM songs WHERE id = @SongId;", conn);
      cmd.Parameters.Add(new SqlParameter("@SongId", id.ToString()));
      SqlDataReader rdr = cmd.ExecuteReader();

      int songId = 0;
      string songTitle = null;
      string songLyrics = null;
      int songAlbum = 0;
      while(rdr.Read())
      {
        songId = rdr.GetInt32(0);
        songTitle = rdr.GetString(1);
        songLyrics = rdr.GetString(2);
        songAlbum = rdr.GetInt32(3);
      }
      Song foundSong = new Song(songTitle, songLyrics, songAlbum, songId);

      if (rdr != null)
      {
        rdr.Close();
      }
      if (conn != null)
      {
        conn.Close();
      }
      return foundSong;
    }
    public static Song Find(string title)
    {
      string fixedTitle = CultureInfo.CurrentCulture
                         .TextInfo.ToTitleCase(
                          String.Join(" ", title.Split('-')));

      SqlConnection conn = DB.Connection();
      conn.Open();

      SqlCommand cmd = new SqlCommand("SELECT DISTINCT * FROM songs WHERE title = @SongTitle;", conn);
      cmd.Parameters.Add(new SqlParameter("@SongTitle", fixedTitle));
      SqlDataReader rdr = cmd.ExecuteReader();

      int songId = 0;
      string songTitle = null;
      string songLyrics = null;
      int songAlbum = 0;
      while(rdr.Read())
      {
        songId = rdr.GetInt32(0);
        songTitle = rdr.GetString(1);
        songLyrics = rdr.GetString(2);
        songAlbum = rdr.GetInt32(3);
      }
      Song foundSong = new Song(songTitle, songLyrics, songAlbum, songId);

      if (rdr != null)
      {
        rdr.Close();
      }
      if (conn != null)
      {
        conn.Close();
      }
      return foundSong;
    }
    public void Delete()
    {
      SqlConnection conn = DB.Connection();
      conn.Open();

      SqlCommand cmd = new SqlCommand("DELETE FROM songs WHERE id = @SongId;", conn);
      cmd.Parameters.Add(new SqlParameter("@SongId", this.Id));
      cmd.ExecuteNonQuery();

      if (conn != null)
      {
        conn.Close();
      }
    }
    public static void DeleteAll()
    {
      SqlConnection conn = DB.Connection();
      conn.Open();
      SqlCommand cmd = new SqlCommand("DELETE FROM songs;", conn);
      cmd.ExecuteNonQuery();
      conn.Close();
    }
  }
}
