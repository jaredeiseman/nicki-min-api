using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System;

namespace NickiMinAPI.Objects
{
  public class Album
  {
    public int Id  { get; set; }
    public string Title { get; set; }
    public DateTime ReleaseDate { get; set; }

    public Album(string title, DateTime releaseDate, int id = 0)
    {
      string titleCase = CultureInfo.CurrentCulture.TextInfo.ToTitleCase(title);
      Id = id;
      Title = titleCase;
      ReleaseDate = releaseDate;
    }
    public override bool Equals(System.Object otherAlbum)
    {
        if (!(otherAlbum is Album))
        {
          return false;
        }
        else
        {
          Album newAlbum = (Album) otherAlbum;
          bool idEquality = (this.Id == newAlbum.Id);
          bool titleEquality = (this.Title == newAlbum.Title);
          bool releaseEquality = (this.ReleaseDate == newAlbum.ReleaseDate);
          return (idEquality && titleEquality && releaseEquality);
        }
    }

    public void Save()
    {
      SqlConnection conn = DB.Connection();
      conn.Open();

      SqlCommand cmd = new SqlCommand("INSERT INTO albums (title, release_date) OUTPUT INSERTED.id VALUES (@AlbumTitle, @AlbumReleaseDate);", conn);
      cmd.Parameters.Add(new SqlParameter("@AlbumTitle", this.Title));
      cmd.Parameters.Add(new SqlParameter("@AlbumReleaseDate", this.ReleaseDate));
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
    public static List<Album> GetAll()
    {
      List<Album> allAlbums = new List<Album>{};
      SqlConnection conn = DB.Connection();
      conn.Open();

      SqlCommand cmd = new SqlCommand("SELECT * FROM albums;", conn);
      SqlDataReader rdr = cmd.ExecuteReader();
      while(rdr.Read())
      {
        int albumId = rdr.GetInt32(0);
        string albumTitle = rdr.GetString(1);
        DateTime albumReleaseDate = Convert.ToDateTime(rdr.GetString(2));
        Album newAlbum = new Album(albumTitle, albumReleaseDate, albumId);
        allAlbums.Add(newAlbum);
      }
      if (rdr != null)
      {
        rdr.Close();
      }
      if (conn != null)
      {
        conn.Close();
      }
      return allAlbums;
    }
    public static Album Find(int id)
    {
      SqlConnection conn = DB.Connection();
      conn.Open();

      SqlCommand cmd = new SqlCommand("SELECT * FROM albums WHERE id = @AlbumId;", conn);
      cmd.Parameters.Add(new SqlParameter("@AlbumId", id.ToString()));
      SqlDataReader rdr = cmd.ExecuteReader();

      int albumId = 0;
      string albumTitle = null;
      DateTime albumReleaseDate = new DateTime();
      while(rdr.Read())
      {
        albumId = rdr.GetInt32(0);
        albumTitle = rdr.GetString(1);
        albumReleaseDate = Convert.ToDateTime(rdr.GetString(2));
      }
      Album foundAlbum = new Album(albumTitle, albumReleaseDate, albumId);

      if (rdr != null)
      {
        rdr.Close();
      }
      if (conn != null)
      {
        conn.Close();
      }
      return foundAlbum;
    }
    public void Delete()
    {
      SqlConnection conn = DB.Connection();
      conn.Open();

      SqlCommand cmd = new SqlCommand("DELETE FROM albums WHERE id = @AlbumId;", conn);
      cmd.Parameters.Add(new SqlParameter("@AlbumId", this.Id));
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
      SqlCommand cmd = new SqlCommand("DELETE FROM albums;", conn);
      cmd.ExecuteNonQuery();
      conn.Close();
    }
  }
}
