USE [nicki_min_api]
GO
/****** Object:  Table [dbo].[albums]    Script Date: 6/19/2017 5:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[albums](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](255) NOT NULL,
	[release_date] [varchar](255) NOT NULL,
 CONSTRAINT [pk_albums] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[songs]    Script Date: 6/19/2017 5:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[songs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](255) NOT NULL,
	[lyrics] [varchar](8000) NOT NULL,
	[album_id] [int] NOT NULL,
 CONSTRAINT [pk_songs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[albums] ON 

INSERT [dbo].[albums] ([id], [title], [release_date]) VALUES (1, N'The Pinkprint', N'Dec 12 2014 12:00AM')
SET IDENTITY_INSERT [dbo].[albums] OFF
SET IDENTITY_INSERT [dbo].[songs] ON 

INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (1, N'All Things Go', N'[Produced by Allen Ritter, Boi-1da & Vinylz]

[Verse 1]
Yo, I had to reinvent, I put the V in-vent
I put the heat in vents, man, I''ve been competing since
I look beyond what people saying, and I see intent
Then I just sit back and decipher what they really meant
Cherish these nights, cherish these people
Life is a movie, but there''ll never be a sequel
And I''m good with that as long as I''m peaceful
As long as seven years from now I''m taking my daughter to preschool
Cherish these days, man, do they go quick
Just yesterday, I swear it was ''o-six
Ten years ago, that''s when you proposed
I looked down, "Yes, I suppose"

[Hook]
All things go, all things go
All things go, all things go
I feel one minute, yeah, we got it then it''s gone
While we keep waiting for a moment to live for
So can''t nobody ever tell me that I''m wrong
Cause I''ma ride out with you, still the night is young
And we keep going, we go
(We go, we go) We wake back up and do it all again
(We know, we know) Say fuck the world, we riding ''til the end
When all is said and done, look what we''ve become
I just want you to know that I did it for you

[Verse 2]
I lost my little cousin, to a senseless act of violence
His sister said he wanted to stay with me, but I didn''t invite him
Why didn''t he ask, or am I just buggin''?
Cause since I got fame, they don''t act the same even though they know that I love ''em
Family ties, broken before me
Niggas trying to kill him, he ain''t even call me
And that''s the reflection of me, yes, I get it, I get it was all me
I pop a pill and remember the look in his eyes, the last day he saw me

[Hook]
All things go, all things go
All things go, all things go
I feel one minute, yeah, we got it then it''s gone
While we keep waiting for a moment to live for
So can''t nobody ever tell me that I''m wrong
Cause I''ma ride out with you, still the night is young
And we keep going, we go
(We go, we go) We wake back up and do it all again
(We know, we know) Say fuck the world, we riding ''til the end
When all is said and done, look what we''ve become
I just want you to know that I did it for you

[Verse 3]
Let me make this clear, I''m not difficult, I''m just ''bout my business
I''m not into fake industry parties, and fake agendas
Rock with people for how they make me feel, not what they give me
Even the ones that hurt me the most, I still show forgiveness
I love my mother more than life itself and that''s a fact
I''d give it all if somehow I could just rekindle that
She never understands why I''m so overprotective
The more I work, the more I feel like somehow they''re neglected
I want ''Caiah to go to college, just to say "We did it!"
My child with Aaron, would''ve have been sixteen any minute
So in some ways I feel like ''Caiah is the both of them
It''s like he''s ''Caiah''s little angel, looking over him
And I know Jelani will always love me, and I''ll always love him
And I''m just his little sister, not Nicki Minaj when I''m around him
Gee, we did it, let''s leave this imprint
Just finished writing, this is The Pinkprint
 

[Hook]
All things go, all things go
All things go, all things go
I feel one minute, yeah, we got it then it''s gone
While we keep waiting for a moment to live for
So can''t nobody ever tell me that I''m wrong
Cause I''ma ride out with you, still the night is young
And we keep going, we go
(We go, we go) We wake back up and do it all again
(We know, we know) Say fuck the world, we riding ''til the end
When all is said and done, look what we''ve become
I just want you to know that I did it for you
All things go, all things go
All things go, all things go', 1)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (2, N'I Lied', N'[Intro]
Ooh ooh ooh (x4)
I lied, I lied, I lied
To keep you from breaking my heart

[Verse 1]
Even though I said I didn?t love you I lied, I lied
Even though I said I didn?t need you I lied, I lied
To keep you from breaking my heart, ooh
To keep you from breaking my heart, ooh
Even though I said don?t touch me I lied, I lied
I can?t fall for you, can?t give my all to you
I can?t let you think that I''ma let the game stall for you
Gotta protect me you gotta sweat me
You said you thought you was ready and I said "let?s see"
But I ain?t mean that, I need some fucking proof
Cause what happens if I fall in love, then you cut me loose?
You just a heart breaker, won?t let you break mine
Cause I?ll be smashing windows and cutting them brake lines

[Hook]
I lied
Cause who knew if I should let myself go with you
Who knows, who knows, so I lied
To keep you from breaking my heart, ooh
To keep you from breaking my heart, ooh
 

[Verse 2]
Even though I said fuck you, I lied, I lied
I thought eventually, you would let me go
That was my insecurities, and my ego
Missed my jump shot, missed my free throw
Miss the way we kiss, miss the D yo
Man it was good while it lasted
That shit wasn?t real, it was magic
If it was a record, it would have been classic
But fuck you though, orgasmic

[Bridge]
This is what I gotta do to keep me from falling
Stalling the truth, who knew what you?d do, if I let you in?
My mama ain''t raised no fool
I am not your usual typical type
Who would protect me if I never hide?
Falling so fast I''m afraid of you

[Outro]
So I lied, I lied, I lied
To keep you from breaking my heart, ooh
To keep you from breaking my heart, ooh
I lied, ooh baby, oooh
Cause what if I let myself go with you?', 1)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (3, N'The Crying Game', N'[Verse 1: Nicki Minaj]
Here we go again, it''s the game we love
Sheets all over the floor and they laced with drugs
You ain''t play your cards right, you had the Ace of Clubs
Hit you with the Ace of Spade, in your face, and shrugged
Blood drippin'' out your arm on my Asian rugs
We was just planning a wedding, Caucasian doves
You was just tellin'' your mans, that you hate the clubs
Now we in the crying game, heart laced with slugs

[Bridge 1: Nicki Minaj]
Are you alone? Do you need someone?
Is it too late to talk? Did I wait too long?
Thousand words don''t change a thing
Is it only three? Three words that you''re missing?

[Pre-Chorus: Jessie Ware]
Where did you go? Couldn''t see
I was too busy
Could''ve just said no
Where would you go? I think that I know

[Chorus: Jessie Ware]
O-o-o-o-o-o, O-o-o-o-o-o
We''re back to playing, we''re back to playing
O-o-o-o-o-o, O-o-o-o-o-o
We''re back to playing, the crying game
ADVERTISING

 
[Post-Chorus: Jessie Ware] (x2)
I could''ve given everything
Don''t wanna let the tears begin
We''re back to playing, the crying game

[Verse 2: Nicki Minaj]
Welcome to the crying game, where you lose your soul
Where it ain''t no E-Z Pass, you got to use the toll
Ain''t no cruise control, you ''bout to lose control
Ain''t no smilin'' faces here, we slammin'' doors and dishes
Sayin'' we don''t miss each other, but it''s all fictitious
Sayin'' that we had enough, but enough of what?
Another slap to the face, another uppercut
I''m just abusive by nature, not cause I hate ya
Not cause I wanna get someone to imitate ya
I know it''s hard, I know I intimidate ya
But is you stayin'' or goin''?
I couldn''t breathe, and you ain''t even know it
How come you never show it? All this love you speak of
All I want, is to love and be loved (to love and be loved)

[Bridge 2: Nicki Minaj]
I''m losin'' a thing I thought I''d win
And I''m coming undone, cause the tears don''t end

[Pre-Chorus: Jessie Ware]
Where did you go? Couldn''t see
I was too busy
Could''ve just said no
Where would you go? I think that I know
 

[Chorus: Jessie Ware]
O-o-o-o-o-o, O-o-o-o-o-o
We''re back to playing, we''re back to playing
O-o-o-o-o-o, O-o-o-o-o-o
We''re back to playing, the crying game

[Post-Chorus: Jessie Ware] (x2)
I could''ve given everything
Don''t wanna let the tears begin
We''re back to playing, the crying game

[Outro: Jessie Ware]
O-o-o-o-o-o, O-o-o-o-o-o
O-o-o-o-o-o, O-o-o-o-o-o', 1)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (4, N'Get On Your Knees', N'[Chorus: Nicki Minaj & (Ariana Grande)]
Get on your knees, get on your knees, get on your knees
Baby, just get on your knees (On your knees!)
Say pretty please, say pretty please, say pretty please
Baby, just say pretty please (Pretty please!)

[Verse 1: Nicki Minaj]
I''ll be back at eleven, you just act like a peasant
Got a bow on my panties, because my ass is a present
Yeah it''s gooder than Meagan, you look good when you''re beggin''
I be laughing when you beggin'' me, to just put the head in
Let me sit on your face, it''s ok you can play with it
When I''m bouncin'' it, chill out and don''t you make a mistake with it
Let me see what you''re workin'' with, If I''m ridin'', I''m murkin'' it
Slow grindin'', I''m twerkin'' it, yeah I bagged him, I Birkin''d it

[Pre-Chorus: Ariana Grande]
I don''t need a dozen roses
You ain''t gotta wine and dine me, no
I don''t need a pretty poet
Oooh, gettin'' all emotional
You gotta beg for it, beg for it
I wanna see you lookin'' up
Baby I''ma need you to beg for it

[Chorus: Nicki Minaj & (Ariana Grande)]
Get on your knees, get on your knees, get on your knees
Baby, just get on your knees (On your knees!)
Say pretty please, say pretty please, say pretty please
Baby, just say pretty please (Pretty please!)

[Verse 2: Nicki Minaj]
Gimme brain, assume the position
Make me way smarter, like you was a magician
Paid my dues and tuition, it''s good for your nutrition
Get head like a beautician, got me twitchin'', finish your mission
You make it come down, you make it run down
I''ma need you to give these other dudes the rundown
You got that legendary, this shit is fake, scary
Got me seein'' them fireworks, I''m on my Kate Perry

[Pre-Chorus: Ariana Grande]
I don''t need a dozen roses
You ain''t gotta wine and dine me, no
I don''t need a pretty poet
Oooh, gettin'' all emotional
You gotta beg for it, beg for it
I wanna see you lookin'' up
Baby I''ma need you to beg for it

[Bridge: Ariana Grande (Nicki Minaj)]
(Let''s go)
Cause we are just animals
Baby it''s primal (it''s primal....)
I want you on all fours
(And before I let you walk, you gotta show me how you crawl)
If you want it all (Yeah, you want it all?)
It''s non negotiable
So do as I say
(If you wanna get the job, you better know who''s the boss)
 

[Pre-Chorus: Ariana Grande]
I don''t need a dozen roses
You ain''t gotta wine and dine me, no
I don''t need a pretty poet
Oooh, gettin'' all emotional
You gotta beg for it, beg for it
I wanna see you lookin'' up
Baby I''ma need you to beg for it

[Chorus: Nicki Minaj & (Ariana Grande)]
Get on your knees, get on your knees, get on your knees
Baby, just get on your knees (On your knees!)
Say pretty please, say pretty please, say pretty please
Baby, just say pretty please (Pretty please!)', 1)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (5, N'Feeling Myself', N'[Intro: Nicki Minaj]
Yo B, they ready
Let''s go

[Hook: Beyonc?]
Feelin'' myself, I''m feelin'' myself, I''m feelin'' my
Feelin'' myself, I''m feelin'' myself, I''m feelin'' my, feelin'' my
Feelin'' myself, I''m feelin'' myself, I''m feelin'' my
Feelin'' myself, I''m feelin'' myself, I''m feelin'' my

[Verse 1: Nicki Minaj]
I''m with some hood girls lookin'' back at it, and a good girl in my tax bracket
Got a black card that''ll let Saks have it, these Chanel bags is a bad habit
I-I do balls, Dal Mavericks, my Maybach, black matted
Bitch, never left but I''m back at it,and I''m feelin'' myself, jack rabbit
Feelin'' myself, back off, cause I''m feelin'' myself, jack off
He be thinking about me when he whacks off, wax on? Wax off
National anthem, hats off, then I curve that nigga, like a bad toss
Lemme get a number two, with some Mac sauce, "On The Run Tour", with my mask off

[Hook: Beyonc?]
I''m feelin'' myself, I''m feelin'' myself, I''m feelin'' my
Feelin'' myself, I''m feelin'' myself, I''m feelin'' my, feelin'' my
Feelin'' myself, I''m feelin'' myself, I''m feelin'' my
Feelin'' myself, I''m feelin'' myself, I''m feelin'' my

[Post-Hook: Beyonc?]
Changed the game with that digital drop
Know where you was when that digital popped
I stopped the world
Male or female, it make no difference
I stop the world, world stop...
Carry on

[Verse 2: Nicki Minaj]
Kitty on fleek, pretty on fleek
Pretty gang always keep them niggas on geek
Ridin'' through Texas, feed him for his breakfast
Everytime I whip it, I be talkin'' so reckless
He said "Damn Nicki it''s tight," I say "Yeah nigga you right"
He said "Damn, bae, you so little, but you be really takin'' that pipe"
I said "Yes daddy I do, gimme brain like NYU"
I said "Teach me, nigga, teach me. All this learnin'' here is by you"

[Pre-Hook: Beyonc?]
(Moans) Uhn! I''m whippin'' that work, he diggin'' that work
I got it, 36 of that real
Panky full of that bounce baby
Come get you some of that bounce baby

[Hook: Beyonc?]
I''m feelin'' myself, I''m feelin'' myself, I''m feelin'' my
Feelin'' myself, I''m feelin'' myself, I''m feelin'' my, feelin'' my
Feelin'' myself, I''m feelin'' myself, I''m feelin'' my
Feelin'' myself, I''m feelin'' myself, I''m feelin'' my
 

[Bridge: Nicki & Beyonc?]
Cookin'' up that base, lookin'' like a kilo
He just wanna taste, biggin'' up my ego
(Ego, ego, ego, ego, ego, ego, ego, ego)
Ridin'' through Texas, ridin'' through Texas
Smoke it all off, talkin'' bout that high-grade
Baby hold up, I can kill your migraine
(Migraine, migraine, migraine, migraine, migraine, migraine, migraine, migraine)
Ridin'' through Texas, ridin'' through Texas

[Verse 3: Nicki Minaj]
Bitches ain''t got punchlines or flow
I have both and an empire also
Keep gettin'' gifts from Santa Claus at the North Pole
Today I''m icy, but I''m prayin'' for some more snow
Let that ho ho, let that ho know -- he in love with that coco
Why these bitches don''t never be learnin''?
You bitches will never get what I be earnin''
I''m still gettin'' plaques, from my records that''s urban
Ain''t gotta rely on top 40,I am a Rap legend
Just go ask the Kings of Rap, who is the Queen and things of that
Nature? Look at my finger, that is a glacier, hits like a laser
Drippin'' on that work, trippin'' off that perc
Flippin'' up my skirt and I be whippin'' all that work
Takin'' trips with all them ki''s, car keys got B''s
Stingin'' with the Queen Bey and we be whippin'' all of that D
Cause we dope girls we flawless, we the poster girls for all this
We run around with them ballers, only real niggas in my call list
I''m the big kahuna, go let them whores know
Just on this song alone, bitch is on her fourth flow
 

[Outro: Nicki Minaj]
Rrrrrrrrrr!
You like it don''t you? Snitches!
Young Money', 1)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (6, N'Only', N'[Verse 1: Nicki Minaj]
Yo, I never fucked Wayne, I never fucked Drake, on my life, man, fuck''s sake
If I did, I''d m?nage with ''em and let ''em eat my ass like a cupcake
My man full, he just ate, I don''t duck nobody but tape
Yeah, that was a setup for a punchline on duct tape
Worried ''bout if my butt fake, worry ''bout y''all niggas, us straight
Th-these girls are my sons, Jo-John & Kate Plus Eight
When I walk in, sit up straight, I don''t give a fuck if I was late
Dinner with my man on a G5 is my idea of a update
Hut-hut one, hut-hut two, big titties, big butt too
Fu-fuck with them real niggas who don''t tell niggas what they up to
Had to show bitches where the top is, ri-ring finger where the rock is
The-these hoes couldn''t test me, even if their name was Pop Quiz
Bad bitches who I fuck with, mama-mad bitches we don''t fuck with
I don''t fuck with them chickens, unless they last name is Cutlet
Let it soak in like seasoning
And tell them bitches blow me: Lance Stephenson

[Chorus: Chris Brown]
Raise every bottle and cup in the sky
Sparks in the air like the Fourth of July
Nothing but bad bitches in here tonight
Oh, if you lame and you know it, be quiet
Nothing but real niggas only, bad bitches only
Rich niggas only, independent bitches only
Boss niggas only, thick bitches only
I got my real niggas here by my side, only

[Verse 2: Drake]
Yeah, I never fucked Nicki ''cause she got a man
But when that''s over, then I''m first in line
And the other day in her Maybach
I thought, "Goddamn, this is the perfect time"
We had just come from that video
You know, LA traffic, how the city slow
She was sitting down on that big butt
But I was still staring at the titties though
Yeah, low-key or maybe high-key
I been peeped that you like me, you know?
Who the fuck you really wanna be with besides me?
I mean, it doesn?t take much for us to do this shit quietly
I mean, she say I?m obsessed with thick women and I agree
Yeah, that?s right, I like my girls BBW, yeah
Type that wanna suck you dry and then eat some lunch with you
Yeah, so thick that everybody else in the room is so uncomfortable
Ass on Houston Texas, but the face look just like Clair Huxtable
Oh, yeah, you the man in the city when the mayor fuck with you
The NBA players fuck with you
The bad-ass bitches doing makeup and hair fuck with you
Oh, that?s ''cause I believe in something, I stand for it
And Nicki if you ever tryna fuck just give me the heads-up
So I can plan for it
(Pinkprint, ayy)
 

[Chorus: Chris Brown]
Raise every bottle and cup in the sky
Sparks in the air like the Fourth of July
Nothing but bad bitches in here tonight
Oh, if you lame and you know it, be quiet
Nothing but real niggas only, bad bitches only
Rich niggas only, independent bitches only
Boss niggas only, thick bitches only
I got my real niggas here by my side, only

[Verse 3: Lil Wayne]
I never fucked Nick'' and that''s fucked up
If I did fuck, she''d be fucked up
Whoever is hittin'' ain''t hittin'' it right
''Cause she actin'' like she need dick in her life
That''s another story, I''m no story-teller
I piss greatness, like goldish yellow
All my goons so overzealous
I''m from Hollygrove, the holy Mecca
Calendar say I got money for days
I squirm and I shake, but I''m stuck in my ways
My girlfriend will beat a bitch up if she waved
They bet'' not fuck with her surfboard, surfboard
My eyes are so bright, I take cover for shade
Don''t have my money? Take mothers instead
You got the hiccups, you swallowed the truth
Then I make you burp, boy, treat beef like sirloin
I''m talkin'' ''bout runnin'' in houses with army guns
So think about your son and daughter rooms
Got two hoes with me, messed up, they got smaller guns
Ain''t thinkin'' ''bout your son and daughter rooms
This shit is crazy, my nigga, I been praising, my nigga
That money talk; I just rephrase it, my nigga
Blood gang, take the "B" off behavior, my nigga
For reals, if you mouth off, I blow your face off
I mean pop-pop-pop then I take off
Nigga, now you see me, nigga, now you don''t
Like Jamie Foxx acting like Ray Charles
16 in a clip, one in the chamber
17 Ward bully with 17 bullets
My story is how I went from "poor me"
To "please pour me a drink and celebrate with me"
 

[Chorus: Chris Brown]
Raise every bottle and cup in the sky
Sparks in the air like the Fourth of July
Nothing but bad bitches in here tonight
Oh, if you lame and you know it, be quiet
Nothing but real niggas only, bad bitches only
Rich niggas only, independent bitches only
Boss niggas only, thick bitches only
I got my real niggas here by my side, only', 1)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (7, N'Want Some More', N'(Metro Boomin want some more, nigga)

[Hook: Jeremih and Nicki Minaj]
Want some more, want some more
Even though a nigga been getting to it, want-want-want some more
(Still want some more) Want some more, want some more
Every time I end up getting it, want-want-want-want some more
When they start talking crazy, that''s when I know that they want some more
I know that I''m getting it, but fuck it, ''cause I want some more
When they start talking crazy that''s when I know that they want some more
Every time I end up getting it, want-want-want-want some more

[Verse 1: Nicki Minaj]
I''m in this bitch, I''m getting money
One minute they hate me, then they love me
Ain''t got nothing for me, these dudes is funny
That''s why I''m throwing shade, like it''s sunny
Who had Eminem on the first album?
Who had Kanye saying, "She a problem"?
Who the fuck came in the game, made her own column?Who made Lil Wayne give ''em five million?
Why the fuck I gotta say it, though? You niggas don''t know it yet?
Football touchdown on the Boeing jet
You my son, but I''m just not showing yet
Wrist icy, but it ain''t snowing yet
You can tell I''m the illest, cause my dividend is the biggest
Bitches ain''t sitting with us, all my niggas in Margielas
Is pigs flying? Is these bitches trying me?
They think it''s sweet? Oh, these bitches got diabetes
You seen that list? It was me, Baby, Jay-Z, and Diddy

[Hook: Jeremih and Nicki Minaj]
Want some more, want some more
Even though a nigga been getting to it, want-want-want some more
(Still want some more) Want some more, want some more
Every time I end up getting it, want-want-want-want some more
When they start talking crazy, that''s when I know that they want some more
I know that I''m getting it, but fuck it, ''cause I want some more
When they start talking crazy that''s when I know that they want some more
Every time I end up getting it, want-want-want-want some more

[Verse 2: Nicki Minaj]
Yo, yo, I''m in this bitch, I''m high-saditty
I popped a Perc and I said, "Thank you"
I''m popping tags everyday, it look like my b-day
These bitches suck, so I nickname these bitches "BJ"
They want that union, they want that D-Wade
I tell a ho, just be happy they getting leeway
My name Barbie, bitch - my name Barbie, bitch
Alexander made me Queen, I''m pulling up with the King, I''m late to my own party, bitch
Want it, I get it, I don''t be wanting for nothing
I mean, I do what I do and it must be counting for something
I don''t be jumping from topic to topic, stay in my pocket
I got your rent in my pocket, so can I pay you to pop it?
Cash Money, getting six albums,no bitch niggas on a bitch album
You niggas apologize when a nigga diss you? That''s a big problem
 

[Hook: Jeremih and Nicki Minaj]
Want some more, want some more
Even though a nigga been getting to it, want-want-want some more
(Still want some more) Want some more, want some more
Every time I end up getting it, want-want-want-want some more
When they start talking crazy, that''s when I know that they want some more
I know that I''m getting it, but fuck it, ''cause I want some more
When they start talking crazy that''s when I know that they want some more
Every time I end up getting it, want-want-want-want some more', 1)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (8, N'Four Door Aventador', N'[Intro]
Plenty more for you, boy
We in the funky four door, no floor

[Verse 1]
Hit me on the celly, watching Belly
God''s son, I can see they study Makaveli
Peanut butter Benz, got them jelly at the deli
If you feeling like a ninja, I got a machete
Hell yeah, them girls bad, but I''m fucking heavy
I''mma fuck around and have them looking like spaghetti
I say some shit, he be like, "Yo, you so legendary"
But he can tell just by my face he ain''t getting any

[Hook]
Plenty more for you, boy
We in the funky four door, no floor
He was serving that raw, oh boy
She was making that noise, oh boy
Plenty more for you, boy
We in the funky four door, no floor
He was serving that raw, oh boy
She was making that noise, oh boy

[Verse 2]
Meet me at the Rucker, take the Bruckner
It''s just me and Young Yucka, taking suckers
For they money and they whips, putting kitten on lips
Dividing them dividends, get the money and dip
Keys to the nigga''s safe, put it under my tits
He got ki''s of that raw, it could fit in the six
Got a UPS connect, so we good on them trips
Automatic bottle service so we good in them VIPs, nigga

[Hook]
Plenty more for you, boy
We in the funky four door, no floor
He was serving that raw, oh boy
She was making that noise, oh boy
Plenty more for you, boy
We in the funky four door, no floor
He was serving that raw, oh boy
She was making that noise, oh boy

[Verse 3]
These civilians, what up nigga? Excuse my millions
I''m in the V like a widow''s peak
It''s just me and my Rolls Royce pillow seats
Why they staring at me? I brung MacLaren with me
Yo, matter of fact, I think I''mma bring Donna Karan with me
And you my son, I don''t know, it''s just the parent in me
I am the best, I am the queen, it''s so apparent in me
I''m in Hollywood with Shia Labeouf (shy-and-the-buff)
Most of you rappers ain''t eating, that diet is rough
You want some hot shit? Send that wire to us
I make them change their name to Diddy, retire the puff
I''m getting acting money
You niggas is Kevin Hart, y''all be acting funny
I''mma a keep a linebacker, tell ''em tackle for me
Yo, you seen my last pic, go double-tap that for me
Cock back, Red octagon, stop that
 

[Hook]
Plenty more for you, boy
We in the funky four door, no floor
He was serving that raw, oh boy
She was making that noise, oh boy
Plenty more for you, boy
We in the funky four door, no floor
He was serving that raw, oh boy
She was making that noise, oh boy', 1)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (9, N'Favorite', N'[Intro: Jeremih]
I don''t want no drama
I just wanna be your diamond, babe
Guaranteed to be a problem
Every time I get around you, babe
I just want you to need me
You might really wanna try me, babe
All I know I want a rider
All I know I want a rider, babe
You know that you need a rider
You know that you need a rider, babe
You know that you need a rider
You know that you need a rider, babe, ah yeah...

[Verse 1: Nicki Minaj]
Yo, I just wanna be ya rider, you should pull up in that Spyder
You should let me hit the mic, and I ain''t talking about the fighter
Get it lit without a lighter, let''s pull an all-nighter
Tell me-tell me what you need, got the weed, I''m a bad little bitch and I never indict her
Get locked, I''mma write ya, you on the road? I''mma Skype ya
I don''t wanna hype ya, but you a lucky nigga if my mean ass like ya
You ain''t never have a bitch understand you, most of them wanna use you when they ran through
I just wanna be somebody that can add to, your wife, be a friend, be a teacher and a fan too
I just wanna listen, when you leave I say "damn, I fucking miss him"
I just wanna be your vixen, give you something real wet to put your lips in
I wanna be the only one that can check you, and still respect you
Cause it''s you I would change for, you always make sure

[Hook: Jeremih]
I just wanna be your favorite
I just wanna be your favorite
I just wanna be your favorite
I just wanna be your favorite
Won''t you let me be your favorite?

[Verse 2: Nicki Minaj]
Ayo, I just wanna be your first go to, do you like a real one supposed to, livin'' bi-coastal
Scoop me in the truck, late night on a humble
Meet me out in Queens, where the city want a sundown
You could put your gun down, you could have fun now
You could tell you niggas that you won now, one down
Run through the clubs with the baddest, bitches is the maddest, nothin'' else matters
And they say Birkin where the bag is, got a lot of bags, but we never got baggage
Winter Wonderland on my hands, call me Alice, balance
I''mma have you coming in my palace
London, Tokyo, Paris, let me update your status
Cause it''s you I would change for, you always make sure

[Hook: Jeremih]
I just wanna be your favorite
I just wanna be your favorite
I just wanna be your favorite
I just wanna be your favorite
Won''t you let me be your favorite?
 

[Outro: Nicki Minaj (Jeremih)]
You should already know
You should already know
You should already know
You should already know
(You know that you need a rider
You know that you need a rider, babe
You know that you need a rider
You know that you need a rider, babe, ayy
I just wanna be your favorite
I just wanna be your favorite)
You should already know, you should already know
(I just wanna be your favorite)
You should already know, you should already know
(Won''t you let me be your favorite?
Won''t you let me be your favorite?)', 1)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (10, N'Buy A Heart', N'[Produced by Arch The Boss & Yung Berg]

[Intro (Throughout): Alicia Keys]
You should say it right now

[Verse 1: Meek Mill]
Anybody wanna buy a heart?
Anybody wanna buy a heart?
Anybody wanna buy a heart?
Cause I don''t use the shit anyway
But okay, I guess it''s my fault
Westside shorty, with an eastside nigga
They say it''s levels to this shit, I''m a G5 nigga
And every city I be in, you know she fly with us
It''s like Hov got Bey, it''s like Bey got Jigga
Really though let me take y''all back
''09, double R drop top with the top down
Pulled up, double parked, hopped out, tried to spit my game
It didn''t work, got shot down
But I can tell by the bag, by the wrist and the ring on that
Somebody had it on lockdown
The moral of the story not to speak on that
She on the team, shorty mine now
And we don''t ever ever ever make love
And we don''t ever ever ever say "love"
Unless I''m all up in it, she tellin'' me she love that D on that, I don''t ever say uh
Bad bitch, ain''t nothin'' made up
Anybody, anybody, anybody wanna buy
The heart from a real one from Philly reppin'' that north side?

[Hook: Meek Mill & Nicki Minaj]
Anybody? Anybody?
Anybody, anybody, anybody wanna buy a heart?
Anybody, anybody, anybody wanna buy love?
Anybody, anybody, anybody wanna buy a heart?
Anybody, anybody, anybody wanna buy trust
Anybody, anybody, anybody wanna buy a heart?
Anybody, anybody, anybody wanna buy love?
Anybody, anybody, anybody wanna buy?
Anybody, anybody, anybody wanna buy love?

[Verse 2: Nicki Minaj]
Rihmeek, I''mma have to tell the truth if I speak
Unless you want to play, you ain''t say this the other day
You said you was in love, and I still didn''t budge
Cause I already seen how you be going in when you be in them clubs
(I''m not even sure if this is right but, it feels good)
I could tell you was analyzing me, I could tell you was criticizing me
I could tell you was fantasizing that you would come slide in me and confide in me
He could tell that I was wifey material
He was liking my style in my videos
I wasn''t looking for love I was looking for a buzz
So at times I would lie and say I''m busy, yo
Cause it''s too much, and it''s too clutch
Who wants rumors of the two of us
But when you''re away, I can''t get you out of my mind
But what if I''m not the one and you''re wasting your time?
But you waited

[Hook: Meek Mill & Nicki Minaj]
Anybody? Anybody?
Anybody, anybody, anybody wanna buy a heart?
Anybody, anybody, anybody wanna buy love?
Anybody, anybody, anybody wanna buy a heart?
Anybody, anybody, anybody wanna buy trust
Anybody, anybody, anybody wanna buy a heart?
Anybody, anybody, anybody wanna buy love?
Anybody, anybody, anybody wanna buy?
Anybody, anybody, anybody wanna buy love?

[Outro: Nicki Minaj]
Its a heart for sale, who''s buying?
I don''t care who''s crying
Its trust for sale, who''s buying?
I don''t care who''s lying', 1)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (11, N'Trini Dem Girls', N'[Hook: Lunchmoney Lewis]
Brixton girls, dem a pat the pum pum
Dem a wine up dem waist, dem a pat the pum pum
Queens dem girls, dem a pat the pum pum
Dem a wine up dem waist, dem a pat the pum pum
Trini dem girls, dem a pat the pum pum
Dem a wine up dem waist, dem a pat the pum pum
Jamaica dem girls, dem a pat the pum pum
Dem a wine up dem waist, dem a pat the pum pum

[Verse 1: Nicki MInaj]
Yo, he in love with a ghetto girl
He said he want a piece like Metta World
Pat, pat on the kitty cat
He don''t mess with them...regulars
He tryna kick it like a ninja
He tryna stick it like syringes
He don''t ever play the benches
So I''ma let him touch it if he playin'' with some inches

[Pre-Hook: Nicki Minaj]
I know that you want it
I see that you watching
You love when I wine it
You know that I''m sexy
I hope that you ready
To come here and get it
Where di hot gyal dem

[Hook: Lunchmoney Lewis]
Brixton girls, dem a pat the pum pum
Dem a wine up dem waist, dem a pat the pum pum
Queens dem girls, dem a pat the pum pum
Dem a wine up dem waist, dem a pat the pum pum
Trini dem girls, dem a pat the pum pum
Dem a wine up dem waist, dem a pat the pum pum
Jamaica dem girls, dem a pat the pum pum
Dem a wine up dem waist, dem a pat the pum pum

[Verse 2: Nicki Minaj]
Put it in his face like a cop badge
He wanna pound it like a hashtag
He gonna have to get the wash rag
If he shoot it up, I''m gonna bust back
Them island girls is the baddest (mm)
American girls run the planet (mm)
South African, European, Asian, Australian
And my Canadian Girls

[Pre-Hook: Nicki Minaj]
I know that you want it
I see that you watching
You love when I wine it
You know that I''m sexy
I hope that you ready
To come here and get it
Where di hot gyal dem
 

[Hook: Lunchmoney Lewis]
Brixton girls, dem a pat the pum pum
Dem a wine up dem waist, dem a pat the pum pum
Queens dem girls, dem a pat the pum pum
Dem a wine up dem waist, dem a pat the pum pum
Trini dem girls, dem a pat the pum pum
Dem a wine up dem waist, dem a pat the pum pum
Jamaica dem girls, dem a pat the pum pum
Dem a wine up dem waist, dem a pat the pum pum

[Bridge: Nicki Minaj]
All the bad boys try to push up on me (Hey)
He want a bad girl to come and spend his money (Hey)
He say it taste good, just like honey (Hey)
He in love with a girl from the islands
And how the miniskirt flow

[Pre-Hook: Nicki Minaj]
I know that you want it
I see that you watching
You love when I wine it
You know that I''m sexy
I hope that you ready
To come here and get it
Where di hot gyal dem
 

[Hook: Lunchmoney Lewis]
Brixton girls, dem a pat the pum pum
Dem a wine up dem waist, dem a pat the pum pum
Queens dem girls, dem a pat the pum pum
Dem a wine up dem waist, dem a pat the pum pum
Trini dem girls, dem a pat the pum pum
Dem a wine up dem waist, dem a pat the pum pum
Jamaica dem girls, dem a pat the pum pum
Dem a wine up dem waist, dem a pat the pum pum', 1)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (12, N'Anaconda', N'[Produced by Da Internz and Polow Da Don]

[Intro]
My anaconda don''t, my anaconda don''t
My anaconda don''t want none unless you got buns, hun

[Verse 1]
Boy toy named Troy used to live in Detroit
Big dope dealer money, he was gettin'' some coins
Was in shootouts with the law, but he live in a palace
Bo-bought me Alexander McQueen, he was keeping me stylish
Now that''s real, real, real
Gun in my purse, bitch, I came dressed to kill
Who wanna go first? I had them pushing daffodils
I''m high as hell, I only took a half a pill
I''m on some dumb shit, by the way, what he say?
He can tell I ain''t missing no meals
Come through and fuck him in my automobile
Let him eat it with his grills and he tellin'' me to chill
And he telling me it''s real, that he love my sex appeal
Say he don''t like ''em boney, he want something he can grab
So I pulled up in the Jag, and I hit him with the jab like
Dun-d-d-dun-dun-d-d-dun-dun

[Bridge 1]
My anaconda don''t, my anaconda don''t
My anaconda don''t want none unless you got buns, hun

[Hook]
Oh my gosh, look at her butt
Oh my gosh, look at her butt (I-ohhaha)
Oh my gosh, look at her butt
(Look at her butt)
Look at, look at, look at
Look, at her butt

[Verse 2]
Thi-this dude named Michael used to ride motorcycles
Di-dick bigger than a tower, I ain''t talking about Eiffel''s
Real country-ass nigga, let me play with his rifle
Pussy put his ass to sleep, now he calling me NyQuil
Now that bang, bang, bang
I let him hit it cause he slang cocaine
He toss my salad like his name Romaine
And when we done, I make him buy me Balmain
I''m on some dumb shit, by the way, what he say?
He can tell I ain''t missing no meals
Come through and fuck him in my automobile
Let him eat it with his grills, and he telling me to chill
And he telling me it''s real, that he love my sex appeal
He say he don''t like ''em boney, he want something he can grab
So I pulled up in the Jag, Mayweather with the jab like
Dun-d-d-dun-dun-d-d-dun-dun...
 

[Bridge 1]
My anaconda don''t, my anaconda don''t
My anaconda don''t want none unless you got buns, hun

[Hook]
Oh my gosh, look at her butt
Oh my gosh, look at her butt (I-ohhaha)
Oh my gosh, look at her butt
(Look at her butt)
Look at, look at, look at
Look, at her butt

[Bridge 2]
Little in the middle but she got much back
Little in the middle but she got much back
Little in the middle but she got much back
(Oh my God, look at her butt)

[Bridge 1]
My anaconda don''t, my anaconda don''t
My anaconda don''t want none unless you got buns, hun
(Do-don''t) My anaconda don''t (don''t)
(Do-don''t) want none unless you got buns, hun

[Hook]
Oh my gosh, look at her butt
Oh my gosh, look at her butt
Oh my gosh, look at her butt
(Look at her butt)
Look at, look at, look at
Look, at her butt
 

[Outro]
Yeah, he love this fat ass, hahahahahahahaha!
Yeah! This one is for my bitches with a fat ass in the fucking club
I said, where my fat ass big bitches in the club?
Fuck the skinny bitches
Fuck the skinny bitches in the club
I wanna see all the big fat-ass bitches in the muthafuckin'' club
Fuck you if you skinny bitches, what?! Kyuh
Hahahaha RRRRRR (Kyuh)
Yeah, I got a big fat ass (ass, ass, ass, ass) (Kyuh)
Come on!

Hey
Hey
Hey', 1)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (13, N'The Night Is Still Young', N'[Verse 1]
Yo, ayo tonight is the night that I''ma get twisted
Myx Moscato and vodka, I''ma mix it
Roll that spaceship, we about to get lifted
Live in the present, that gift is for the gifted
This what you came, this what you came for
You get what you buy, this what you paid for
So make sure the stars is what you aim for
Make mistakes though

[Pre-Chorus]
I never worry, life is a journey
I just wanna enjoy the ride
What is the hurry? It''s pretty early
It''s ok, we''ll take our time

[Chorus]
The night is still young
The night is still young
The night is still young
And so are we
The night is still young
(How dare we sit quietly)
The night is still young
(And watch the world pass us by)
The night is still young
(How dare we sit quietly)
And so are we

[Verse 2]
Ayo, drinks on you, or the drinks is on me
We ain''t going nowhere like tanks is on E
We still getting money, what bank it''s gon'' be?
If he sexy, he planking on me
So when them big boys want all of that (Ay!)
Tell the bartender, say my order back (Ay!)
It''s bottle service, he ordered that (Ay!)
Might let him take it home and slaughter that
He got friends for all of my friends
They ain''t leaving ''till we say when
And we gon'' hangover the next day
But we will remember this day
So drop the pop and get low
Or we can drop the top and just cruise
We fresh to death, down to the shoes
My only motto in life is don''t lose

[Pre-Chorus]
I never worry, life is a journey
I just wanna enjoy the ride
What is the hurry? It''s pretty early
It''s ok, we''ll take our time

[Chorus]
The night is still young
The night is still young
The night is still young
And so are we
The night is still young
(How dare we sit quietly)
The night is still young
(And watch the world pass us by)
The night is still young
(How dare we sit quietly)
And so are we
 

[Bridge]
We''re just getting started, yeah, yeah
We''re just getting started, yeah, yeah
Can''t you see the night''s still early
And we gon'' get it wild and crazy

[Bridge]
We''re just getting started, yeah, yeah
We''re just getting started, yeah, yeah
Can''t you see the night''s still early
And we gon'' get it wild and crazy

[Chorus]
The night is still young
The night is still young
The night is still young
And so are we
The night is still young
(How dare we sit quietly)
The night is still young
(And watch the world pass us by)
The night is still young
(How dare we sit quietly)
And so are we

[Outro]
How dare we sit quietly
And watch the world pass us by
How dare we sit quietly
And watch the world pass us by', 1)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (14, N'Pills N Potions', N'[Pre-Hook]
Pills n'' potions
We''re overdosin''
I''m angry but I still love you
Pills n potions
We?re overdosin''
Can''t stand it but I still love you

[Hook]
I still love, I still love, I still love, I still love, I still lo-o-ove
I still love, I still love, I still love, I still love, I still love
I still love, I still love, I still love, I still love, I still lo-o-ove
I still love, I still love, I still love, I still love, I still love

[Verse 1]
Ayo, they could never make me hate you
Even though what you was doin? wasn?t tasteful
Even though you out here lookin? so ungrateful
I''mma keep it movin? be classy and graceful
I told ''em it?s no friends in the game, you ain?t learned that yet
All the bridges you came over, don?t burn that yet
Niggas want respect, but niggas ain''t earned that yet
Self-righteous and entitled but they swearin'' on the Bible, that
They love you, when really they no different from all your rivals
But I still don?t wish death on ?em, I just reflect on ''em

[Pre-Hook]
Pills n'' potions
We''re overdosin''
I''m angry but I still love you
Pills n potions
We?re overdosin''
Can''t stand it but I still love you

[Hook]
I still love, I still love, I still love, I still love, I still lo-o-ove
I still love, I still love, I still love, I still love, I still love
I still love, I still love, I still love, I still love, I still lo-o-ove
I still love, I still love, I still love, I still love, I still love

[Verse 2]
Yo, people will love you and support you when it?s beneficial
I''mma forgive, I won''t forget, but I''mma dead the issue
Soon as you out a nigga?s life is when they start to miss you
They see you doin'' good now, it?s kinda hard to diss you
Niggas be sick when they remember all the bad they wished you
Niggas be mad when they can''t come and live lavish with you
But I sped off in a Benzy, I see the envy, when I?m causing a frenzy
So I pop pills for ''em, cop cribs in the hills, on ?em

[Pre-Hook]
Pills n'' potions
We''re overdosin''
I''m angry but I still love you
Pills n potions
We?re overdosin''
Can''t stand it but I still love you
 

[Hook]
I still love, I still love, I still love, I still love, I still lo-o-ove
I still love, I still love, I still love, I still love, I still love
I still love, I still love, I still love, I still love, I still lo-o-ove
I still love, I still love, I still love, I still love, I still love

[Bridge]
I get high off your memory
I get high off your memory
I get high off your memory
In due time we?ll be fine
In due time

[Hook]
I still love, I still love, I still love, I still love, I still lo-o-ove
I still love, I still love, I still love, I still love, I still love
I still love, I still love, I still love, I still love, I still lo-o-ove
I still love, I still love, I still love, I still love, I still love', 1)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (15, N'Bed Of Lies', N'[Hook: Skylar Grey]
Do you ever think of me when you lie?
Lie down in your bed, your bed of lies
And I knew better than to look in your eyes
They only pretend you would be mine
And oh, how you made me believe
You had me caught in every web that you weaved
But do you ever think of me when you lie?
Lie down in your bed, your bed of lies

[Verse 1: Nicki Minaj]
You could never make eye contact
Everything you got was based off of my contacts
You a fraud but I''mma remain icon-stat
Balenciagas on my boots with a python strap
You was caught up in the rush and you was caught up in the thrill of it
You was with me way before I hit a quarter mil'' in it
Put you in the crib and you ain''t never pay a bill in it
I was killin'' it, now you got me poppin'' pills in it
I told Baby hit you, I said this nigga buggin''
Cause I was doing it for us, I told ''em fuck the public
Couldn''t believe that I was home alone, contemplating
Overdosin'', no more coastin'', no more toastin'' over oceans
They say you don''t know what you got ''til it''s gone
They say that your darkest hour come before your dawn
But there was something that I should''ve asked all along
I''mma ask on the song

[Hook: Skylar Grey]
Do you ever think of me when you lie?
Lie down in your bed, your bed of lies
And I knew better than to look in your eyes
They only pretend you would be mine
And oh, how you made me believe
You had me caught in every web that you weaved
But do you ever think of me when you lie?
Lie down in your bed, your bed of lies

[Verse 2: Nicki Minaj]
I just figured if you saw me, if you looked in my eyes
You''d remember our connection and be freed from the lies
I just figured I was something that you couldn''t replace
But there was just a blank stare and I couldn''t relate
I just couldn''t understand and I couldn''t defend
What we had, what we shared, and I couldn''t pretend
When the tears roll down, it''s like you ain''t even notice ''em
If you had a heart, I was hoping that you would show it some
What the fuck you really telling me? What you telling me?
I could tell you lying, get the fuck out, don''t yell at me
I ain''t mean to cut you, I ain''t wanna catch a felony
This ain''t How To Be A Player, you ain''t Bill Bellamy
They say you don''t know what you got ''til it''s gone
They say that your darkest hour come before your dawn
But there was something that I should''ve asked, all along
I''mma ask on the song
 

[Bridge: Skylar Grey]
So does she know I''ve been in that bed before?
A thousand count, and not a single thread of truth
If I was just another girl
Then I''m ashamed to say that I''m not over you
There''s one thing I need to know
So, call me when you''re not so busy just thinking of yourself

[Hook: Skylar Grey]
Do you ever think of me when you lie?
Lie down in your bed, your bed of lies
And I knew better than to look in your eyes
They only pretend you would be mine
And oh, how you made me believe
You had me caught in every web that you weaved
But do you ever think of me when you lie?
Lie down in your bed, your bed of lies', 1)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (16, N'Grand Piano', N'[Verse 1]
Am I just a fool?
Blind and stupid for loving you
Am I just a silly girl?
So young and naive to think you were

[Pre-Chorus 1]
The one who had came to take claim of this heart
Cold-hearted, shame you''ll remain just afraid in the dark

[Chorus]
(And now the people)
The people are talking, the people are saying
That you have been playing my heart like a grand piano
The people are talking, the people are saying
That you have been playing my heart like a grand piano
So play on, play on, play on
Play on, play on, play on
Play on, play on, play on
Play on, play on

[Verse 2]
Am I queen of fools?
Wrapped up in lies and foolish jewels
What do I see in you?
Maybe I''m addicted to all the things you do

[Pre-Chorus 2]
Cause I keep thinking you were
The one who had came to take claim of this heart
Cold-hearted, shame you''ll remain just a frame in the dark

[Chorus + Violin Solo]
And now the people
The people are talking, the people are saying
That you have been playing my heart like a grand piano
The people are talking, the people are saying
That you have been playing my heart like a grand piano
So play on, play on, play on
Play on, play on, play on
Play on, play on, play on
Play on, play on', 1)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (17, N'Big Daddy', N'[Intro: Meek Mill]
You hear that right there?
That sound like, but that 300 thousand nigga
I''m triple OG in my hood
These hoes call me big daddy

[Hook: Meek Mill]
Your bitch call me big daddy
Tell that bitch that I''m big daddy
When I hit the lot I don''t get the little bitch
Nigga I go and get the big daddy
Pick a bitch up in the big daddy
Big face Rollie that''s a big daddy
Got your bitch calling me big daddy
When I pull up all the hoes like big daddy
Nigga I''m big daddy

[Verse 1: Meek Mill]
Standin'' on the corner in some shit that look like I payed like a million for
Blowin'' the money I heard that they askin'' around town what he really worth
Most of these niggas be really broke
I went the Hardaway boy had a penny first
Now these bitches gon'' get this work
I tell her keep on them heels and that mini skirt
She Google my net worth, lookin'' like "what is his neck worth?"
My shooters, they shoot at your head, like the rim just to see if the net work
I land in Miami then fly out to Cali with some of my best work
You niggas so lame that my bitches won''t fuck unless you cut a check first

[Hook: Meek Mill]
Your bitch call me big daddy
Tell that bitch that I''m big daddy
When I hit the lot I don''t get the little bitch
Nigga I go and get the big daddy
Pick a bitch up in the big daddy
Big face Rollie that''s a big daddy
Got your bitch calling me big daddy
When I pull up all the hoes like big daddy
Nigga I''m big daddy

[Verse 2: Nicki Minaj]
Pulled up in something that look like a million nigga put me up on
Ain''t gotta sell it, but he say the pussy a drug that he re-up on
Spur of the moment, I ball like Gin?bili, you bitches get D''ed up on
You mad at me? Go get mad at your nigga ''fore I put my sneakers on
He copped me this wrist game, now it''s just us at the Knicks game
I might have to take him on tour just to fuck in Australia, Brisbane
Your time is ticking, you bitches will be around shorter than Vine vids
You watch your mouth or my niggas will shoot up the club like what Shyne did

[Hook: Meek Mill]
Your bitch call me big daddy
Tell that bitch that I''m big daddy
When I hit the lot I don''t get the little bitch
Nigga I go and get the big daddy
Pick a bitch up in the big daddy
Big face Rollie that''s a big daddy
Got your bitch calling me big daddy
When I pull up all the hoes like big daddy
Nigga I''m big daddy
 

[Verse 3: Nicki Minaj]
Bitches ain''t stupid, you bitches ain''t stupid
You bitches ain''t stupid, is you?
Front like she tough but that bitch keep on crying
Get this bitch a tissue
For what it''s worth when I took him I could tell he would never miss you
I ain''t even wanna diss you, but tell me what is this bitch issue?

[Bridge: Nicki Minaj]
Still on top, pretty bitch gang
Pussy still tight, pistol still bang
Yo nigga call me big mama
Let him eat the pussy then I dip on him

[Hook: Meek Mill]
Your bitch call me big daddy
Tell that bitch that I''m big daddy
When I hit the lot I don''t get the little bitch
Nigga I go and get the big daddy
Pick a bitch up in the big daddy
Big face Rollie that''s a big daddy
Got your bitch calling me big daddy
When I pull up all the hoes like big daddy
Nigga I''m big daddy', 1)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (18, N'Shanghai', N'[Hook: Nicki Minaj & Yung Berg]
On the real nigga, I?m a real nigga
I run around with them real niggas
Got real sons, I need a real sitter
When I leave niggas, they get real bitter
On the real nigga, I?m a real nigga
I run around with them real niggas
Roll up on ya, r-r-roll up on ya
Roll up on ya, r-r-r-r-roll up on ya

[Verse 1: Nicki Minaj]
Eight mil on that new thing, tied up like my shoe string
Ain?t fucking with you bitch niggas, and that?s real rap but I do sing
Make room when I come by, ain?t speaking, I?m dumb high
Just heard niggas got jokes, it?s a matter of time before one die
?Cause them dudes out and them tools out
All sixes like school?s out
Niggas know if they talk slick that I?m winter fresh
They?ll get chewed out
?Cause them dudes out and them tools out
All sixes like school?s out
Niggas know if they talk slick that I?m winter fresh
They?ll get chewed out
This shit ain?t regular rich, so they end up in a ditch
I?m not a regular bitch
So when niggas see me, they jump on my dick
He not a regular shooter, so when you see me, salute her
Ain?t got a knife in my hand
But I?m choppin? it up with some niggas from Cuba

[Hook: Nicki Minaj & Yung Berg]
On the real nigga, I?m a real nigga
I run around with them real niggas
Got real sons, I need a real sitter
When I leave niggas, they get real bitter
On the real nigga, I?m a real nigga
I run around with them real niggas
Roll up on ya, r-r-roll up on ya
Roll up on ya, r-r-r-r-roll up on ya

[Verse 2: Nicki Minaj]
Ask Jay who he married, eighty thousand in Paris
Stadiums with Queen B and that selfie got ''em aggy
These bitches is light-weight, I?m always at fight-weight
Wrist game is on ice skate, cause we move work through that Tri-State
?Cause them boys out, and them toys out, still banging that noise out
You could get it in the winter-time, or that May-weather, like Floyd?s out
?Cause them boys out, and them toys out, still banging that noise out
You could get it in the winter-time, or that May-weather, like Floyd?s out
All of these bitches in pocket, I?m ?bout to make a deposit
Tell ?em to go ?head and gossip, as long as your house is the size of my closet
Anybody I call, they picks up, even if they was gettin? they dick sucked
These niggas don?t make a mix-up, tell ?em niggas go step they bricks up
Tell ?em niggas go step they bricks up
(Tell ?em niggas go step they bricks up)
 

[Hook: Nicki Minaj & Yung Berg]
On the real nigga, I?m a real nigga
I run around with them real niggas
Got real sons, I need a real sitter
When I leave niggas, they get real bitter
On the real nigga, I?m a real nigga
I run around with them real niggas
Roll up on ya, r-r-roll up on ya
Roll up on ya, r-r-r-r-roll up on ya

[Outro: Nicki Minaj]
When we bang, bye
Pop pills, now we Shanghai
When we bang, bye
Pop pills, now we Shanghai
When we bang, bye
Pop pills, now we Shanghai
Shanghai, Shanghai, Shanghai
Shanghai, Shanghai, Shanghai
Shanghai, Shanghai, Shanghai
Shanghai, Shanghai, Shanghai
When we bang, bye
Pop pills, now we Shanghai, yeah
When we bang, bye
Pop pills, now we Shanghai, yeah', 1)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (19, N'Win Again', N'[Verse 1]
I came out lookin'' to party, and now I''m ownin'' that building
You bitches can''t get my spot until I start raisin'' some children
These bitches all in they feelings, can''t fuck with Nicki, they know it
They know that Nicki a poet, pop me a bottle of Mo?t
They said I couldn''t, but I did it though
Tell ''em I still got that hourglass figure though
Can''t stop me, don''t watch me
You better just watch your nigga, ho, I''m in that big boy
I am in beast mode, respect the G-code
Bitches ain''t got drive, these bitches will get repo''d
I am a monster, this is ambition
This the type of car, that you keep a bad bitch in
Not that I don''t got good vision, but I don''t see competition
They want me to come and help them, but I am not a magician
I''m on them fo-fours, I''m tippin'', you better move out my way
I am not here to play, Pinkprint can''t be delayed

[Chorus]
Cause I win again, cause I win again
And I win again, and I win again
And I win again, and I win again
And I win again, yeah I win again
Can''t tell me nothin'' about it, your opinion is invalid
Go against me, then you made a mistake

[Verse 2]
Yo, yo, cause I came out
''09, when promoters brought Wayne out
Lewinsky, like I couldn''t get the stain out
I been bad, like cuttin'' school and stayin'' out
I been hotter than, vacationin'' and layin'' out
I sat back and watched how it was playin'' out
They diss me, but runnin'' and took the same route
Uhn, but no, they not Nicki
Wrist on ice and yes my wrist bricky
If I leave, the game will miss Nicki
Not a website but get money, this is fifty
Pop bottles with my bitches and get pissy
This shit ain''t got no more integrity
Don''t write they raps, and plus they flow shitty
Don''t make me expose you bitch, I''m too busy
Hopped on the Bridge-y, New York City
Nicki still the queen, niggas all ready
Hopped on the Bridge-y, New York City
Nicki still the queen, niggas all ready
Soon as I came in, I told them that I would become the greatest
Muhammad Ali of these bitches, and that can''t be debated
I never chicken''d out, skated, I know they mad that I made
All this money I made, all my bitches is laced

[Chorus]
Cause I win again, cause I win again
And I win again, and I win again
And I win again, and I win again
And I win again, yeah I win again
Can''t tell me nothin'' about it, your opinion is invalid
Go against me, then you made a mistake
 

[Bridge]
So good, so real, so good, yeah
I''ma win again
I''ma win again, yeah
I''m Meryl Streep to all these bitches, they can''t do what I do
Sometimes I just look in the mirror and I be like, "Why you?"
Yeah, I know that they mad
But I''ma shit on my critics some more

[Outro]
I am, I am
I am still gonna do, what he sent me to do
That''s kill, kill, everything in, everything in my way
That''s kill, kill, everything in, everything in my way
That''s kill, kill, everything in, everything in my way
They know I am a champion
All champions do
It''s all champions do', 1)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (20, N'Truffle Butter', N'[Verse 1: Drake]
Uh, thinkin'' out loud?
I must have a quarter million on me right now
Hard to make a song ''bout somethin'' other than the money
Two things I''m about is talkin'' blunt and staying blunted
Pretty women, are you here?
Are you here right now, huh?
We should all disappear right now
Look, you''re gettin'' all your friends
And you''re gettin'' in the car
And you''re comin'' to the house
Are we clear right now, huh?
You see the fleet of all the new things
Cop cars with the loose change
All white like I move things
Niggas see me rollin'' and they mood change
Like a muhfucka?
New flow, I got a dozen of ''em
I don''t trust you, you a undercover
I could probably make some step-sisters fuck each other
Whoop! ? Talkin'' filets with the truffle butter
Fresh sheets and towels, man she gotta love it
Yeah, they all get what they desire from it
What, tell them niggas we ain''t hidin'' from it

[Verse 2: Nicki Minaj]
Yo, thinkin'' out loud?
I must have about a milli on me right now
And I ain''t talkin'' about that Lil Wayne record
I''m still the highest sellin'' female rapper, for the record
Man, this a 65 million single sold
I ain''t gotta compete with a single soul
I''m good with the ballpoint game, finger roll
Ask me how to do it, I don''t tell a single soul
Pretty women, wassup? Is you here right now?
You a stand-up or is you in your chair right now?
Uhh, do you hear me? I can''t let a wack nigga get near me
I might kiss the baddest bitch if you dare me
I ain''t never need a man to take care of me
Yo, I''m in that big boy, bitches can''t rent this
I floss everyday, but I ain''t a dentist
Your whole style and approach, I invented
And I ain''t takin'' that back, cause I meant it

[Verse 3: Lil Wayne]
Uh, thinkin'' out loud?
I could be broke and keep a million dollar smile
LOL to the bank, check in my account
Bank teller flirtin'' after checkin'' my account
Pretty ladies, are you here?
Truffle butter on your pussy
Cuddle buddies on the low
You ain''t gotta tell your friend
That I eat it in the morning
Cause she gonna say "I know"
Can I hit it in the bathroom?
Put your hands on the toilet
I''ll put one leg on the tub
Girl, this my new dance move
I just don''t know what to call it
But bitch you dancing with the stars
I ain''t nothin'' like your last dude
What''s his name? ? Not important
I brought some cocaine if you snortin''
She became a vacuum
Put it on my dick like carpet
Suck the white off white chocolate
I''m so heartless, thoughtless
Lawless, and flawless
Smallest, regardless
Largest in charge
And born in New Orleans
Get killed for Jordans
Skateboard, I''m gnarly
Drake, Tunechi, and Barbie
You know!', 1)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (21, N'Mona Lisa', N'[Produced by Detail]

[Intro]
You make me, you make me, ooh
You make me

[Hook]
If you look at my
If you look at my love
You''ll see
You''ll see, I ain''t worried about a he
See
I ain''t worried about a he
I ain''t worried about a he
I ain''t never take a knee, cause he ain''t worry bout me
If you look at my
If you look at my love
I ain''t worried about a he
And he ain''t worried bout me
Live of my love
Cause he ain''t worried about me
Live of my love, me
I ain''t never taking niggas, ain''t worry bout me

[Verse]
You make me feel good
You don''t make me feel super
You don''t make me feel super
Look at me
Me
He ain''t worried about me
And I don''t pick up dead leaves
He ain''t worried about me
See
If it''s you and me then it''s you and me
Baby we don''t worry about keys
You make me
Make me feel stuck
You don''t give two fucks
You ain''t worried bout me, you just tryna bust nuts
Times up
All that bullshit lines up
All that talkin ''bout what you gon'' do
Boy, go and get ya mind up

[Hook]
If you look at my
If you look at my love
You''ll see
You''ll see, I ain''t worried about a he
See
I ain''t worried about a he
I ain''t worried about a he
I ain''t never take a knee, cause he ain''t worry bout me
If you look at my
If you look at my love
I ain''t worried about a he
And he ain''t worried bout me
Live of my love
Cause he ain''t worried about me
Live of my love, me
I ain''t never taking niggas, ain''t worry bout me

[Bridge]
I don''t wanna fight but, I''ll fuck around and shoot you
I don''t wanna fight but, you gave me no more trust
I will fuck around and end your life

[Hook]
If you look at my
If you look at my love
You''ll see
You''ll see, I ain''t worried about a he
See
I ain''t worried about a he
I ain''t worried about a he
I ain''t never take a knee, cause he ain''t worry bout me
If you look at my
If you look at my love
I ain''t worried about a he
And he ain''t worried bout me
Live of my love
Cause he ain''t worried about me
Live of my love, me
I ain''t never taking niggas, ain''t worry bout me', 1)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (22, N'Put You In A Room', N'[Hook]
Put you in a room
You ain''t gotta leave
You ain''t gotta leave
But you can''t sleep with me
Put you in a room
You ain''t gotta leave
You ain''t gotta leave
But you can''t sleep with me

[Verse 1]
Every time I come and fuck with you
You make up all the rules
You ought to do it
Just because our car''s moving
Are you in my fucking corner for real?
Or, are you plotting to kill?
I tell you just how I feel
But you never hear
Oh, why you take it like that?
Now you wanna leave and never come back
I don''t control you, I ain''t never say that
Can''t give up on you, baby, we go way back

[Hook]
Put you in a room
You ain''t gotta leave
You ain''t gotta leave
But you can''t sleep with me
Put you in a room
You ain''t gotta leave
You ain''t gotta leave
But you can''t sleep with me

[Verse 2]
Every time I try to fuck with you
Nothing ain''t ever enough for you
And I had all this hope for you
But all you do is open wounds
I could be fucking with them other niggas
And no you ain''t them other niggas
I don''t fuck with a lot of bitches
Just my real bitches
Why you keep talking about it, you keep talking and you gon'' get me pissed off
Motherfuckers who be wanting that bitch to go crazy if she could cut her wrist off
I ain''t finna lie, no I ain''t finna lie like it was just his fault
But I know if a nigga lose me, then nigga, oohwee, that''s his loss, young nigga

[Hook]
Put you in a room
You ain''t gotta leave
You ain''t gotta leave
But you can''t sleep with me
Put you in a room
You ain''t gotta leave
You ain''t gotta leave
But you can''t sleep with me', 1)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (23, N'Wamables', N'[Intro]
Hello
Hello, hello, hello, hello

[Chorus]
See, I''m all about my wamables
See, I''m all about my wamables
(Hello, hello, hello, hello)

[Verse 1]
I''m all about my wamables, nigga ain''t bangable
I''m all about my wamables, these bitches is flammable
Bad bitches in the colleges,bust it open for me, gynecologist
But watch all your mileages, pussy miles go up if you?re talented
I''m all about pool life,thong in my ass, make that nigga drool like
I''m all about good sex, fake niggas gotta pay, gotta book sex
Real niggas get the pussy off GP, real niggas get a feature on my EP
What the fuck you smiling for? And what they put you on the panel for?
Where you gettin'' money from?Aye yo Twist, where you get that Bentley from?
Clap, clap, clap, make it go around like a lap
Now put it in my lap,let me see your crack, like the trap

[Chorus] (x2)
See, I''m all about my wamables
See, I''m all about my wamables
(Hello, hello, hello, hello)

[Verse 2]
I like percocets, I like to keep ''em hidden in my Birkin bag
Ass so fat, damn I''mma hurt ''em bad
It''s showtime bitch, tell me break a leg
Couple Bushwick niggas, that''ll break your leg
Push you off the balcony,and don''t break a ledge
Put your hand up, now it''s time to make a pledge
You''ll never catch me, in a lightskin nigga bed
I''ma always keep the hammer, nigga fuck a sledge
Fuck what they be talkin'' bout, fuck what they allege
I know them bitches gon'' hate, on my Giuseppe wedge (check)
Box spring cost 25k bitch,I''m out in Cali, fuckin'' wit'' the black K-fed
And nah man, I ain''t fuckin'' with that Jean Vest
Playtime been over fuck a recess, playtime been over fuck a seesaw
Bitches wanna play a game? Go and see Saw
That''s one, that''s two, and that''s three four
I''m hungry, who else could I feast off?
You know my pockets fatter, than that little Vine kid
They couldn''t stop me, even if the red sign did
Bitch don''t get gassed, like a hybrid
These bitches thinkin'' they can do what I did
These bitches thinkin'' they can live where I live
But bi-bitches couldn''t see me with an eyelid
I mean look, your bitch came off an island
I came in the game ''09 wilin''
I''m out in Hollywood,left off Highland
These bitches loud, but when the Queen come? (silent...)
 

[Chorus] (x2)
See, I''m all about my wamables
See, I''m all about my wamables
(Hello, hello, hello, hello)', 1)
SET IDENTITY_INSERT [dbo].[songs] OFF
