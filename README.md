# Nicki MinAPI

#### An "original" Nicki Minaj lyric spitting, word counting, documenting, tweeting marvel of an API

#### By Charles Emrich, Jared Eiseman, Joe Parsley and Joe Luedtke

## Description
Nicki Min-API is a RESTful Application Program Interface for information regarding Nicki Minaj music. The inception of this idea was spawned from a project we discovered by the name of Kanye REST (http://www.kanyerest.xyz/), and modified to be used for an Epicodus (https://www.epicodus.com/) Group Week Project as an exercise in developing the front-end of a site alongside the back end. The application contains a suite of various endpoints returning data about music of Nicki Minaj, as well as a front end documentation site/demonstration site. It is capable of utilizing Markov Chaining logic to produce "original" lyrics based on the corpus of Nicki Minaj's lyrics, including rhyming multiple lines in an "aabb" pattern.

## Specifications
| Behavior | Input | Output |
| - | - | - |
| User wants the lyrics to a song. | sends GET to /api/songs/:title | receives JSON containing the song, its lyrics, and its album |
| User wants information about an album  | sends GET to /api/albums/:title | receives JSON containing album title, album art, release date, its songs, their lyrics |
| User wants to see a word frequency list for Nicki Minaj | sends GET to /api/count | receives JSON with all words from Nicki Minaj songs ordered by count |
| User wants to see a word frequency list for an album | sends GET to /api/albums/count/:title | receives JSON with all words from that album ordered by count |
| User wants to see a word frequency list for a song | sends GET to /api/songs/count/:title | receives JSON with all words from that song ordered by count |
| Developer wants to add information to the back end | Submit form located at /form | receives a response code and route back to form |
| User wants to hear a computer spit some stuff | sends GET to /api/spit/:number | receives Markov-generated response of :number sentences |
| User wants to hear a computer spit a verse | sends GET to /api/spit/verse | receives a Markov-generated response of verse length with lines split into separate key-value pairs |
| User is aware of undocumented features and wants to hear a verse of countrified Nicki Minaj | sends GET to /api/spit/country | receives a Markov-generated, countrified, response of verse length with lines split into separate key-value pairs |

## Setup/Installation Requirements

* Download or clone the repository from https://github.com/jaredeiseman/nicki-min-api
* Using SSMS, or another program with similar functionality, reconstruct the database from schema-data-full-db.sql in the root directory of the repository
* Install required dependencies with "dnu restore"
* Initialize the server with "dnx run"
* If you need to debug or test functionality run "dnx test"
* Point your browser to "localhost:5004"
* Note: without including your own twitter API credentials, the tweet bot portion of this application will fail, instructions for the environment variable file can be located in "Objects/envVars.md" and should be stored in "Objects/environmentVariables.cs"

## Known Bugs

There are no known bugs at this time.

## Support and contact details

For feedback or support file an issue in the repository.

## Technologies Used

* HTML
* CSS
* Sass (Bourbon/Neat)
* JavaScript
* jQuery
* C#
* NancyFx
* Razor
* MsSQL
* Markov
* TweetMoaSharp

### License

MIT

Copyright (c) 2017 Charles Emrich, Jared Eiseman, Joe Parsley and Joe Luedtke
