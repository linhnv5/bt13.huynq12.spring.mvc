create table if not exists user (
	id bigint not null auto_increment,
	user varchar(255) not null,
	pass varchar(255) not null,
	role longtext not null,
	email varchar(255),
	fullname varchar(255),
	primary key (id)
) engine=InnoDB;

create table if not exists application (
	id varchar(255) not null,
	title varchar(255) not null,
	description varchar(10000) not null,
	rate float not null,
	image varchar(255),
	url varchar(255),
	primary key (id)
) engine=InnoDB;

insert into user(user, pass, role) VALUES
	("ljnk975", "12345", "ADMIN"),
    ("user", "12345", "USER"),
    ("yoga", "12345", "USER");

insert into application(id, title, image, rate, description, url) VALUES
	("facebook", "Facebook", "https://image.winudf.com/v2/image1/Y29tLmZhY2Vib29rLmthdGFuYV9pY29uXzE1NTc5OTAwMzBfMDIz/icon.png?w=170&fakeurl=1", 4.5,
				"Keeping up with friends is faster and easier than ever. Share updates and photos, engage with friends and Pages, and stay connected to communities important to you.\r\n
				\r\n
				Features on the Facebook app include:\r\n
				\r\n
				* Connect with friends and family and meet new people on your social media network\r\n
				* Set status updates & use Facebook emoji to help relay what’s going on in your world\r\n
				* Share photos, videos, and your favorite memories.\r\n
				* Get notifications when friends like and comment on your posts\r\n
				* Find local social events, and make plans to meet up with friends\r\n
				* Play games with any of your Facebook friends\r\n
				* Backup photos by saving them in albums\r\n
				* Follow your favorite artists, websites, and companies to get their latest news\r\n
				* Look up local businesses to see reviews, operation hours, and pictures\r\n
				* Buy and sell locally on Facebook Marketplace\r\n
				* Watch live videos on the go\r\n
				\r\n
				\r\n
				The Facebook app does more than help you stay connected with your friends and interests. It's also your personal organizer for storing, saving and sharing photos. It's easy to share photos straight from your Android camera, and you have full control over your photos and privacy settings. You can choose when to keep individual photos private or even set up a secret photo album to control who sees it.\r\n
				\r\n
				Facebook also helps you keep up with the latest news and current events around the world. Subscribe to your favorite celebrities, brands, news sources, artists, or sports teams to follow their newsfeeds, watch live streaming videos and be caught up on the latest happenings no matter where you are!\r\n
				\r\n
				The most important desktop features of Facebook are also available on the app, such as writing on timelines, liking photos, browsing for people, and editing your profile and groups.\r\n
				\r\n
				Now you can get early access to the next version of Facebook for Android by becoming a beta tester. Learn how to sign up, give feedback and leave the program in our Help Center: http://on.fb.me/133NwuP\r\n
				\r\n
				Sign up directly here:\r\n
				http://play.google.com/apps/testing/com.facebook.katana\r\n
				\r\n
				Problems downloading or installing the app? See http://bit.ly/GPDownload1\r\n
				Still need help? Please tell us more about the issue. http://bit.ly/invalidpackage\r\n
				\r\n
				Facebook is only available for users age 13 and over.\r\n
				Terms of Service: http://m.facebook.com/terms.php.",
				"#"),
		("messenger", "Messenger", "https://image.winudf.com/v2/image1/Y29tLmZhY2Vib29rLm9yY2FfaWNvbl8xNTU1NDY0Nzc5XzAxNQ/icon.png?w=170&fakeurl=1", 4.0,
				"Be together whenever with a simple way to text, video chat and rally the group.\r\n
				\r\n
				* SEND A MESSAGE -Skip exchanging phone numbers, just send a message. It's seamless across devices.\r\n
				* CUT DOWN GLARE WITH DARK MODE. Dark mode is a sleek new look that goes easy on the eyes by switching the background from white to black.\r\n
				* SHOW YOUR REACTION - Add a silly sticker, send a dancing GIF and use emojis to express yourself better.\r\n
				* SHARE PHOTOS AND VIDEOS - Capture the moment with the Messenger Camera, add a filter or doodle, then send to friends or share to Stories.\r\n
				* RALLY THE GROUP - Make plans to get together with polls, share your location, split the bill and more.\r\n
				* HOP ON A CALL OR VIDEO CHAT - Hang out anywhere, anytime by getting on call or a group video** chat — filters optional :) **Calls are free over Wi-Fi but otherwise standard data charges apply.\r\n
				* SEND A VOICE MESSAGE - When text just won't cut it, just hit record and send say, sing or shout it out loud.\r\n
				* SEND MONEY SECURELY AND EASILY (within US, UK and France only) - Send and receive money from friends in the app by adding your debit card or PayPal* account. *PayPal available in the US only.\r\n
				* SHARE YOUR LOCATION - Suggest a meeting spot or tell friends where you are by sharing your location with just a few taps.\r\n
				* CHAT WITH BUSINESSES - Easily connect with your favorite businesses to make reservations, get customer support, find deals and more.\r\n
				* PLAY GAMES WITH FRIENDS - Challenge friends, climb leaderboards, and discover your next gaming obsession.\r\n
				* BRING SMS INTO MESSENGER - No need to open multiple apps to stay in touch. Use one app for SMS and Messenger.",
				"#"),
		("instagram", "Instagram", "https://image.winudf.com/v2/image1/Y29tLmluc3RhZ3JhbS5hbmRyb2lkX2ljb25fMTU1NTQ0NDM0N18wMTk/icon.png?w=170&fakeurl=1", 4.2,
				"Instagram is a simple way to capture and share the world’s moments. Follow your friends and family to see what they’re up to, and discover accounts from all over the world that are sharing things you love. Join the community of over 1 billion people and express yourself by sharing all the moments of your day — the highlights and everything in between, too.\r\n
				\r\n
				Use Instagram to:\r\n
				\r\n
				* Post photos and videos you want to keep on your profile grid. Edit them with filters and creative tools and combine multiple clips into one video.\r\n
				* Browse photos and videos from people you follow in your feed. Interact with posts you care about with likes and comments.\r\n
				* Share multiple photos and videos (as many as you want!) to your story. Bring them to life with text, drawing tools and other creative effects. . They disappear after 24 hours and won’t appear on your profile grid or in feed.\r\n
				* Go live to connect with your friends in the moment. Try going live with a friend and sharing a replay to your story when you’re done.\r\n
				* Message your friends privately in Direct. Send them photos and videos that disappear and share content you see on Instagram.\r\n
				* Watch stories and live videos from the people you follow in a bar at the top of your feed.\r\n
				* Discover photos, videos and stories you might like and follow new accounts on the Explore tab.",
				"#"),
		("youtube", "Youtube", "https://image.winudf.com/v2/image1/Y29tLmdvb2dsZS5hbmRyb2lkLnlvdXR1YmVfaWNvbl8xNTU1MTE3NTQ3XzA5NA/icon.png?w=170&fakeurl=1", 4.0,
				"Get the official YouTube app for Android phones and tablets. See what the world is watching -- from the hottest music videos to what’s trending in gaming, entertainment, news, and more. Subscribe to channels you love, share with friends, and watch on any device.\r\n
				\r\n
				With a new design, you can have fun exploring videos you love more easily and quickly than before. Just tap an icon or swipe to switch between recommended videos, your subscriptions, or your account. You can also subscribe to your favorite channels, create playlists, edit and upload videos, express yourself with comments or shares, cast a video to your TV, and more – all from inside the app.\r\n
				\r\n
				FIND VIDEOS YOU LOVE FAST\r\n
				\r\n
				• Browse personal recommendations on the Home tab\r\n
				\r\n
				• See the latest from your favorite channels on the Subscriptions tab\r\n
				\r\n
				• Look up videos you’ve watched and liked on the Account tab\r\n
				\r\n
				CONNECT AND SHARE\r\n
				\r\n
				• Let people know how you feel with likes, comments, and shares\r\n
				\r\n
				• Upload and edit your own videos with filters and music – all inside the app",
				"#"),
		("steam", "Steam", "https://image.winudf.com/v2/image1/Y29tLnZhbHZlc29mdHdhcmUuYW5kcm9pZC5zdGVhbS5jb21tdW5pdHlfaWNvbl8xNTUyMDg4OTMzXzA3MQ/icon.png?w=170&fakeurl=1", 3.6,
				"With the free Steam app for Android, you can participate in the Steam community wherever you go. Chat with your Steam friends, browse community groups and user profiles, read the latest gaming news and stay up to date on unbeatable Steam sales.",
				"#"),
		("gamefly", "GameFly", "https://image.winudf.com/v2/image1/Y29tLmdhbWVmbHkuYW5kcm9pZC5nYW1lY2VudGVyX2ljb25fMTU1MjU1MjMxNV8wNTA/icon.png?w=170&fakeurl=1", 3.0,
				"GameFly is the ultimate video game and movie app for Android phones and tablets.\r\n
				\r\n
				- Get info on 8,000+ games for Xbox One, Xbox 360, PS4, PS3, PS Vita, Wii U, 3DS, and more\r\n
				- Rent the latest Blu-ray and DVD movies\r\n
				- Pre-order, buy new and used, and Keep games and movies you rent\r\n
				- Check out user reviews and ratings\r\n
				- Up-to-the-minute gaming news\r\n
				- Browse screenshots and videos\r\n
				- GameFly members can manage their Q and account on the go\r\n
				\r\n
				Sign up and become a member now",
				"#"),
		("pupg", "PUPG Mobile", "https://image.winudf.com/v2/image1/Y29tLnRlbmNlbnQuaWdfaWNvbl8xNTYwMzA2NzY4XzA0Nw/icon.png?w=170&fakeurl=1", 3.5,
				"Description\r\n
				The official PLAYERUNKNOWN'S BATTLEGROUNDS designed exclusively for mobile. Play free anywhere, anytime. PUBG MOBILE delivers the most intense free-to-play multiplayer action on mobile. Drop in, gear up, and compete. Survive epic 100-player battles, and fast past 4v4 team deathmatch and zombie modes. Last one standing wins. Be the one!\r\n
				\r\n
				'Absolutely remarkable' - IGN\r\n
				'It's awesome.' - Pocket Gamer\r\n
				'Keeps players coming back' - Vice\r\n
				\r\n
				2018 Mobile Game of the Year – Golden Joystick Award\r\n
				Best Game of 2018 – GooglePlay awards\r\n
				\r\n
				FREE ON MOBILE - Play console quality gaming on the go. Delivers jaw-dropping HD graphics and 3D sound. Featuring customizable mobile controls, training modes, and voice chat. Powered by the Unreal Engine 4.\r\n
				\r\n
				MASSIVE BATTLE MAPS - Compete on four unique battlegrounds varying in size, terrain, and weather - frozen tundra, urban city spaces, and dense jungles. Master each battleground's secrets to create your own strategic approach to win.\r\n
				\r\n
				DEPTH AND VARIETY - Play Solo, Duo, and in 4-player Squads. Offers FPS (First-Person Shooter) and TPS (Third-Person Shooter) play, Classic and lightning-fast arcade modes, and an arsenal of realistic weapons and vehicles. Featuring 4v4 Team Deathmatch and Zombie modes.\r\n
				\r\n
				ADAPT & OVERCOME – You make the call. Brawl with your bare hands, frying pan or crowbar. Run and gun or fire from the shadows. Your duty? Survive by any means necessary. Every minute, day, fortnite, you are a black ops team of one.\r\n
				\r\n
				ALWAYS GROWING - Daily events & challenges, and monthly updates delivering new gameplay features and modes that keep PUBG MOBILE always growing and expanding.\r\n
				\r\n
				* Requires a stable internet connection.\r\n
				* PUBG MOBILE recommended system requirements: Android 5.1.1 or above and at least 2 GB memory.\r\n
				\r\n
				Contact us:\r\n
				Official site: http://www.pubgmobile.com\r\n
				Facebook: http://www.facebook.com/PUBGMOBILE\r\n
				Twitter: https://twitter.com/PUBGMobile\r\n
				Reddit: https://www.reddit.com/r/PUBGMobile/\r\n
				\r\n
				Please contact our customer service at PUBGMOBILE_CS@tencentgames.com if you have any questions.",
				"#"),
		("hago", "HAGO", "https://image.winudf.com/v2/image1/Y29tLnl5LmhpeW9faWNvbl8xNTU1MzQyNTk1XzA4NQ/icon.png?w=170&fakeurl=1", 4.0,
				"Play Games, Make Friends\r\n
				Get connected LIVE with gamers from different locations. Hop onto the PK battle, play and chat at the same time!\r\n
				\r\n
				Exciting Battle\r\n
				Expect weekly new additions to cute and cool games such as Sheep Fight、Knife Hit 、Fun Link and many more! Never the same!\r\n
				\r\n
				Connect with Players Everywhere\r\n
				Get online and high with gamers via voice chat anywhere — LIVE!\r\n
				\r\n
				Get Acquainted\r\n
				Get to know more friends in-game, indulge in fun conversations, and enjoy the game together!\r\n
				\r\n
				Rapid Progression Game\r\n
				Play anywhere and anytime! 3 minutes is all it takes to play to your heart's end!\r\n
				\r\n
				To know more about Hago: https://ihago.net/",
				"#"),
		("snapchat", "SnapChat", "https://image.winudf.com/v2/image1/Y29tLnNuYXBjaGF0LmFuZHJvaWRfaWNvbl8xNTU3MzI1OTc4XzA3MA/icon.png?w=170&fakeurl=1", 1.5,
				"Snapchat is the most fun way to share the moment with friends and family 👻\r\n
				\r\n
				Snapchat opens right to the camera, so you can send a Snap in seconds! Just take a photo or video, add a caption, and send it to your best friends and family. Express yourself with Filters, Lenses, Bitmojis, and all kinds of fun effects.\r\n
				\r\n
				\r\n
				SNAP 📸\r\n
				• Snapchat opens right to the camera. Tap to take a photo, or press and hold for video.\r\n
				• Add a Lens or Filter to your photo — new ones are added every day! Change the way you look, dance with your 3D Bitmoji, and discover games you can play with your face.\r\n
				• Create your own Filters to add to photos and videos — or try out Lenses made by our community!\r\n
				\r\n
				CHAT 💬\r\n
				• Stay in touch and Chat with friends with live messaging, or share your day with Group Stories.\r\n
				• Video Chat with up to 16 friends at once. You can even use Filters and Lenses!\r\n
				• Express yourself with Friendmojis — exclusive Bitmojis made just for you and a friend.\r\n
				\r\n
				DISCOVER 🔍\r\n
				• Follow friends and watch their Stories to see their day unfold.\r\n
				• Keep up to date with exclusive Stories from top publishers and creators.\r\n
				• Watch breaking news, original Shows, and community Stories — made just for your phone.\r\n
				\r\n
				SNAP MAP 🗺\r\n
				• See where your friends are hanging out, if they’ve shared their location with you.\r\n
				• Share your location with your best friends, or go off the grid with Ghost Mode.\r\n
				• Discover live Stories from the community nearby, or across the world!\r\n
				\r\n
				MEMORIES 🎞️\r\n
				• Look back on Snaps you’ve saved with free cloud storage.\r\n
				• Edit and send old moments to friends, or save them to your Camera Roll.\r\n
				• Create Stories from your favorite memories to share with friends and family.\r\n
				\r\n
				FRIENDSHIP PROFILE 👥\r\n
				• Every friendship has its own special profile to see the moments you’ve saved together.\r\n
				• Discover new things you have in common with Charms. See how long you’ve been friends, your astrological compatibility, your Bitmojis’ fashion sense, and more!\r\n
				• Friendship Profiles are just between you and a friend, so you can bond over what makes your friendship special.\r\n
				\r\n
				Happy Snapping!\r\n
				\r\n
				• • •\r\n
				\r\n
				Please note: Friends, family, and other Snapchatters can always capture or save your messages by taking a screenshot, using a camera, or otherwise. Be mindful of what you Snap!",
				"#");
