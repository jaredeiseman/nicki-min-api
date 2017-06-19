using Xunit;
using System.Collections.Generic;
using System;
using System.Data;
using System.Data.SqlClient;
using NickiMinAPI.Objects;

namespace NickiMinAPI
{
  [Collection("NickiMinAPITests")]
  public class AlbumTest : IDisposable
  {
    public AlbumTest()
    {
      DBConfiguration.ConnectionString = "Data Source=(localdb)\\mssqllocaldb;Initial Catalog=nicki_min_api_test;Integrated Security=SSPI;";
    }
    public void Dispose()
    {
      Album.DeleteAll();
    }
    [Fact]
    public void Album_Equal_ReturnsTrueForIdenticalObjects()
    {
      //Arrange, Act
      Album firstAlbum = new Album("Pink Friday", new DateTime(2010, 11, 19));
      Album secondAlbum = new Album("Pink Friday", new DateTime(2010, 11, 19));
      //Assert
      Assert.Equal(firstAlbum, secondAlbum);
    }
    [Fact]
    public void Album_AlbumsEmptyAtFirst()
    {
      //Arrange, Act
      int result = Album.GetAll().Count;
      //Assert
      Assert.Equal(0, result);
    }
    [Fact]
    public void Album_Save_SavesAlbumToDatabase()
    {
      //Arrange
      Album testAlbum = new Album("Pink Friday: Roman Reloaded", new DateTime(2012, 4, 2));
      testAlbum.Save();
      //Act
      List<Album> result = Album.GetAll();
      List<Album> testList = new List<Album>{testAlbum};
      //Assert
      Assert.Equal(testList, result);
    }
    [Fact]
    public void Album_Find_FindsAlbumInDatabase()
    {
      //Arrange
      Album testAlbum = new Album("The Pinkprint", new DateTime(2014, 12, 12));
      testAlbum.Save();
      //Act
      Album foundAlbum = Album.Find(testAlbum.Id);
      //Assert
      Assert.Equal(testAlbum, foundAlbum);
    }
    [Fact]
    public void Album_Delete_RemovesAlbumFromDatabase()
    {
      //Arrange
      Album testCase1 = new Album("Pink Friday", new DateTime(2010, 11, 19));
      testCase1.Save();
      Album testCase2 = new Album("The Pinkprint", new DateTime(2014, 12, 12));
      testCase2.Save();
      //Act
      testCase1.Delete();
      int actual = Album.GetAll().Count;
      int expected = 1;
      //Assert
      Assert.Equal(expected, actual);
    }
    [Fact]
    public void Album_DeleteAll_RemovesAllAlbumsFromDatabase()
    {
      //Arrange
      Album testCase1 = new Album("Pink Friday", new DateTime(2010, 11, 19));
      testCase1.Save();
      Album testCase2 = new Album("The Pinkprint", new DateTime(2014, 12, 12));
      testCase2.Save();
      //Act
      Album.DeleteAll();
      int actual = Album.GetAll().Count;
      int expected = 0;
      //Assert
      Assert.Equal(expected, actual);
    }
  }
}
