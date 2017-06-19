using Xunit;
using System.Collections.Generic;
using System;
using System.Data;
using System.Data.SqlClient;
using NickiMinAPI.Objects;

namespace NickiMinAPI
{
  [Collection("NickiMinAPITests")]
  public class SongTest : IDisposable
  {
    public SongTest()
    {
      DBConfiguration.ConnectionString = "Data Source=(localdb)\\mssqllocaldb;Initial Catalog=nicki_min_api_test;Integrated Security=SSPI;";
    }
    public void Dispose()
    {
      Song.DeleteAll();
      Album.DeleteAll();
    }
    [Fact]
    public void Song_Equal_ReturnsTrueForIdenticalObjects()
    {
      //Arrange, Act
      Song firstSong = new Song("Anaconda", "My ananconda etc.", 1);
      Song secondSong = new Song("Anaconda", "My ananconda etc.", 1);
      //Assert
      Assert.Equal(firstSong, secondSong);
    }
    [Fact]
    public void Song_SongsEmptyAtFirst()
    {
      //Arrange, Act
      int result = Song.GetAll().Count;
      //Assert
      Assert.Equal(0, result);
    }
    [Fact]
    public void Song_Save_SavesSongToDatabase()
    {
      //Arrange
      Album testAlbum = new Album("Pink Friday", new DateTime(2010, 11, 19));
      testAlbum.Save();
      Song testSong = new Song("Super Bass", "That super bass, etc.", testAlbum.Id);
      testSong.Save();
      //Act
      List<Song> result = Song.GetAll();
      List<Song> testList = new List<Song>{testSong};
      //Assert
      Assert.Equal(testList, result);
    }
    [Fact]
    public void Song_Find_FindsSongInDatabase()
    {
      //Arrange
      Album testAlbum = new Album("Pink Friday", new DateTime(2010, 11, 19));
      testAlbum.Save();
      Song testSong = new Song("Moment 4 Life", "...something something Moment...", testAlbum.Id);
      testSong.Save();
      //Act
      Song foundSong = Song.Find(testSong.Id);
      //Assert
      Assert.Equal(testSong, foundSong);
    }
    [Fact]
    public void Song_Delete_RemovesSongFromDatabase()
    {
      //Arrange
      Album testAlbum = new Album("Pink Friday", new DateTime(2010, 11, 19));
      testAlbum.Save();
      Song testCase1 = new Song("Super Bass", "That super bass, etc.", testAlbum.Id);
      testCase1.Save();
      Song testCase2 = new Song("Moment 4 Life", "...something something Moment...", testAlbum.Id);
      testCase2.Save();
      //Act
      testCase1.Delete();
      int actual = Song.GetAll().Count;
      int expected = 1;
      //Assert
      Assert.Equal(expected, actual);
    }
    [Fact]
    public void Song_DeleteAll_RemovesAllSongsFromDatabase()
    {
      //Arrange
      Album testAlbum = new Album("Pink Friday", new DateTime(2010, 11, 19));
      testAlbum.Save();
      Song testCase1 = new Song("Super Bass", "That super bass, etc.", testAlbum.Id);
      testCase1.Save();
      Song testCase2 = new Song("Moment 4 Life", "...something something Moment...", testAlbum.Id);
      testCase2.Save();
      //Act
      Song.DeleteAll();
      int actual = Song.GetAll().Count;
      int expected = 0;
      //Assert
      Assert.Equal(expected, actual);
    }
  }
}
