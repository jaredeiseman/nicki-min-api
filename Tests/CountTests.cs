using Xunit;
using System.Collections.Generic;
using System;
using System.Data;
using System.Data.SqlClient;
using NickiMinAPI.Objects;

namespace NickiMinAPI
{
  [Collection("NickiMinAPITests")]
  public class CountTest : IDisposable
  {
    public CountTest()
    {
      DBConfiguration.ConnectionString = "Data Source=(localdb)\\mssqllocaldb;Initial Catalog=nicki_min_api_test;Integrated Security=SSPI;";
    }
    public void Dispose()
    {
      Song.DeleteAll();
      Album.DeleteAll();
    }

    [Fact]
    public void Count_Words_ReturnsWordCountsForSong()
    {
      //Arrange
      Song testSong = new Song("Super Bass", "[Hook] Can't you hear that boom, badoom, boom, boom, badoom, boom, bass Got that super bass boom, badoom, boom, boom, badoom, boom, bass", 1);
      testSong.Save();
      //Act
      Dictionary<string, int> actual = Count.Words(testSong.Lyrics);
      Dictionary<string, int> expected = new Dictionary<string, int> {
        {"can't", 1}, {"you", 1}, {"hear", 1}, {"that", 2}, {"boom", 8}, {"badoom", 4}, {"bass", 3}, {"got", 1}, {"super", 1}
      };
      //Assert
      Assert.Equal(expected, actual);
    }
    [Fact]
    public void Count_Album_ReturnsWordCountsForAlbum()
    {
      //Arrange
      Album testAlbum = new Album("Pink Friday", new DateTime(2010, 11, 19));
      testAlbum.Save();
      Song testSong1 = new Song("Super Bass", "[Hook] Can't you hear that boom, badoom, boom, boom, badoom, boom, bass Got that super bass boom, badoom, boom, boom, badoom, boom, bass", testAlbum.Id);
      testSong1.Save();
      Song testSong2 = new Song("Super Bass 2", "[Hook] Can't you hear that boom, badoom, boom, boom, badoom, boom, bass Got that super bass boom, badoom, boom, boom, badoom, boom, bass", testAlbum.Id);
      testSong2.Save();
      //Act
      Dictionary<string, int> actual = Count.AnAlbum(testAlbum);
      Dictionary<string, int> expected = new Dictionary<string, int> {
        {"can't", 2}, {"you", 2}, {"hear", 2}, {"that", 4}, {"boom", 16}, {"badoom", 8}, {"bass", 6}, {"got", 2}, {"super", 2}
      };
      //Assert
      Assert.Equal(expected, actual);
    }
    [Fact]
    public void Count_All_ReturnsWordCountsForDiscography()
    {
      //Arrange
      Album testAlbum1 = new Album("Pink Friday", new DateTime(2010, 11, 19));
      testAlbum1.Save();
      Song testSong1 = new Song("Super Bass", "[Hook] Can't you hear that boom, badoom, boom, boom, badoom, boom, bass Got that super bass boom, badoom, boom, boom, badoom, boom, bass", testAlbum1.Id);
      testSong1.Save();
      Song testSong2 = new Song("Super Bass", "[Hook] Can't you hear that boom, badoom, boom, boom, badoom, boom, bass Got that super bass boom, badoom, boom, boom, badoom, boom, bass", testAlbum1.Id);
      testSong2.Save();
      Album testAlbum2 = new Album("Pink Friday II", new DateTime(2010, 11, 19));
      testAlbum2.Save();
      Song testSong3 = new Song("Super Bass", "[Hook] Can't you hear that boom, badoom, boom, boom, badoom, boom, bass Got that super bass boom, badoom, boom, boom, badoom, boom, bass", testAlbum2.Id);
      testSong3.Save();
      Song testSong4 = new Song("Super Bass", "[Hook] Can't you hear that boom, badoom, boom, boom, badoom, boom, bass Got that super bass boom, badoom, boom, boom, badoom, boom, bass", testAlbum2.Id);
      testSong4.Save();
      //Act
      Dictionary<string, int> actual = Count.All();
      Dictionary<string, int> expected = new Dictionary<string, int> {
        {"can't", 4}, {"you", 4}, {"hear", 4}, {"that", 8}, {"boom", 32}, {"badoom", 16}, {"bass", 12}, {"got", 4}, {"super", 4}
      };
      //Assert
      Assert.Equal(expected, actual);
    }
  }
}
