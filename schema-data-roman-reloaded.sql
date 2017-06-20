USE [nicki_min_api]
GO
/****** Object:  Table [dbo].[albums]    Script Date: 6/19/2017 5:47:08 PM ******/
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
/****** Object:  Table [dbo].[features]    Script Date: 6/19/2017 5:47:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[features](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[song_id] [int] NOT NULL,
 CONSTRAINT [pk_features] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[songs]    Script Date: 6/19/2017 5:47:08 PM ******/
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

INSERT [dbo].[albums] ([id], [title], [release_date]) VALUES (2, N'Pink Friday: Roman Reloaded', N'Apr  2 2012 12:00AM')
SET IDENTITY_INSERT [dbo].[albums] OFF
SET IDENTITY_INSERT [dbo].[songs] ON 

INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (3, N'Roman Holiday', N'[Hook]
Take your medication, Roman
Take a short vacation, Roman
You''ll be okay
You need to know your station, Roman
Some alterations on your clothes and your brain
Take a little break, little break
From your sanity
There is so much you can take, you can take
I know how bad you need a Roman holiday
Roman holiday, a Roman holiday

[Verse 1]
You done, you tight?
You suck at life?
You don''t want a round three? You done suffered twice
Worship the queen and you might could pass
Keep it real, these bitches couldn''t wipe my ass
Anyway, stylist, go get Bvlgari
I am the ultimate Svengali
You, you bitches can''t even spell that
You, you hoes buggin'' - repel that
Let me tell you this, sister
I am, I am colder than a blister
Cause my flow''s so sick, and I''m a lunatic
And this can''t be cured with no Elixir
Cause y''all know who the fuck, what the fuck I do
I done put the pressure to every thug I knew
Quack, quack to a duck and a chicken too
Put the hyena in a freakin'' zoo
 

[Hook]
Take your medication, Roman
Take a short vacation, Roman
You''ll be okay
You need to know your station, Roman
Some alterations on your clothes and your brain
Take a little break, little break
From your sanity
There is so much you can take, you can take
I know how bad you need a Roman holiday
Roman holiday, a Roman holiday

[Verse 2]
Witch, twitch, bitch!
Motherfucking right, this is World War 6
This right here might make a bitch die
And this right here is gonna make a bitch cry
And if we being honest I am such a great guy
And this what I do when a bitch breaks flock
I''mma put her in a dungeon under, under
No them bitches ain''t eating, they dying of hunger
Motherfucker I need
Who the fuck is this hoe?
And yes, maybe just a touch of tourettes
Get my wigs, Terrence, go and get my beret

[Hook]
Take your medication, Roman
Take a short vacation, Roman
You''ll be okay
You need to know your station, Roman
Some alterations on your clothes and your brain
Take a little break, little break
From your sanity
There is so much you can take, you can take
I know how bad you need a Roman holiday
Roman holiday, a Roman holiday

[Bridge]
Come all ye faithful
Joyful and triumphant
I am Roman Zolanski
Come all ye faithful
Joyful and triumphant
I am Roman Zolanski
Come all ye faithful
Joyful and triumphant
I am Roman Zolanski

[Verse 3]
Talking bout me, you talking about me?
I dare a motherfucker to be talking about me
That bitch must be smokin'' a couple of OZs
They want the outline, I give them a goatee
Goddamn motherfucker, you talking about me?
I dare a motherfucker to be talking about me
That bitch must be smokin'' a couple of OCs
A-buh-buh-buh now give then a goatee
 

[Hook]
Take your medication, Roman
Take a short vacation, Roman
You''ll be okay
You need to know your station, Roman
Some alterations on your clothes and your brain
Take a little break, little break
From your sanity
There is so much you can take, you can take
I know how bad you need a Roman holiday
Roman holiday, a Roman holiday', 2)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (4, N'Come On A Cone', N'[Verse 1]
Bitches ain''t serious, man, these bitches delirious
All these bitches inferiors, I just pimp my interiors
I just pick up and go; Might pick up a ho
Might give conversation, if you kick up the dough
Never mind my money; never mind my stats
Every bitch wanna be me, you can find ''em in Saks
Pink Friday, two milli; "Super Bass," triple plat
When you see me on Ellen, just admit that I''m winnin''
Do a show for Versace, they request me by name
And if they don''t get Nicki, it just won''t be the same
When I''m sitting with Anna, I''m really sitting with Anna
Ain''t a metaphor punchline, I''m really sitting with Anna
Front row in Oscar de la Renta posture
Ain''t a bitch that could do it, not even my impostor
Put these bitches on lock out, where the fuck is your roster?
I pull up in that new new marinara and pasta

[Hook]
Shake my head, yo, I''m mad,ain''t a bitch in my zone
In the middle of nowhere, I just feel so alone
Got the certification, ''cause it come with the stone
But, this ice is so cold, it should come on a cone
It should come on a cone, it should come on a cone
Yeah, my ice is so cold, it should come on a cone
It should come on a cone, it should come on a cone
''cause my ice is so cold, it should come on a cone

[Verse 2]
7-Up went and gave my commercial to Cee-Lo
But don''t tell them I said it, let''s keep it on the D-low
If you need you a look, just put me on your song
But, you know it''ll cost about six figures long
But, you bitches ain''t got it, where the fuck is your budgets?
Flying spurs for hers, mean I''m fucking above it
And I just got the ghost, and I''m calling it Casper
But this shit is so cold, it belong in Alaska
Why the fuck am I styling?, I competes with myself
When you went against Nicki, you depleted your wealth
And I''m not masturbating, but I''m feeling myself
Paparazzi is waiting, cause them pictures will sell
Now don''t you feel a-stupid, yeah, that''s egg on your face
If you weren''t so ugly, I''d put my dick in your face

[Interlude]
Dick in your face
Put my dick your face, yeah!

[Hook]
Shake my head, yo, I''m mad,ain''t a bitch in my zone
In the middle of nowhere, I just feel so alone
Got the certification, ''cause it come with the stone
But, this ice is so cold, it should come on a cone
It should come on a cone, it should come on a cone
Yeah, my ice is so cold, it should come on a cone
It should come on a cone, it should come on a cone
''cause my ice is so cold, it should come on a cone
 

[Outro]
Ooh, dick in your face
Ooh, dick in your face
Ooh, dick in your face
Put my dick in your face
Put my dick in your face, yeah yeah!
Yeah, yeah
Yeah, yeah
Yeah yeah, yeah yeah, yeah yeah, yeah yeah, yeah yeah, yeah yeah
Yeah!', 2)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (5, N'I Am Your Leader', N'[Verse 1: Nicki Minaj]
Look sucker, this my gun butter
Street fighter bitches, this the up cutter
Nunchucka'', no time to ducka''
Sign of the cross, cause this is her last suppa''
Play with me, check who came with me
I bought a couple 9&#8242;s, plus the k''s with me
I breeze through Queens to check some bad bitches
I stunt so hard, assess the damages
''cause this that aw, this is that aw
And yes, I body bitches go get the bandages
Young yummy, fuck you got for me
I hate a phony bitch that front that chum chummy
I''m me top shotta'' drop the top toppa''
Big fat pussy with a icy watch

[Hook]
I am your leader, yes I am your leader
You''re not a believer, suck a big dick

[Verse 2: Nicki Minaj]
When I fly, it''s one letter and one number
You wack hoes could get hot for one summer
After that the queen will still reign here
I''m Santa Claus to these hoes without a reindeer
Saint Nick, Ross, hey Rick, I just got a toy, cost 850
Now I''m in the hood, niggas is getting woodies
Hit up Hot Topic, Nicki Minaj hoodies
I''m a brand. bitch, I''m a brand
Go to Harlem, and get Cam
It''s dipset, get your dick wet
Boarded the big jet, and got a big check
Now you tell me, who the fuck is winning
I''m on my Russell Simmons, Nicki denim, Nicki linen

[Hook]
I am your leader, yes I am your leader
You''re not a believer, suck a big dick

[Verse 3: Rick Ross]
Jealous niggas is gossip, watch me tie up my laces
Bitches be jocking, tell by the look on they faces
8 digits I''m clocking, a lot of gold in my bracelet
7 figures on watches, I told my mama I made it
Made a deal for my project, just give me 10 mill I''m gravy
I went back to the projects in 2mil in Mercedes
I get head from your lady, have her bill me later
I''m old school with the hustle, just gave Rihanna my pager
Heart break hotel, I''m in the A-Rod suite
Rolls Royce wood, I''m talking playoff seat
Know that boy busy cause he balling, I like to play all week
Monday night with the ?RAW?, I?m Vince McMahon with a beat
Power slamming them hammers I get you handle for free
So where the fuck is her manners, she gives brain while I tweet
DM, in the BM, you cm, you bucking, you love it
Motherfuckers on my dick, suck it

[Hook]
I am your leader, yes I am your leader
You''re not a believer, suck a big dick
I am your leader, yes I am your leader
You''re not a believer, suck a big dick

[Verse 4: Cam''ron]
See the car is European but got imported from Tokyo
Looking like a shark, the nose call it Pinocchio
Well off, wealthy, LV logo
Middle of July but the wrist on snowflow
Only do the Aspens, y''all can have the Poconos
I''m sunny and you must suck collagen dose, Calogero
Ride the whip, 5 on the hip, live with the pies got 9 for the flip
High with a bitch, she cry for the dick, oh my know why I''m fly as it gets
Now I need an aspirin
She said "You''re only Cam''ron"
Girlfriend you don''t know Cam''ron from nowhere so don''t go tampering
You''re just a nail I hammer
''nother girl that''s on my camera
My name you cannot slander at all girl, watch your manners
She run and tell her mother, "I think I love him, Nana."
Because you sat upon my lap? Nah, I ain''t Santa
They call me pied piper, OJ no glove I knife her
Never been a lifer, even do Rikers
Why would I fight? Don?t even like her

[Hook]
I am your leader, yes I am your leader
You''re not a believer, suck a big dick
I am your leader, yes I am your leader
You''re not a believer, suck a big dick', 2)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (6, N'Beez In The Trap', N'[Hook: Nicki Minaj]
Bitches ain''t shit and they ain''t sayin'' nothing
A hundred motherfuckers can''t tell me nothing
I beez in the trap, bee beez in the trap
I beez in the trap, bee beez in the trap
Bitches ain''t shit and they ain''t sayin'' nothing
A hundred motherfuckers can''t tell me nothing
I beez in the trap, bee beez in the trap
I beez in the trap, bee beez in the trap

[Verse 1: Nicki Minaj]
Man I been did that, man I been popped off
And if she ain''t trying to give it up she get dropped off
Let me bust that U-ie, bitch bust that open
Might spend a couple thou'' just to bust that open
Rip it off no joking, like your name Hulk Hogan
Niggas move weight in the South but live in Hoboken
Bitch, I spit that crack, like I''m in that trap
So if you need a hit then I''m with that bat

[Hook: Nicki Minaj]
Bitches ain''t shit and they ain''t sayin'' nothing
A hundred motherfuckers can''t tell me nothing
I beez in the trap, bee beez in the trap
I beez in the trap, bee beez in the trap
Bitches ain''t shit and they ain''t sayin'' nothing
A hundred motherfuckers can''t tell me nothing
I beez in the trap, bee beez in the trap
I beez in the trap, bee beez in the trap

[Verse 2: 2 Chainz]
Okay now Nicki, Nicki, Nicki, put it in your kidney
Got a new LS 450, ain''t no keys in this do-hicky
If I weren''t rapping I''d be trapping
If I weren''t trapping I''d be pimping
If I weren''t pimping I''d be getting it, period
I don''t smoke no bobby, but my denim be from ricky
Got your girl on molly and we smokin'' loud and drinkin''
Got my top back so you can see what I been thinkin''
If you know me then you know I''ve been thinking Franklin
Money, thousands, True Religion trousers
Got a private home, started from them public houses
Hair weave killer, causing her arousal
Audi A8, told them "outtie 5000," uh

[Hook: Nicki Minaj]
Bitches ain''t shit and they ain''t sayin'' nothing
A hundred motherfuckers can''t tell me nothing
I beez in the trap, bee beez in the trap
I beez in the trap, bee beez in the trap
Bitches ain''t shit and they ain''t sayin'' nothing
A hundred motherfuckers can''t tell me nothing
I beez in the trap, bee beez in the trap
I beez in the trap, bee beez in the trap

[Bridge: Nicki Minaj]
Damn, damn what they say about me?
I don''t know man, fuck is on your biscuit
If I get hit, swinging on a big bitch
I don''t know man, I''m shittin'' on your whole life
Damn, damn what they say about me?
I don''t know man, fuck is on your biscuit
If I get hit, swinging on a big bitch
I don''t know man, I''m shittin'' on your whole life
 

[Hook: Nicki Minaj]
Bitches ain''t shit and they ain''t sayin'' nothing
A hundred motherfuckers can''t tell me nothing
I beez in the trap, bee beez in the trap
I beez in the trap, bee beez in the trap

[Verse 3: Nicki Minaj]
Man I''m out in Texas, man, I''m out in A-town
Then I''m up in Chi-town or Miami shuttin'' it down
It''s that New Orleans, it''s LA or The Bay
It''s New York, Philly, and the whole DMV
I''m a Detroit Player, man it''s North-South Cack
Ohio, Pittsburgh, got St. Louis on deck
It''s Delaware, Connecticut, it''s New Jersey got hella bricks
It''s Queens, Brooklyn, and yeah, they wildin''
Bronx, Harlem, and Staten Island

[Hook: Nicki Minaj]
Bitches ain''t shit and they ain''t sayin'' nothing
A hundred motherfuckers can''t tell me nothing
I beez in the trap, bee beez in the trap
I beez in the trap, bee beez in the trap

[Bridge: Nicki Minaj]
Damn, damn what they say about me?
I don''t know man, fuck is on your biscuit
If I get hit, swinging on a big bitch
I don''t know man, I''m shittin'' on your whole life', 2)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (7, N'HOV Lane', N'[Verse 1]
Zipping, I?m zipping, I?m zipping
Soon as they come out, I?m dipping
Big ass closet, I?m tripping
Big booty strippers, I?m tipping
Big ass chain, I?m heavy
And it didn?t cost me a penny
They pay me to rock it
Damn, I got niggas in pocket
Super Bowl, Grammys
What a hell of a jammie!
All these bitches my sons
I?mma get ?em a nanny
Argentina for Pepsi; Orlando All-Star
Fuck you said, bitch? Fuck you, pornstar
I don?t do shotgun, I be driving my own car
I don?t do shots neither, I?m buying the whole bar
Holy Moly, G copped me a Rolly
I ain''t catchin'' the puck but iced out like a goalie, nigga

[Hook]
I''m in the HOV lane, I''m in the HOV lane
And you, y-y-you, y-y-you? Soul Train
I''m in the HOV lane, I''m in the HOV lane
And you, y-y-you, y-y-you? Soul Train
I''m in the HOV lane, I''m in the HOV lane
And you, y-y-you, y-y-you? Soul Train
I''m in the HOV lane, I''m in the HOV lane
And you, y-y-you, y-y-you? Soul Train

[Verse 2]
I travel more than you walking with a basketball
I''m out in Spain, running game to the Matador
I''m in my own lane, you ain''t in my categor
You like a Rav 4; I?m like the Aventador
Birkin bags, man I murk them ads
When I re-up on reloaded, I''mma hurt them bad
Every shoot is hot; when I''m out, I''m spotted
They gone frame the receipt if I sign the dotted
N-N-Niggas on Banshees is speeding
Dirt bikes is out for the season
Back break wheelie and leaning
Damn, a bitch late for a meeting
NYPD comin?
Belt Parkway, we gunnin?
Double R engine humming
Acting a fool, we dumbin?

[Hook]
I''m in the HOV lane, I''m in the HOV lane
And you, y-y-you, y-y-you? Soul Train
I''m in the HOV lane, I''m in the HOV lane
And you, y-y-you, y-y-you? Soul Train
I''m in the HOV lane, I''m in the HOV lane
And you, y-y-you, y-y-you? Soul Train
I''m in the HOV lane, I''m in the HOV lane
And you, y-y-you, y-y-you? Soul Train

[Verse 3]
Nintendo and we in the end-zone
I don?t give a fuck, ho
Like we in the friend zone
What the fuck it look like?
What the fuck it?s hitting fo''?
Tell them bitches
"Y-y-y-y-you you ain?t about that life!"
Nintendo and we in the end-zone
I don?t give a fuck, ho
Like we in the friend zone
What the fuck it look like?
What the fuck it?s hitting fo''?
Tell them bitches
"Y-y-y-y-you you ain?t about that life!"

[Hook]
I''m in the HOV lane, I''m in the HOV lane
And you, y-y-you, y-y-you? Soul Train
I''m in the HOV lane, I''m in the HOV lane
And you, y-y-you, y-y-you? Soul Train
I''m in the HOV lane, I''m in the HOV lane
And you, y-y-you, y-y-you? Soul Train
I''m in the HOV lane, I''m in the HOV lane
And you, y-y-you, y-y-you? Soul Train', 2)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (8, N'Roman Reloaded', N'[Hook: Nicki Minaj]
Bang, my shit bang
B-B-Bang, Bang, my shit bang
B-B-Bang

[Verse 1: Nicki Minaj]
Yo, I guess I went commercial, just shot a commercial
When I flew to the set, though, I ain?t fly commercial
And the ad is global; your ad is local
When we shot it was a lot of different agricultures
So I laugh at hopefuls; "Nicki pop!"
Only thing that?s pop is my endorsement op
Fuck around and I''ll have to go and reinforce the Glock

[Hook: Nicki Minaj]
Bang, my shit bang
B-B-Bang, Bang, my shit bang
B-B-Bang

[Verse 2: Nicki Minaj]
Yo, is it me, or did I put these rap bitches on the map again?
You mad ?cause I?m at the Grammy''s with the Vatican
You in the booth, but I''m who you be channelin?
Why they never bring you name up at the panel, then?
Hottest MCs, Top 5; you need money? I got mine
More knots than Eric on Basketball Wives
(Ya dig?)

[Hook: Nicki Minaj]
Bang, my shit bang
B-B-Bang, Bang, my shit bang
B-B-Bang

[Verse 3: Nicki Minaj]
I couldn?t do your TV show, I needed ten more mil
Not ten on the back, I need ten on signin''
Give that shit to a washed up bitch, I?m winnin?
?cause if I had a label I would never sign, you hoes
Take bitches to school, then I Columbine these hoes
I hear the slick shit, bitch, you washed
All you hoes cryin??Christopher Bosh

[Hook: Nicki Minaj]
Bang, my shit bang
B-B-Bang, Bang, my shit bang
B-B-Bang

[Verse 4: Nicki Minaj]
Now when I tell ?em it?s Barbie, bitch
Yes, I really do mean that it?s Barbie, bitch
Ask Mattel, they auctioned my Barbie, bitch
Raggedy Ann could never be a Barbie, bitch
You at the bottom of the barrel scrapin?
I?m out in LA at the Ice Age tapin?
I?m chillin? at the top, I got ample time
Bite me?Apple sign, ha
 

[Hook: Nicki Minaj]
Bang, my shit bang
B-B-Bang, Bang, my shit bang
B-B-Bang

[Verse 5: Lil Wayne]
Kush on my breath, cocaine on my tongue
Eat that pussy, make it numb, she can''t feel herself cum
Got a body on my gun, fuck the world with my thumb
Pop a molly, smoke a blunt, that mean I''m a high roller
My ex wanna work it out, bitch, try yoga
Two hoes in the bed, tell them hoes slide over
Excuse my French, two bitches and moi
That a Nicki M?nage ? trois, ha
Tunechi

[Hook: Nicki Minaj]
Bang, my shit bang
B-B-Bang, Bang, my shit bang
B-B-Bang

[Verse 6: Lil Wayne]
Um, my shit so cold, man, it don''t even stank-o
Destructive ass nigga, watch me break the bank
Weezy F and the ''F'' is for "fill in the blank"
I say shout out Mack Maine, backyard bully
And the weed purple like a black girl pussy
Word, middle finger on the trigger
So you know that mean fuck a nigga
 

[Hook: Nicki Minaj]
Bang, my shit bang
B-B-Bang, Bang, my shit bang
B-B-Bang

[Hook: Lil Wayne]
Bang-bang, my bitch bang
She bang bang, well that''s cause my bitch is Nina Ross
And she bang, b-b-bang
Bang bang, she go bang bang
(bang-bang, bang, bang-bang)
We bang, bang-bang
Bang, b-b-b-bang, bang, bang, blood gang', 2)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (9, N'Champion', N'[Verse 1: Nicki Minaj]
This a celebration, this is levitation
Look at how you winning now? This took dedication
This is meditation,higher education
This the official, competitor elimination
I-I-I-I was taking trips, with Web to move weight
Came back to Queens, to hit up a new state
Bitches don''t know the half, like they flunk they math
Bitches ain''t half, cut up crack, up in the stash
50 Cent Italian, icy flow
This is that Run-and-Get-a-Dollar-for-The-Ice-Cream-Cone
''cause they killed my little cousin Nicholas
But my memory''s, only happy images
This is for the hood, this is for the kids
This is for the single mothers; niggas doing bids
This one is for Tee-Tee, Tweety, Viola, Sharika
Candace, Thembi, Lauren, Aisha

[Hook: Nicki Minaj]
It''s a celebration (Put one in the air for the ghetto, ooh)
It''s times like these (Ooh, ooh)
They know who we are by now (They know who we are)
Champion, the champions (Champion, champion)

[Verse 2: Drake]
Yeah, okay
We made it to America
''c remember when I used to stay with Erica
Label transferred 20 million to Comerica
It''s fucking terrible, it''s got me acting out of character
Young T.O. nigga, either riding range
Or Ferrari top down, screaming, "Money ain''t a thang!"
Tell me when I change, girl, but only when I change
''cause I live this shit for real, niggas know me in the game, they know!
Making hits in three acre cribs
Cooking up tryna eat niggas, steak and ribs
I made a couple stars outta basic chicks
Nowadays blow the candles out, don''t even make a wish
Having good times, making good money
Lot of bad bitches, but they good to me
I make them do the splits for a rack
Wish you niggas good luck, tryna get where I''m at
Straight like that

[Hook]
It''s a celebration (Put one in the air for the ghetto, ooh)
It''s times like these (Ooh, ooh)
They know who we are by now (They know who we are)
Champion, the champions (Champion, champion)

[Verse 3: Young Jeezy]
Straight balling in this bitch, Jeremy Lin; ''Melo
Tell me one thing you won''t do: settle
Give me one word for your chain: yellow
Pocket full of money, black cars; ghetto
Critics say I ain''t in the game, A.I
Jeezy, how you deal with the fame? Stay high
Stay putting on for the town, may I?
What you call a crib in the sky? Play-high
Over a mil in three weeks, yeah I did it like a champ
Momma taught me pride, yeah she did it with the stamps
Wait a minute, everybody pause for the photo
Somebody tell these local hating niggas, I''m global
Tell me what I gotta do to get this champagne going
What I gotta do to get this coconut flowing?
Don?t let me hit up Shawn Carter, hundred bottles of the Ace
Let me hit up Sean Combs, hundred cases to my place, let''s celebrate

[Hook]
It''s a celebration (Put one in the air for the ghetto, ooh)
It''s times like these (Ooh, ooh)
They know who we are by now (They know who we are)
Champion, the champions (Champion, champion)
 

[Verse 4: Nas]
What up, Nicki? It''s Nasty, yeah
I saw my first two million dollars, I was 23
I''m barely a man, yet, I had some killers under me
This ain''t rated PG, this rated PJ
''cause that''s where a nigga from; murder on replay
My 24th b-day, I''m sailing to Bermy, you can see me on a yacht
Blasting Pac, little knot, I ain''t greedy
I''m back to thugging, bitches
Back to making them kiss other bitches
My man sister like me, I don''t fuck my brother sister
I just aspire your desire to be different
My ten year old plan is just one year to finish
My list looks like this, first thing that you''ll discover
The difference in pussy: white, black, Latin and other
Here''s a man who clearly isn''t basic
Waiting list, just to hear me or witness the greatness
Loud laughter, while writing my next chapter: Fast Cash Life
Happily ever after
Champions

[Hook]
It''s a celebration (Put one in the air for the ghetto, ooh)
It''s times like these (Ooh, ooh)
They know who we are by now (They know who we are)
Champion, the champions (Champion, champion)', 2)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (10, N'Right By My Side', N'[Verse 1: Nicki Minaj]
It all comes down to this
I miss your morning kiss
I won''t lie, I''m feeling it
You''re gone now and I''m missing it
I''m so dumb, I must admit
It''s too much to hold it in
I can''t say no more than this
I just hope your heart hear me now

[Pre-Chorus: Nicki Minaj]
Gotta let you know how I''m feeling
You own my heart, he just renting
Don''t turn away, pay attention
I''m pouring out my heart, oh boy

[Chorus: Nicki Minaj]
I, I''m not livin'' life
I''m not livin'' right
I''m not livin'' if you''re not by my side, oh
I, I''m not livin'' life
I''m not livin'' right
I''m not livin'' if you''re not by my side, oh

[Verse 2: Chris Brown]
Let''s meet at our favorite spot
You know the one, right around the block
From the nice place that you love to shop
Can you get away?
Girl, just sit down, let''s talk it out
One-on-one, without a crowd
I wanna hold your hand, make you laugh again
I need to be near you

[Pre-Chorus: Chris Brown]
Gotta let you know how I''m feeling
You own my heart and she''s just renting
Don''t turn away, pay attention
I''m pouring out my heart, girl

[Chorus: Nicki Minaj]
I, I''m not livin'' life
I''m not livin'' right
I''m not livin'' if you''re not by my side, oh
I, I''m not livin'' life
I''m not livin'' right
I''m not livin'' if you''re not by my side, oh

[Bridge: Nicki Minaj]
I can''t eat, I, I, I, I
I can''t sleep, I, I, I, I
What I need, I, I, I, I
Is you right by my side, I
I can''t eat, I, I, I, I
I can''t sleep, I, I, I, I
What I need, I, I, I, I
Is you right by my side, I

[Verse 3: Nicki Minaj]
It, it, it, it
It ain''t your spit game, it''s your dick game
That got me walkin'' round ready to wear your big chain
I only argue with him when the Lakers on
Other than that, I''m gettin'' my Marc Jacobs on
Man, my pussy game so cold, that he always seem to come back
''Cause he know that it be a rap, when I''m ridin'' it from the back
Wait, oh, let me see your phone ''cause all them bitches is ratchet
Don''t let me get in my truck ;cause all them bitches will catch it
Wait, damn, there I go again
I be trippin'', I be flippin'', I be so belligerent
Man the shit that we be fightin'' over so irrelevant
I don''t even remember, though I was probably hella bent
 

[Chorus: Nicki Minaj]
I, I''m not livin'' life
I''m not livin'' right
I''m not livin'' if you''re not by my side, oh
I, I''m not livin'' life
I''m not livin'' right
I''m not livin'' if you''re not by my side, oh

[Bridge: Nicki Minaj]
I can''t eat, I, I, I, I
I can''t sleep, I, I, I, I
What I need, I, I, I, I
Is you right by my side, I
I can''t eat, I, I, I, I
I can''t sleep, I, I, I, I
What I need, I, I, I, I
Is you right by my side, I', 2)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (11, N'Sex In The Lounge', N'[Intro: Bobby V]
DJ, turn me up
Don''t you turn this down, no no

[Verse 1: Nicki Minaj]
I think I gave him a discrete name
He replied with a street name
P.R. at the heat game
No ball, but peep game
He addicted to hustle, I''m addicted to fame
Though he packin'' that muscle, I''m addicted to brain
I''m addicted to chilling, make a hell of a killing
Don''t I stunt on these bitches?
Man, I''m bad as a villain
Get the gun, I''mma hunt ''em
When I''m done, I''m a don ''em
When we leaving the lounge, I''mma keep it a hundred
It went down, enough said
Pull off in that thang, and it''s blush red

[Chorus: Bobby V]
Sex in the lounge
Girl, I''mma take ya down
I''mma have you screaming, girl
They gonna hear the sound of our sex in the lounge
I can''t believe this is happening to me, girl
Happening to me, girl, oh wow

[Verse 2: Bobby V]
So caught up in this girl
Shawty, got my energy down
Keeping true to myself, cause I''m so into her
Cause we doing it like nobody''s around
And when we doing it, I can hear her make a sound
Shawty was singing like me
Had that girl singing, singing like me
She be like (Ooh, oh, oh, oh, ooh, oh)
She looking at me like she want it
But, I''m over here
She come in on top of me
I''mma make her scream, her scream

[Chorus: Bobby V]
Sex in the lounge
Girl, I''mma take ya down
I''mma have you screaming, girl
They gonna hear the sound of our sex in the lounge
I can''t believe this is happening to me, girl
Happening to me, girl, oh wow

[Verse 3: Lil Wayne]
Sit that pussy on my bottom lip
Then, after that, you know we gotta switch
My house so big that bitch came with a lobby
We didn''t use a rubber, but I came on her body
I lay her down and kiss her neck and talk dirty to her
Like I get that pussy wetter than a dirty sewer
Fuck with me, turn around and bust it open for me
Get on that dick and get that money, go Oprah for me
All you girls don''t like me, cause they know you love me
But if you scared, go to church, it''s open Sunday
I dig in that pussy, guess what I find
Tunechi Lee and Nicki, sex in the lounge
 

[Chorus: Bobby V]
Sex in the lounge
Girl, I''mma take ya down
I''mma have you screaming, girl
They gonna hear the sound of our sex in the lounge
I can''t believe this is happening to me, girl
Happening to me, girl, oh wow', 2)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (12, N'Starships', N'[Verse 1]
(RedOne...)
Let''s go to the beach, each
Let?s go get a wave
They say, what they gonna say?
Have a drink, clink, found the Bud Light
Bad bitches like me is hard to come by
The patron own, let''s go get it on
The zone on, yes I''m in the zone
Is it two, three? Leave a good tip
I''mma blow off my money and don''t give two shits

[Bridge]
I''m on the floor, floor
I love to dance
So give me more, more, ''til I can''t stand
Get on the floor, floor
Like it''s your last chance
If you want more, more
Then here I am

[Hook]
Starships were meant to fly
Hands up and touch the sky
Can''t stop cause we?re so high
Let''s do this one more time
Starships were meant to fly
Hands up and touch the sky
Let''s do this one last time
Hands up...

(We''re higher than a motherfucker)
(We''re higher than a motherfucker)
(We''re higher than a motherfucker)

[Verse 2]
Bump in my hoopty-hoopty-hoop
I own that
And I ain''t paying my rent this month
I owe that
But fuck who you want, and fuck who you like
Dancehall life there''s no end in sight
Twinkle, twinkle little star

[Bridge]
Now everybody let me hear you say ray ray ray
Now spend all your money cause today pay day
And if you''re a G, you a G-G-G
My name is Onika, you can call me Nicki

[Bridge]
Get on the floor, floor
Like it''s your last chance
If you want more, more
Then here I am

[Hook]
Starships were meant to fly
Hands up and touch the sky
Can''t stop cause we?re so high
Let''s do this one more time
Starships were meant to fly
Hands up and touch the sky
Let''s do this one last time
Hands up...
 

(We''re higher than a motherfucker)
(We''re higher than a motherfucker)
(We''re higher than a motherfucker)

[Outro]
Starships were meant to fly
Hands up and touch the sky
Can''t stop cause we?re so high
Let''s do this one more time
Starships were meant to fly
Hands up and touch the sky
Let''s do this one last time
Hands up...

(We''re higher than a motherfucker)
(We''re higher than a motherfucker)
(We''re higher than a motherfucker)', 2)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (13, N'Pound The Alarm', N'[Intro/Chorus]
Oh, oh, oh
Come fill my glass up a little more
We ''bout to get up and burn this floor
You know we getting hotter, and hotter
Sexy, and hotter, let''s shut it down

[Verse 1]
Yo, what I gotta do to show these girls that I own them?
Some call me Nicki, and some call me Roman
Skeeza, pleeza, I''m in Ibiza
Giuseppe Zanotti, my own sneaker
Sexy, sexy that?s all I do
If you need a bad bitch
Let me call a few
Pumps on, and the little mini-skirts is out
I see some good girls, I''mma turn ''em out
Ok bottle, sip, bottle, guzzle
I''m a bad bitch, no muzzle, hey?
Bottle, sip, bottle, guzzle
I''m a bad bitch, no muzzle, let''s go

[Pre-Chorus]
Music makes me high

[Chorus]
Oh, oh, oh
Come fill my glass up a little more
We ''bout to get up and burn this floor
You know we getting hotter, and hotter
Sexy, and hotter, let''s shut it down

[Drop]
Pound the alarm!
Pound the alarm!

[Verse 2]
I wanna do it for the night, night
So get me now, and knock this over
I wanna do it like you like, like
Come get me, baby, we''re not getting younger
I just want you tonight, night
Baby, we won''t do it for life

[Pre-Chorus]
Music makes me high

[Chorus]
Oh, oh, oh
Come fill my glass up a little more
We ''bout to get up and burn this floor
You know we getting hotter, and hotter
Sexy, and hotter, let''s shut it down

[Drop]
Pound the alarm!
Pound the alarm!

[Breakdown]
Pound the alarm
Pound the alarm!
Pound the alarm!
Pound the alarm!

[Chorus]
Oh, oh, oh
Come fill my glass up a little more
We ''bout to get up and burn this floor
You know we getting hotter, and hotter
Sexy, and hotter, let''s shut it down

[Drop]
Pound the alarm!
Pound the alarm!
Pound the alarm!', 2)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (14, N'Whip It', N'[Verse 1]
Hey, you, jump in this ride
It''s real nice, and slippery inside
Wise, guy come get this pie
Ride it in style
Said it a minute ago, I did it a minute ago
I drop it, I pick it up slow, I want it, I''m kicking it though
Cause they know that I got that good shit
Said I''m bad, but I could be a good bitch

[Pre-Chorus]
Squeeze my body, rock my body
Boy, you make me go
"Na-na-na-na, na-na-na, na-na-na," me go
Please my body, heal my body
Boy, you make me go
"Na-na-na-na, na-na-na, na-na-na," me go
We gon''...

[Chorus]
Hey, stranger over there
I''m really liking that way you whip it, whip it
Yeah, I want you everyday
You''re so right, you''re so tight
You got my world spinning, you got my world spinning
My head goes round and around, r-round and around
And I''m thinking if we could be
Stranger, what you say?
I''m really liking that way you whip it, whip it, whip it, whip it, whip it, whip it (uh!)

[Drop]
"Na-na-na-na, na-na-na, na-na-na," me go
"Na-na-na-na, na-na-na, na-na-na," me go

[Verse 2]
Is that my cue?
I''m looking for some brain to boost my IQ
I''m like 5''2", my SAT scores was high too
But I don''t wanna brag I Louis Vuitton bagged him
Hopped out the jag proceeded to shag-shagged him
Slim, trim, also light skin
So Pe-Pe-Peter put the pipe in

[Pre-Chorus]
Squeeze my body, rock my body
Boy, you make me go
"Na-na-na-na, na-na-na, na-na-na," me go
Please my body, heal my body
Boy, you make me go
"Na-na-na-na, na-na-na, na-na-na," me go
We gon''...

[Chorus]
Hey, stranger over there
I''m really liking that way you whip it, whip it
Yeah, I want you everyday
You''re so right, you''re so tight
You got my world spinning, you got my world spinning
My head goes round and around, r-round and around
And I''m thinking if we could be
Stranger, what you say?
I''m really liking that way you whip it, whip it, whip it, whip it, whip it, whip it (uh!)
 

[Drop]
"Na-na-na-na, na-na-na, na-na-na," me go
"Na-na-na-na, na-na-na, na-na-na," me go', 2)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (15, N'Automatic', N'[Chorus]
I can''t control the way I''m movin my hips
Bet you never ever seen it like this
I''m a monster on the floor, I can''t quit
Now I know it''s automatic, it''s automatic

[Verse 1]
It''s automatic, I''m a run away train
And it''s likely that I tear up this place
When I go, I go hard
I''mma show you bizarre tonight, tonight (ni-i-ight)
It''s automatic, my condition''s unknown
There''s no remedy and no antidote
It''s just the way that I am
Nicki, Nicki so bad tonight, tonight (ni-i-ight)

[Chorus]
I can''t control the way I''m movin my hips
Bet you never ever seen it like this
I''m a monster on the floor, I can''t quit
Now I know it''s automatic, it''s automatic

[Verse 2]
It''s automatic, some might call it insane
I assure you, I''ll be stuck in your brain
You''ll be falling for me, boy
Yeah, just like a domino tonight tonight (ni-i-ight)
It''s automatic when I''m rockin'' the beat
Systematically, I''m droppin'' your heat
It''s just the way that I am
Nicki, Nicki so bad tonight, tonight (ni-i-ight)

[Chorus]
I can''t control the way I''m movin my hips
Bet you never ever seen it like this
I''m a monster on the floor, I can''t quit
Now I know it''s automatic, it''s automatic

[Bridge]
Press rewind, p-p-press rewind
It''s automatic, I-I''m Einstein
I''m lookin for that Einstein
Wales, London, Ireland
Scotland I can idle in
South Africa and Brazil
Shut the club down, bring the bill
Bri-ri-ri-ri-ring the bill
Br-bri-bri-bri-bring the bill
Bri-bri-bring the bill
Shut the club down
Bring the bill

[Chorus]
I can''t control the way I''m movin my hips
Bet you never ever seen it like this
I''m a monster on the floor, I can''t quit
Now I know it''s automatic, it''s automatic', 2)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (16, N'Beautiful Sinner', N'[Intro]
South Africa is where I come from
Get me my banjo, get me my drum
Kidnap Korea and don''t take ransom
Don''t let me come out of my dungeon
When mi did ah leave then take it down
True say mi come out of England and it done
True say the pattern come from Kingston
Trinidad Trinidad, my island

[Verse 1]
I see you in here dancing
Your preview is quite romantic
I envy your perfect kind of life
Who knew you''d be so sexy?
I think you''re quite fantastic
Screw your flaws
You''re perfect in my eyes

[Pre-Chorus]
And maybe I''m naive for loving you
You''re a cheat and a liar
But tonight you''re everything I desire

[Chorus]
You beautiful sinner
I love your wicked heart
Beautiful sinner
It''s such a work of art
I didn''t know that bad could look so good
You are the type of bad that feels so good
You beautiful sinner

[Verse 2]
I bet you''re hard as stone
Living in your world alone
I hope you let me in tonight
They want me to beware
You''re dangerous, but I don''t care
I can''t wait to have you in my arms

[Pre-Chorus]
And maybe I''m naive for loving you
You''re a cheat and a liar
But tonight you''re everything I desire

[Chorus]
You beautiful sinner
I love your wicked heart
Beautiful sinner
It''s such a work of art
I didn''t know that bad could look so good
You are the type of bad that feels so good
You beautiful sinner

[Bridge]
Maybe you''re the master of disguise
And you are putting on and
You''re really the saint, the good one
Are you here to save me from the crowd?
If you are then, baby, take me now
 

[Chorus]
Beautiful sinner
I love your wicked heart
Beautiful sinner
It''s such a work of art
I didn''t know that bad could look so good
You are the type of bad that feels so good
You beautiful sinner', 2)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (17, N'Marilyn Monroe', N'[Verse 1]
I can be selfish
Yeah, so impatient
Sometimes I feel like Marilyn Monroe
I?m insecure
Yeah, I make mistakes
Sometimes I feel like I?m at the end of the road

[Pre-Chorus]
I can get low, I can get low
Don?t know which way is up
Yeah, I can get high, I can get high
Like I could never come down

[Chorus]
Call it a curse
Or just call me blessed
If you can?t handle my worst
You ain?t getting my best
Is this how Marilyn Monroe felt, felt, felt, felt?
Must be how Marilyn Monroe felt, felt, felt, felt

[Verse 2]
It''s like all the good things
They fall apart like
Like Marilyn Monroe
Truth is, we mess up ''til we get it right
I don?t want to end up losing my soul

[Pre-Chorus]
I can get low, I can get low
Don?t know which way is up
Yeah, I can get high, I can get high
Like I could never come down

[Chorus]
Call it a curse
Or just call me blessed
If you can?t handle my worst
You ain?t getting my best
Is this how Marilyn Monroe felt, felt, felt, felt?
Must be how Marilyn Monroe felt, felt, felt, felt

[Bridge]
Take me or leave me
I?ll never be perfect
Believe me, I?m worth it
So take me or leave me! (So take me or leave me)
So take me or leave me! (So take me or leave me)

[Chorus]
Call it a curse
Or just call me blessed
If you can?t handle my worst
You ain?t getting my best
Is this how Marilyn Monroe felt, felt, felt, felt?
Must be how Marilyn Monroe felt, felt, felt, felt
Is this how Marilyn Monroe felt, felt, felt, felt?
Must be how Marilyn Monroe felt, felt, felt, felt', 2)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (18, N'Young Forever', N'[Verse 1]
I used to think that we?d run away
One lovely pretty summer day
I remember when you would say
We''d be okay, come what may
I never knew you would lie to me
Took everything from inside of me
Your silhouette in the doorway
But before you walk away

[Chorus]
Don''t say goodbye, look in my eyes
So that I always will remember
Frozen in time, always be mine
Baby boy, you?ll be young forever
I?ll be over here, you?ll be over there
I?ma shed a tear but I really don?t care
Frozen in time, always be mine
Baby boy, you?ll be young forever

[Verse 2]
I used to think that we?d reunite
I?d be your wife in the real life
I thought that you?d come back for me
And you would take me away
I never knew only as a teen
You?d reappear only in my dream
Your silhouette in the doorway
But before you walk away

[Chorus]
Don''t say goodbye, look in my eyes
So that I always will remember
Frozen in time, always be mine
Baby boy, you?ll be young forever
I?ll be over here, you?ll be over there
I?ma shed a tear but I really don?t care
Frozen in time, always be mine
Baby boy, you?ll be young forever

[Bridge]
This is my last cry
Is this the only way?
This is my own prison
I?m frozen in time, in time, in time

[Chorus]
Don''t say goodbye, look in my eyes
So that I always will remember
Frozen in time, always be mine
Baby boy, you?ll be young forever
I?ll be over here, you?ll be over there
I?ma shed a tear but I really don?t care
Frozen in time, always be mine
Baby boy, you?ll be young forever', 2)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (19, N'Fire Burns', N'[Verse 1]
You shoulda left the other day
You let me beg for you to stay
This is a sickening joke that you play with my emotions
And so I pray you burn in hell, and you never find the ocean

[Chorus]
I hope your fire, fire burns, baby
I hope your fire, fire burns, baby
I hope you lay down in your sleep and you choke on every lie you told
And when you?re reaching out for me, you?ll see you reap everything you sow

[Verse 2]
You piece of shit, you broke me down
Thought you said you, would hold me down
But I can see it in your eyes that your blinded by the flashing lights
And you''s a stupid muthafucker for letting this thing pass you by

[Chorus]
I hope your fire, fire burns, baby
I hope your fire, fire burns, baby
I hope you lay down in your sleep and you choke on every lie you told
And when you?re reaching out for me, you?ll see you reap everything you sow

[Outro]
(Burn, burn, burn...)', 2)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (20, N'Gun Shot', N'[Verse 1: Nicki Minaj]
Mi man, mi say nuff gyal a road a chase you lately
Mi know de trut, but that don?t bother me
So tell dem gyal dem oooh
And tell ya friend dem oooh

[Refrain]
My gun a go gun shot in a dem bloodclaat
Hit dem wit it which part
Any way dem go suh
Tell dem gyal dem yooo
Tell dem gyal seh yooo
My a gun go gun shot, in a dem blood clot
Hit dem wit it which part
Any way dem go suh
Tell dem gyal dem yooo
Mek dem gyal dem know

[Verse 2: Nicki Minaj]
Mi man, you say, I?m crazy over you baby
No matter what they can?t get in between us
So tell dem gyal dem ooohh
And tell ya friend dem ooohh

[Refrain]

[Verse 3: Beenie Man]
Zaga, I am the girls dem sugar
Sometimes mi girlfriend wonder
Mek mi tell yuh something
Beenie Man, I?m a G
The girls them provide the lock for my key
You alone, mi a pree, you fulfill all my desires for me
So mi a go tell a gyal
And her friend dem

[Refrain 2: Beenie Man]
I love it when yuh on top
Wuss when yuh guh backshot
None a dem nuh have that
So when dem run in
Mi a go tell a gyal
Mi a go tell a gyal

[Verse 4: Beenie Man]
Hey pretty Nicki
Meet admiral Dicky, friend dem a tel me say you have the sticky sticky
Gyal how yuh hot, and yuh sexy and pretty
Me, yuh cherry mi want pick eh
But it''s not every girl in my life I''ve introduced to my Mama
But you are the girl I man choose to give honor
So when some careless gyal a come with them silly drama
Tell dem pause like a sentence, mi using the comma
Mek we visit Marc Jacobs and call the wedding planner
For a romantic setting in the middle of the summer
Ya love is in di air, and it appears like ah banner
Now the heart in a mi chest is like a hammer', 2)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (21, N'Stupid Hoe', N'[Instrumental break]
Uhh
Yeah
Yeah
[Verse 1: Nicki Minaj]
I get it cracking like a bad back
Bitch talkin she the queen when she looking like a lab rat
I?m Angelina, you Jennifer
Come on bitch you see where Brad at?

[Interlude: Nicki Minaj]
Ice my wrist-es then I piss on bitches
You could suck my diznick, if you take these jizzes
You don?t like them disses, give my ass some kisses
Yeah they know what this is, give bitches the business

[Verse 2: Nicki Minaj]
Cause I pull up and I?m stuntin but I ain''t a stuntman
Yes I?m rockin Jordans but I ain''t a jumpman
Bitches play the back cause they know I?m the frontman
Put me on a dollar cause I?m who they trust in
Ayo SB, what the fuck?s good?
We ship platinum, them bitches is shippin'' wood
Them nappy headed hoes, but my kitchen good
I wish I wish I wish I wish a bitch would

[Hook: Nicki Minaj]
You a stupid ho, you a, you a stupid ho
Yeah, you a stupid ho, you a, you a stupid ho

[Verse 3: Nicki Minaj]
Look Bubbles, go back to ya habitat
MJ gone and I ain''t havin that
How you gonna be the stunt double to the nigga monkey??
Top of that I?m in the Phantom lookin hella chonky

[Interlude: Nicki Minaj]
Ice my wrist-es then I piss on bitches
You could suck my diznick, if you take these jizzes
You don?t like them disses, give my ass some kisses
Yeah they know what this is, give bitches the business

[Verse 4: Nicki Minaj]
Cause I pull up in the Porsche but it ain''t de Rossi
Pretty bitches only could get in my posse
Yes my name is Roman, last name is Zolanski
But no relation to Roman Polanski
Hey, yo Baby Bop, fuck you and your EP
Who?s gassing this ho? BP?
Hmm.. thinks
1, 2, 3, do the Nicki Minaj blink
These hoes so busted, hoes is so crusty
These bitches is my sons and I don''t want custody
These hoes so busted, hoes is so crusty
These bitches is my sons and I don''t want custody
 

[Hook: Nicki Minaj]
You a stupid ho, you a, you a stupid ho
Yeah, you a stupid ho, you a, you a stupid ho

[Verse 5: Nicki Minaj]
If you cute, then your crew can roll
If you sexy, eat my cucka roll
Put ya cape on, you a super ho
Twenty twelve, I?m at the Super Bowl
Stupid hoes is my enemy, stupid hoes is so wack
Stupid ho shoulda befriended me then she coulda prolly came back
Stupid hoes is my enemy, stupid hoes is so wack
Stupid ho shoulda befriended me then she could''ve probably came back
You a stupid ho, you a stupid ho, you a stupid ho
And I ain''t hit that note but fuck a stupid ho
I said fuck a stupid ho and fuck a stupid ho
I said fuck a stupid ho and fuck a stupid ho

[Outro: Nicki Minaj]
I am the female Weezy', 2)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (22, N'Turn Me On', N'[Verse 1: Nicki Minaj]
Doctor, doctor, need you back home, baby
Doctor, doctor, where ya at?, give me something
I need your love, I need your love, I need your lovin''
You got that kind of medicine that keeps me comin''

[Pre-Chorus 1: Nicki Minaj]
My body needs a hero, come and save me
Something tells me you know how to save me
I''ve been feeling weird, oh
Oh, I need you to come and rescue me

[Chorus: Nicki Minaj]
Make me come alive, come on and turn me on
Touch me, save my life, come on and turn me on
I''m too young to die, come on and turn me on
Turn me on, turn me on, turn me on, turn me on
Make me come alive, come on and turn me on
Touch me, save my life, come on and turn me on
I''m too young to die, come on and turn me on
Turn me on, turn me on, turn me on, turn me on

[Verse 2: Nicki Minaj]
Boy, you make it, make it right
My temperature is super high
If I scream, if I cry
It''s only ''cause I feel alive

[Pre-Chorus 1: Nicki Minaj]
My body needs a hero, come and save me
Something tells me you know how to save me
I''ve been feeling weird, oh
Oh, I need you to come and rescue me

[Chorus: Nicki Minaj]
Make me come alive, come on and turn me on
Touch me, save my life, come on and turn me on
I''m too young to die, come on and turn me on
Turn me on, turn me on, turn me on, turn me on
Make me come alive, come on and turn me on
Touch me, save my life, come on and turn me on
I''m too young to die, come on and turn me on
Turn me on, turn me on, turn me on, turn me on

[Bridge: Nicki Minaj]
You''ve got my life in the palm of your hand
Come save me now, I know you can (Ah, ah)

[Verse 3: Nicki Minaj]
D-d-d-d-don''t let me die young
I just want you to father my young
I just want you to be my doctor
We can get it cracking, chiropractor
 

[Pre-Chorus 2: Nicki Minaj]
I-I-I-I-I-I-I-I-I
I know you can save me and make me feel alive

[Chorus: Nicki Minaj]
Make me come alive, come on and turn me on
Touch me, save my life, come on and turn me on
I''m too young to die, come on and turn me on
Turn me on, turn me on, turn me on, turn me on', 2)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (23, N'Va Va Voom', N'[Verse 1]
Just met a boy, Just met a boy when
He can come inside of my playpen
Cause he look like a superstar in the making
So I think that I''m going in for the taking
Hear through the grapevine that he''s cakin''
We can shoot a movie he can do the tapin''
Boom boom pow, this thing be shakin''
I ain''t even tryna find out who he datin''

[Hook]
Cause I know he got a wife at home
But I need just one night alone
If he keep playin them g-g-games
I''mma run away (ay) I''mma run away (ay ay)
I-I-I wanna give you one last option
I-I-I wanna give you one last chance
If-If you looking for the main attraction
Just hold on tight and let me do my dance

If you want it I''m gonna be va va voom voom
If you got it you got it you got that boom boom
If you want it I''m gonna be va va voom voom
If you got it you got it you got that boom boom

[Verse 2]
Just met a boy, Just met a boy when
He can become my little problem
Cause it look like he modeling clothes in Dublin
So I think he that getting that green, a goblin
Hear through the grapevine that he hang low
We can shoot a movie, we can bang like Rambo
Boom boom pow, this thing so bingo
Wondering if he can understand my lingo

[Hook]
Cause I know he got a wife at home
But I need just one night alone
If he keep playin them g-g-games
I''mma run away (ay) I''mma run away (ay ay)
I-I-I wanna give you one last option
I-I-I wanna give you one last chance
If-If you looking for the main attraction
Just hold on tight and let me do my dance

[Bridge]
Boy, I''m in this club slow-mo, don''t mind if I do
And I can tell you feeling me from the jump, I wanna ride too
You got that hot shit, boy, you blessed, let me feel up on your chest
Flex it, you the man, you the man, one-hundred grand
The same old game blow, yes, I play it very well
Come baby, lay it down, let me stay down
Let me show you how I run things in my playground
Come and get this va va voom voom (woo woo)

[Hook]
Cause I know he got a wife at home
But I need just one night alone
If he keep playin them g-g-games
I''mma run away (ay) I''mma run away (ay ay)
I-I-I wanna give you one last option
I-I-I wanna give you one last chance
If-If you looking for the main attraction
Just hold on tight and let me do my dance', 2)
INSERT [dbo].[songs] ([id], [title], [lyrics], [album_id]) VALUES (24, N'Masquerade', N'[Verse 1]
Feel the beat of the drum
Move like ya really wanna be number 1
You can beat out the comp
Run like ya really wanna be at the top (stop)
Adrenaline rush ''cus...
You have been identified as a hustla''
Topic of the discussion but beat it like a percussion
And chuck the deuce up and tell ''em it''s just love

[Refrain]
Damn diggity-dog
Let them bums stay mad ''cus we livin'' it up
Shelltops is on
And I''m popping like, I''m popping like, I''m popping some corn

[Pre-Hook]
And now, I don''t wanna take you
If we fall down don''t get upset
And now is just the beginning
And we''ll figure it out somehow

[Hook]
Right now, masquerade
Master the merry go round
Right now, masquerade
Master the merry go round
Right now...
It''s something you create
It''s never ever too late
It''s never ever too late
Right now...
Okay to make a mistake
Yeah, baby, this is your day
It''s time to masquerade

[Verse 2]
Bass, bass
Feel the bass in ya face
Hit the finish line, first place in the race
Yes, King Kong on ya chest
Running and I''m coming to baton to ya left
Yup, you can be who you want
Be who you is, never be who you aren''t
Never, ever fold under pressure
Desperate times get desperate measure

[Refrain] + [Pre-Hook] + [Hook]

[Bridge]
Imma call your afro cause you never ball
Fuck all ya bitches and don''t never call
Next day, suck my teste
I ain''t playing games
Bitch, but checkmate, checkmate
Breaker 1-9, Breaker 1-9, Breaker 1-9
All my party people lemme see you one time', 2)
SET IDENTITY_INSERT [dbo].[songs] OFF
