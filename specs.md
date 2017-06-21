| Behavior | Input | Output |
| - | - | - |
| User wants the lyrics to a song. | sends GET to /api/songs/:title | receives JSON containing the song, its lyrics, and its album |
| User wants information about an album  | sends GET to /api/albums/:title | receives JSON containing album title, album art, release date, its songs, their lyrics |
| User wants to see a word frequency list for Nicki Minaj | sends GET to /api/count | receives JSON with all words from Nicki Minaj songs |
| User wants to see a word frequency list for an album | sends GET to /api/albums/count/:title | receives JSON with all words from that album |
| User wants to see a word frequency list for a song | sends GET to /api/songs/count/:title | receives JSON with all words from that song |
| Developer wants to add information to the back end | Submit form located at /form | receives a response code and route back to form |
| User wants to hear a computer spit some stuff | sends GET to /api/spit/:number | receives Markov-generated response of :number sentences |
| User wants to hear a computer spit a verse | sends GET to /api/spit/verse | receives a Markov-generated response of verse length with lines split into separate key-value pairs |
| User is aware of undocumented features and wants to hear a verse of countrified Nicki Minaj | sends GET to /api/spit/country | receives a Markov-generated, countrified, response of verse length with lines split into separate key-value pairs |
