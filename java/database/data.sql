BEGIN TRANSACTION;

--Users
INSERT INTO users (username,password_hash,role) VALUES ('user@example.com','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin@example.com','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');
INSERT INTO users (username,password_hash,role) VALUES ('drake@drake.com', '$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC', 'ROLE_BAND');
INSERT INTO users (username,password_hash,role) VALUES ('rihanna@rihanna.com', '$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC', 'ROLE_BAND');
INSERT INTO users (username,password_hash,role) VALUES ('thebeatles@thebeatles.com', '$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC', 'ROLE_BAND');
INSERT INTO users (username,password_hash,role) VALUES ('taylorswift@taylorswift.com', '$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC', 'ROLE_BAND');

--Bands
INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('Drake', 'Aubrey Drake Graham (born October 24, 1986), known mononymously as Drake, is a Canadian rapper, singer, and actor. An influential figure in popular music, he has been credited with popularizing R&B sensibilities in hip hop artists. Gaining recognition by starring as Jimmy Brooks in the CTV teen drama series Degrassi: The Next Generation (2001–2008), Drake began his recording career in 2006 with the release of his debut mixtape, Room for Improvement (2006). He followed up with the mixtapes Comeback Season (2007) and So Far Gone (2009) before signing with Young Money Entertainment.', 3, 'https://res.cloudinary.com/dfxvcpj23/image/upload/v1727715299/iwussu1yrp4nlpml4efa_kajbzq.webp');
INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('Rihanna', 'Robyn Rihanna Fenty (/riˈænə/ ⓘ ree-AN-ə; born February 20, 1988) is a Barbadian singer, businesswoman and actress based in the United States. She was cited as the best-selling female recording artist of the 21st century by Guinness World Records and is the wealthiest female musical artist, with an estimated net worth of $1.4 billion as of 2024. Rihanna is the highest-certified female digital single artist and has six U.S. diamond certified singles (seven as a featured artist). She has achieved 14 number-one singles on the Billboard Hot 100. The recipient of various accolades, Rihanna is one of the best-selling recording artists ever, with sales estimated at 250 million units worldwide.', 4, 'https://res.cloudinary.com/dfxvcpj23/image/upload/v1727715794/Rihanna-Fenty-Hair-Launch-GettyImages-2157052912-H-2024_ocf8ih.webp');
INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('The Beatles', 'The Beatles were an English rock band formed in Liverpool in 1960. The core lineup of the band comprised John Lennon, Paul McCartney, George Harrison and Ringo Starr. They are widely regarded as the most influential band of all time and were integral to the development of 1960s counterculture and the recognition of popular music as an art form. Rooted in skiffle, beat and 1950s rock n roll, their sound incorporated elements of classical music and traditional pop in innovative ways. The band also explored music styles ranging from folk and Indian music to psychedelia and hard rock. As pioneers in recording, songwriting and artistic presentation, the Beatles revolutionized many aspects of the music industry and were often publicized as leaders of the era youth and sociocultural movements.', 5, 'https://res.cloudinary.com/dfxvcpj23/image/upload/v1727716027/the-beatles-rehearse-for-that-nights-royal-variety-performance-at-the-prince-of-wales-theatre-4th-november-1963-the-queen-mother-will-attend-photo-by-central-press_hulton-archive_getty-images_uk6oyh.jpg');
INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('Taylor Swift', 'Taylor Alison Swift (born December 13, 1989) is an American singer-songwriter. Known for her autobiographical songwriting, artistic reinventions, and cultural impact, Swift is a leading figure in popular music and the subject of widespread public interest.', 6, 'https://res.cloudinary.com/dfxvcpj23/image/upload/v1727716174/taylor-swift-red-carpet_hqtg3z.jpg');
INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('Morgan Wallen', 'Morgan Cole Wallen (born May 13, 1993) is an American country pop singer. He competed in the sixth season of The Voice, originally as a member of Ushers team, but later as a member of Adam Levines team. After being eliminated in the playoffs of that season, he signed to Panacea Records, releasing his debut EP, Stand Alone, in 2015.', 6, 'https://res.cloudinary.com/dfxvcpj23/image/upload/v1727716353/2203-morgan-wallen.990x660_jk8vmj.jpg');
INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('Chris Stapleton', 'Kentucky-born artist Chris Stapleton is a 10x Grammy, 16x CMA and 15x ACM Award-winner and one of the country’s most respected and beloved musicians. In the past year, he’s been named Entertainer of the Year at the 58th ACM Awards—resulting in the prestigious ACM Triple Crown Award—and Male Vocalist of the Year at the 2022 CMA Awards—his sixth time earning the award, setting the record for most wins ever in the category.', 6, 'https://res.cloudinary.com/dfxvcpj23/image/upload/v1727790001/1_6Ju6KHPQR6oOoswk5UmuVw_znm4wb.jpg');
INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('Mumford & Sons', 'Mumford & Sons rose to prominence in 2009, releasing debut album Sigh No More. With folk music at its nucleus, the band took a propulsive, heart-on-sleeve approach to playing their acoustic instruments, spawning the likes of Little Lion Man and The Cave. Whatever Mumford & Sons were doing, it connected emphatically, garnering a first BRIT Award for British Album and 6 Grammy nominations.', 5, 'https://res.cloudinary.com/dfxvcpj23/image/upload/v1727962370/channels4_profile_ki2jxv.jpg');

--Image links needed
--INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('Men I Trust', 'Men I Trust is a Canadian indie band formed in Montreal, Quebec, in 2014. The band consists of Emmanuelle Proulx (lead vocals, guitar), Jessy Caron (guitar, bass), and Dragos Chiriac (keyboards). The group has self-released all of their music and has released physical editions on the Canadian indie label Return to Analog.', '', '');
--INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('Duster', 'Duster is an American indie rock band from San Jose, California that was formed in 1996. The group has consisted of multi-instrumentalists Clay Parton, Canaan Dove Amber, and Jason Albertini for most of its history; Albertini left the band in 2022. Duster were closely associated with the burgeoning slowcore and space rock revival movements during the 1990s.', '', '');
--INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('The Marías', 'The Marías is an American indie pop band from Los Angeles, California. They are known for performing songs in both English and Spanish, as well as infusing their music with elements like jazz percussion, guitar riffs, and horn solos. Their core lineup consists of lead vocalist María Zardoya and drummer/producer Josh Conway, guitarist Jesse Perlman, and keyboardist Edward James.', '', '');
--INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('Inner Wave', 'Inner Wave is an alternative indie-pop band from Los Angeles, California. They are known for their blend of psychedelic and synthwave sounds weaving in indie rock elements, jazz chords, Latin beats, and smooth vocals.[1] Pablo Sotelo is the lead vocalist and guitarist with Jean Pierre Narvaez on the bass and Elijah Trujillo on the guitar. Sotelo, Narvaez, and Trujillo, the founding members of the band, are now joined by drummer Luis Portillo and sound engineer and keyboardist Jose Cruz', '', '');
--INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('The Weekend', 'Abel Makkonen Tesfaye (born February 16, 1990), known professionally as the Weeknd, is a Canadian singer-songwriter.[2][3] He is known for his unconventional musical production, artistic reinventions and use of the falsetto register. Tesfaye has sold over 75 million records, making him one of the world''s best-selling artists.', '', '');
--INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('Ludovico Einaudi', 'Ludovico Maria Enrico Einaudi OMRI (born 23 November 1955) is an Italian pianist and composer. Trained at the Conservatorio Verdi in Milan, Einaudi began his career as a classical composer, later incorporating other styles and genres such as pop, rock, folk, and world music.', '', '');
--INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('Gibran Alcocer', 'Gibran Alcocer, a 21-year-old pianist, composer, and producer hailing from Yucatán, Mexico, has been immersed in music since childhood. He kicked off his musical journey by taking piano lessons, eventually diving into classical music studies. His knack for composition and production emerged at the age of 12.', '', '');
--INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('Martin Hayes Quartet', 'The Martin Hayes Quartet expands on many of the musical ideas pursued by Martin in his longstanding partnership with Dennis Cahill. The melody still remains central but now with an added range of sonic possibilities provided by the bass clarinet and viola d''amore. The addition of these instruments creates an added aural texture and amplifies the rhythmic possibilities while also allowing a larger role for improvisation.  Both Doug and Liz bring a wealth of musical experience that contributes to the spacious, rich arrangements of the Quartet.', '', '');
--INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('Brian Crain', 'Brian was born in Hollywood, California. He has been composing music as long as he can remember. Family members tell him that when he was very young he began whistling nearly all the time. When someone would ask what he was whistling, Brian would usually answer something like, "I don''t know. I just made it up."', '', '');
--INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('Fabrizio Paterlini', 'Paterlini began playing piano at six-years-old. From the first moment he stroked the keys his life irrevocably changed, music becoming “a choice made every day...explored in all its aspects.” And so music and his life’s path became, and remain, inextricably linked; while he progresses as a musician and composer, so his development as a human being runs parallel. Formal study in his chosen artistic endeavour came with five years at Campiani’s Academy, Mantua’s Academy of Arts, from where he graduated in Music Theory.', '', '');
--
--INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('Jim Croce', '', '', '');
--INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('', '', '', '');
--INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('', '', '', '');
--INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('', '', '', '');
--INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('', '', '', '');
--INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('', '', '', '');
--INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('', '', '', '');
--INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('', '', '', '');
--INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('', '', '', '');
--INSERT INTO bands (band_name, band_description, band_manager_id, band_hero_image) VALUES ('', '', '', '');

--Users following bands
INSERT INTO user_band (user_id, band_id) VALUES (1, 3), (1, 5), (1, 1);

--Images
INSERT INTO images (band_id, image_link) VALUES (4, 'https://res.cloudinary.com/dhgcjy2pf/image/upload/v1727978501/singer-Taylor-swift-2013_nbzrsl.webp');
INSERT INTO images (band_id, image_link) VALUES (4, 'https://res.cloudinary.com/dhgcjy2pf/image/upload/v1727978381/Taylor-Swift-concert-yellow-dress-GettyImages-2015112497-2400x1600-1_ldmruc.webp');
INSERT INTO images (band_id, image_link) VALUES (4, 'https://res.cloudinary.com/dhgcjy2pf/image/upload/v1727978408/240927-taylor-swift-republicans-kh-513629_eia5cy.webp');
INSERT INTO images (band_id, image_link) VALUES (4, 'https://res.cloudinary.com/dhgcjy2pf/image/upload/v1727978042/IBYTAM_still-page_yk4vjm.jpg');
INSERT INTO images (band_id, image_link) VALUES (4, 'https://res.cloudinary.com/dhgcjy2pf/image/upload/v1727977890/VF1421_Taylor_Swift_Lede_qlev8u.webp');
INSERT INTO images (band_id, image_link) VALUES (4, 'https://res.cloudinary.com/dhgcjy2pf/image/upload/v1727978430/taylor-swift-red-carpet_zkkype.jpg');
INSERT INTO images (band_id, image_link) VALUES (4, 'https://res.cloudinary.com/dhgcjy2pf/image/upload/v1727978064/download_t058lp.webp');

--Messages
INSERT INTO messages (message_content, message_time_sent, message_time_expiration, message_sender) VALUES ('Hello', '2024-10-01 13:12:00', '2024-10-14 13:12:00', 3);
INSERT INTO messages (message_content, message_time_sent, message_time_expiration, message_sender) VALUES ('Cheerio, g-day mate,', '2024-10-01 13:12:00', '2024-10-31 13:12:00', 2);
INSERT INTO messages (message_content, message_time_sent, message_time_expiration, message_sender) VALUES ('Howdy padner', '2024-10-01 13:12:00', '2024-10-11 13:12:00', 3);
INSERT INTO messages (message_content, message_time_sent, message_time_expiration, message_sender) VALUES ('This is an expired message. It should not be visible.', '2024-09-01 13:12:00', '2024-10-01 13:12:00', 3);
INSERT INTO messages (message_content, message_time_sent, message_time_expiration, message_sender) VALUES ('Sup', '2024-10-02 13:12:00', '2024-10-16 13:12:00', 1);
INSERT INTO messages (message_content, message_time_sent, message_time_expiration, message_sender) VALUES ('Sup', '2024-10-02 13:12:00', '2024-10-16 13:12:00', 4);
INSERT INTO messages (message_content, message_time_sent, message_time_expiration, message_sender) VALUES ('Hey there', '2024-10-02 13:12:00', '2024-10-16 13:12:00', 5);
INSERT INTO messages (message_content, message_time_sent, message_time_expiration, message_sender) VALUES ('You should probably leave', '2024-10-03 09:31:00', '2024-10-17 09:31:00', 6);
INSERT INTO messages (message_content, message_time_sent, message_time_expiration, message_sender) VALUES ('I really messed it up this time, didn''t I, my dear?', '2024-10-03 13:35:00', '2024-10-17 13:35:00', 7);

--Genres
INSERT INTO genres (genre_name) VALUES ('blues'), ('classical'), ('country'), ('electronic'), ('folk'), ('hip-hop'), ('jazz'), ('latin'), ('new age'), ('pop'), ('r&b'), ('reggae'), ('rock');

--Genres matched with bands
INSERT INTO band_genre (band_id, genre_id) VALUES (1, 6), (2, 6), (2, 10), (3, 5), (3, 10), (3, 13), (4, 3), (4, 5), (4, 10), (5, 3), (6, 3), (6, 13), (7, 5), (7, 13);

--Events
INSERT INTO events (event_time, event_venue, event_address, event_host)
	VALUES ('2024-10-12T19:30:00','Bogarts', 'Cincinnati, OH', 1);
INSERT INTO events (event_time, event_venue, event_address, event_host)
	VALUES ('2024-10-15T20:00:00','Paycor Stadium', 'Cincinnati, OH', 4);
INSERT INTO events (event_time, event_venue, event_address, event_host, event_name)
	VALUES ('2024-10-22T20:00:00','Lucas Oil Stadium', 'Indianapolis, IN', 4, 'Eras Tour');
INSERT INTO events (event_time, event_venue, event_address, event_host)
	VALUES ('2024-10-20T20:00:00','Riverbend', 'Cincinnati, OH', 5);

--Match messages to users
INSERT INTO message_user (message_id, user_id, is_read)
    SELECT messages.message_id, users.user_id, FALSE
    FROM messages
    JOIN user_band ON messages.message_sender = user_band.band_id
    JOIN users ON user_band.user_id = users.user_id;

COMMIT TRANSACTION;
