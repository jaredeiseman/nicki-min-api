-- Exported from QuickDBD: https://www.quickdatatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/schema/joChjFJhR0e_B5PRguXWdA

CREATE DATABASE nicki_min_api
GO
USE [nicki_min_api]
GO

CREATE TABLE "songs" (
    "id" int IDENTITY(1,1) NOT NULL ,
    "title" varchar(255)  NOT NULL ,
    "lyrics" varchar(8000)  NOT NULL ,
    "album_id" int  NOT NULL ,
    CONSTRAINT "pk_songs" PRIMARY KEY (
        "id"
    )
)

GO

CREATE TABLE "albums" (
    "id" int IDENTITY(1,1) NOT NULL ,
    "title" varchar(255)  NOT NULL ,
    "release_date" varchar(255)  NOT NULL ,
    CONSTRAINT "pk_albums" PRIMARY KEY (
        "id"
    )
)

GO

CREATE TABLE "features" (
    "id" int IDENTITY(1,1) NOT NULL ,
    "name" varchar(255)  NOT NULL ,
    "song_id" int  NOT NULL ,
    CONSTRAINT "pk_features" PRIMARY KEY (
        "id"
    )
)

GO
