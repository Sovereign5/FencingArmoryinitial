SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

DROP TABLE IF EXISTS `prices`;
CREATE TABLE 'prices' (
            'fixID' tinyint(2) NOT NULL,
            'itemToFix' varchar(20),
            'problem' varchar(20),
            'price' decimal(13,2)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
            
ALTER TABLE 'prices'
    ADD PRIMARY KEY ('fixID');

INSERT INTO ‘prices’ (‘fixID’, ‘itemToFix’, ‘problem’, ‘price’) VALUES
(1, ‘foil’, ‘barrel’, 8),
(2, ‘foil’, ‘rewire’, 25),
(3, ‘foil’, ‘blade’, 125),
(4, ‘foil’, ‘rewire and barrel’, 45),
(5, ‘foil’, ‘socket’, 25),
(6, ‘epee’, ‘barrel’, 9),
(7, ‘epee’, ‘rewire’, 28),
(8, ‘epee’, ‘blade’, 130),
(9, ‘epee’, ‘rewire’, 28),
(10, ‘epee’, ‘rewire and barrel’, 50),
(11, ‘saber’, ‘socket’, 10),
(12, ‘saber’, ‘blade’, 110),
(13, ‘body cord’, ‘rewire’, 11),
(14, ‘mask cord’, ‘rewire’, 9),
(15, ‘mask’, ‘bib’, 95),
(16, ‘lame’, ‘patch’, 22),
(17, ‘lame’, ‘print name’, 28),
(18, ‘foil’, ‘handle’, 13),
(19, ‘epee’, ‘handle’, 12),
(20, ‘saber’, ‘handle’, 9));


ALTER TABLE 'prices'
    MODIFY 'fixID' tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;


DROP TABLE IF EXISTS `users`;
CREATE TABLE 'users' (
            'userID' tinyint(2) NOT NULL,
            'ticketID' tinyint(2),
            'username' varchar(20),
            'password' varchar(20)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
            
ALTER TABLE 'users'
    ADD PRIMARY KEY ('userID');

INSERT INTO ‘users’’ (‘userID’, ‘ticketID’, ‘username’, ‘password’) VALUES
(1, 1, ‘jFischer5’, ‘ollietooth’ ),
(2, 2, ‘theChamp’, ‘helloworld’),
(3, 3, ‘worldbest’, ‘javalinthrow’),
(4, 4, ‘mrFencer’, ‘myPasscode’),
(5,  5, ‘foilLegend’, ‘123Password’),
(6,  6, ‘saberLegend’, ‘MySecretCode’),
(7, 7, ‘UriahHeap’, ‘j9w763’),
(8, 8, ‘epeeMan’, ‘yangus32’),
(9, 9, ‘lungeTouche’, ‘beAjj3),
(10, 10, ‘pistolGrip’, ‘twogirlsonecompiler’),
(11, 11, ‘Joppich’, ‘jsoessjfs’),
(12, 12, ‘tutonicChamp’, ‘howhfier’),
(13, 13, ‘byungChoi’, ‘osjierer’),
(14,14, ‘fencingninja’, ‘joejifjaz’),
(15, 15, ‘leftymagic’, ‘shwooskc’),
(16, 16, ‘svariaya’, ‘basoonmango’),
(17, 17, ‘Itkin’, ‘slfjsjfsa’),
(18, 18, ‘harleyRace’, ‘nvmxslf’),
(19, 19, ‘foilist’, ‘xhxmm23’),
(20, 20, ‘Bluhandle’, ‘manowwwq’));

ALTER TABLE 'users'
    MODIFY 'userID' tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE 'tickets'(
	'ticketID' INT,
            'userID' tinyint(2),
            'brokenItem' varchar(20),
            'problem' varchar(20)
            'fixStatus' varchar(20) DEFAULT ‘Not Fixed’ )ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
            
ALTER TABLE 'tickets'
    ADD PRIMARY KEY ('ticketID');

INSERT INTO ‘tickets’(‘ticketID’, ‘userID’, ‘brokenItem’, ‘problem’, ‘fixStatus’) VALUES
(1, 1, ‘body cord’, ‘rewire’, ‘Not Fixed’ ),
(2, 2, ‘epee’, ‘barrel’, ‘Not Fixed’),
(3, 3, ‘saber’, ‘new blade’, ‘Fixed’),
(4, 4, ‘foil’, ‘new socket’, ‘Fixed’),
(5,  5, ‘foil’, ‘rewire’, ‘Fixed’),
(6,  6, ‘body cord’, ‘rewire’ ‘Not Fixed’ ),
(7, 7, ‘mask’, ‘new bib’, ‘Not Fixed’),
(8, 8, ‘epee’, ‘new blade’, ‘Not Fixed’),
(9, 9, ‘saber’, ‘new blade’, ‘Not Fixed’),
(10, 10, ‘epee’, ‘new barrel’, ‘Not Fixed’),
(11, 11, ‘foil’, ‘rewire’, ‘Fixed’),
(12, 12, ‘lame’, ‘patch’, ‘Not Fixed’),
(13, 13, ‘foil’, ‘barrel and rewire’, ‘Not Fixed’),
(14,14, ‘body cord’, ‘rewire’ ‘Not Fixed’),
(15, 15, ‘epee’, ‘rewire’ ‘Not Fixed’),
(16, 16, ‘lame’, ‘patch’ ‘Fixed’),
(17, 17, ‘foil’, ‘rewire’ ‘Fixed’),
(18, 18, ‘epee’, ‘new handle’ ‘Not Fixed’),
(19, 19, ‘foil’, ‘new barrel’, ‘Not Fixed’),
(20, 20, ‘mask cord’, ‘rewire’ ‘Fixed’));

ALTER TABLE ‘tickets’
    MODIFY 'ticketID' INT NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;
