DROP DATABASE IF EXISTS `alexandrafariaAIRBNB`;
CREATE DATABASE `alexandrafariaAIRBNB`; 
USE `alexandrafariaAIRBNB`;

SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;

DROP TABLE IF EXISTS Airbnb_Users;
CREATE TABLE IF NOT EXISTS Airbnb_Users
(
	User_ID INT AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(250) NOT NULL UNIQUE,
    email_verified TINYINT(1) NOT NULL,
    identity_verified TINYINT(1) NOT NULL,
    contact_number VARCHAR(15) NOT NULL, 
    password VARCHAR(30) NOT NULL UNIQUE,
    CONSTRAINT pk_airbnb_users PRIMARY KEY (User_ID)
    );
    
INSERT INTO Airbnb_Users 
VALUES 
	(DEFAULT, 'Emma', 'Jones', 'emma.jones@worldnet.com', 1, 1, '+447812345678', 'password12345'),
    (DEFAULT, 'Jeffy', 'Thompson', 'Jeffy.Thompson@worldnet.com', 1, 1, '+447819045678', 'passwordcreate12345'),
    (DEFAULT, 'Johnson', 'Clarke', 'Johnson.Clarke@worldnet.com', 1, 1, '+447812345878', 'passcode345'),
    (DEFAULT, 'Harry', 'Wilson', 'Harry.Wilson@worldnet.com', 1, 1, '+447834345878', 'password900345'),
    (DEFAULT, 'Lily', 'Smith', 'Lily.Smith@worldnet.com', 1, 1, '+447902345878', 'passcode98345'),
	(DEFAULT, 'Mia', 'Patel', 'Mia.Patel@worldnet.com', 1, 1, '+447812345788', 'cooked12345'),
    (DEFAULT, 'Robert', 'Hall', 'Robert.Hall@worldnet.com', 1, 1, '+447812359678', 'swimmingcold125'),
    (DEFAULT, 'Charlie', 'Murphy', 'Charlie.Murphy@worldnet.com', 1, 1, '+447812345634', 'kayaking34578'),
    (DEFAULT, 'Thomas', 'Williams', 'Tom.Will@worldnet.com', 1, 1, '+447867345678', 'believetoachieve243'),
    (DEFAULT, 'Charlotte', 'Johnson', 'Char.Johnson@worldnet.com', 1, 1, '+447382345678', 'password374823'),
    (DEFAULT, 'Isabella', 'Taylor', 'bell.taylor@worldnet.com', 1, 1, '+447873345678', 'seamstress74839'),
    (DEFAULT, 'James', 'Patterson', 'Pat.James@worldnet.com', 1, 1, '+447812785678', 'AuthorOfcourse23782'),
    (DEFAULT, 'Freddy', 'Hanson', 'Fred.Ham@worldnet.com', 1, 1, '+447812347878', 'password2639562'),
    (DEFAULT, 'Lewis', 'Lee', 'Lewis.Lee@worldnet.com', 1, 1, '+447823945678', 'passcode7689'),
    (DEFAULT, 'Sophia', 'Anderson', 'Sophia.Anderson@worldnet.com', 1, 1, '+447493345678', 'Anderpasswordson37'),
    (DEFAULT, 'Michael', 'Young', 'Michael.Young78@worldnet.com', 1, 1, '+447493343778', 'paswroduic93'),
    (DEFAULT, 'Benjamin', 'Thompson', 'Ben.Thompson@worldnet.com', 1, 1, '+447492837678', 'plumber78office'),
    (DEFAULT, 'Ethan', 'White', 'Ethan.White@worldnet.com', 1, 1, '+447493345228', 'WhiteBlacksone39'),
    (DEFAULT, 'Ava', 'Brown', 'Ava.Brown27@worldnet.com', 1, 1, '+447493635678', 'Brownbear3627'),
    (DEFAULT, 'Harper', 'Turner', 'Harp.Turn@worldnet.com', 1, 1, '+447872357478', 'playstrins2837'), 
    (DEFAULT, 'Maria', 'Santos', 'Santos.Maria@worldnet.com', 1, 1, '+447907345878', 'where3948pass*'),
    (DEFAULT, 'Ahmed', 'Khan', 'Ahmed.Khan@worldnet.com', 1, 1, '+447902343878', 'passwordedit837'),
    (DEFAULT, 'Anna', 'Wirth', 'Anna.Wirth@worldnet.com', 1, 1, '+447902368878', 'do3984something'),
    (DEFAULT, 'Hans', 'Kowalski', 'Hans.Kowalski@worldnet.com', 1, 1, '+447902345998', 'differentflower983'),
    (DEFAULT, 'Ingrid', 'Anderson', 'Anderson.Ingrid@worldnet.com', 1, 1, '+447966345878', 'passwordplease948'),
    (DEFAULT, 'Diego', 'Fernandez', 'Fernandez.Diego@worldnet.com', 1, 1, '+447902342278', 'eirughe27895'),
    (DEFAULT, 'Lea', 'Gross', 'Lea.Gross@worldnet.com', 1, 1, '+447907775878', 'pass3485word'),
    (DEFAULT, 'Christian', 'Hazel', 'Christian.Hazel@worldnet.com', 1, 1, '+447922345878', '34984573pass'),
    (DEFAULT, 'Elena', 'Petrova', 'Pet.el@Worldnet.com', 1, 1, '+447459389872', 'passwrod2984'), 
    (DEFAULT, 'Samson', 'Schmidt', 'Sam.Smitty@worldnet.com', 1, 1, '+447902367878', 'passeriuthg209')
    ;
   
   
DROP TABLE IF EXISTS Profile_Photo;
CREATE TABLE IF NOT EXISTS Profile_Photo
(
	Photo_ID INT AUTO_INCREMENT,
    User_ID  INT NOT NULL UNIQUE,
    photo TEXT NOT NULL,
    CONSTRAINT pk_profile_photo PRIMARY KEY (Photo_ID),
    CONSTRAINT fk_user_id_photo FOREIGN KEY (User_ID) REFERENCES Airbnb_Users (User_ID)
    );

INSERT INTO Profile_Photo 
VALUES 
	(DEFAULT, 1, 'https://drive.google.com/file/d/1orJyO0hBeIR4qsA2LW54V1cAxRZTylDg/view?usp=sharing'),
    (DEFAULT, 2, 'https://drive.google.com/file/d/1PCnKeNZlTjMlfe-i-TIlCiQF_99FIjLs/view?usp=drive_link'),
    (DEFAULT, 3, 'https://drive.google.com/file/d/1hICNXrUr1MOC-kQCcAvP565JGcIgDHmB/view?usp=sharing'),
    (DEFAULT, 4, 'https://drive.google.com/file/d/16m7KjPvjTI2wq1ybeE3gdDyO-7VNxSWL/view?usp=sharing'),
    (DEFAULT, 5, 'https://drive.google.com/file/d/1Sq02myX7BbihmSQn9p1ZBp_D2-SQMzZ7/view?usp=drive_link'),
    (DEFAULT, 6, 'https://drive.google.com/file/d/1uSbSGumh9HNDVODv8eOfK6T7EXohSRBO/view?usp=drive_link'),
    (DEFAULT, 7, 'https://drive.google.com/file/d/1UububNHvaZwvhzQ06pMNBqUQgqquyF1W/view?usp=drive_link'),
    (DEFAULT, 8, 'https://drive.google.com/file/d/1elipak9aE9nPrZ4t3gSN9E_bY5JaRPNj/view?usp=drive_link'),
    (DEFAULT, 9, 'https://drive.google.com/file/d/1LGmSy807cJMkoLiWLjiI30JYezUkimhv/view?usp=drive_link'),
    (DEFAULT, 10, 'https://drive.google.com/file/d/1TR6WpLde0bhVwqX5STigEUlwFRgbm1Bf/view?usp=drive_link'),
    (DEFAULT, 11, 'https://drive.google.com/file/d/1MgoEt3ELtDf7hOYcJ0sFls0YVaAZ0k5z/view?usp=drive_link'),
    (DEFAULT, 12, 'https://drive.google.com/file/d/1MAjJLGj29ZXG2OMgbaolqwuykBiSHZNG/view?usp=drive_link'),
    (DEFAULT, 13, 'https://drive.google.com/file/d/1khMU8VjRHC34LX87GJW8OoIZJdV_XCZa/view?usp=drive_link'),
    (DEFAULT, 14, 'https://drive.google.com/file/d/11aZplevCFOo5aFxf9Zmt_z96qpe86y8q/view?usp=drive_link'), 
    (DEFAULT, 15, 'https://drive.google.com/file/d/1MfjXlQ1e3Wsakl3yWFqqWLvVyqJUIaAt/view?usp=drive_link'),
    (DEFAULT, 16, 'https://drive.google.com/file/d/1AphfxvgAvo_znbGs1CiE_F0HZ3mmBiOz/view?usp=drive_link'), 
    (DEFAULT, 17, 'https://drive.google.com/file/d/1wUlcGxBVzWQFvpd30Ffgn3TDu1lJeY84/view?usp=drive_link'),
    (DEFAULT, 18, 'https://drive.google.com/file/d/1O2uk4XByBJJhtGjIaDTS7VKNiqxrWp7D/view?usp=drive_link'),
    (DEFAULT, 19, 'https://drive.google.com/file/d/1FesrccBnO21fu-qO7AXNFQn0fvvdpBZI/view?usp=drive_link'),
    (DEFAULT, 20, 'https://drive.google.com/file/d/19ce3NSuGIV6f0vLSXQSXCHN2-0DPuh90/view?usp=drive_link');


DROP TABLE IF EXISTS Social_Media;
CREATE TABLE IF NOT EXISTS Social_Media
(
	Media_ID INT AUTO_INCREMENT,
    User_ID INT NOT NULL,
    Facebook_URL VARCHAR(500) UNIQUE, 
    Instagram_URL VARCHAR(500) UNIQUE,
	CONSTRAINT pk_social_media PRIMARY KEY (Media_ID),
    CONSTRAINT fk_user_id_social_media FOREIGN KEY (User_ID) REFERENCES Airbnb_Users (User_ID)
    );
    
INSERT INTO Social_Media
VALUES 
	(DEFAULT, 1, 'https://facebook.net/emma.jones3984756', 'https://instagram.net/emma.jones3984756'),
    (DEFAULT, 2, 'https://facebook.net/Jeffy.Thompson3984986', 'https://instagram.net/Jeffy.Thompson3984986'),
    (DEFAULT, 3, 'https://facebook.net/Johnson.Clarke387', 'https://instagram.net/Johnson.Clarke38786'),
    (DEFAULT, 4, 'https://facebook.net/Harry.Wilson7', 'https://instagram.net/Harry.Wilson7'),
    (DEFAULT, 5, 'https://facebook.net/Lily.Smith', 'https://instagram.net/Lily.Smith'),
	(DEFAULT, 6, 'https://facebook.net/Mia.Patel', 'https://instagram.net/Mia.Patel'),
    (DEFAULT, 7, 'https://facebook.net/Robert.Hall', 'https://instagram.net/Robert.Hall'),
    (DEFAULT, 8, 'https://facebook.net/Charlie.Murphy', 'https://instagram.net/Charlie.Murphy'),
    (DEFAULT, 9, 'https://facebook.net/Tom.Will', 'https://instagram.net/Tom.Will'),
    (DEFAULT, 10,'https://facebook.net/Char.Johnson', 'https://instagram.net/Char.Johnson'),
    (DEFAULT, 11,'https://facebook.net/bell.taylor', 'https://instagram.net/bell.taylor'),
    (DEFAULT, 12,'https://facebook.net/Pat.James34', 'https://instagram.net/Pat.James34'),
    (DEFAULT, 13,'https://facebook.net/Fred.Ham', 'https://instagram.net/Fred.Ham'),
    (DEFAULT, 14,'https://facebook.net/Lewis.Lee', 'https://instagram.net/Lewis.Lee'),
    (DEFAULT, 15,'https://facebook.net/Sophia.Anderson', 'https://instagram.net/Sophia.Anderson'),
    (DEFAULT, 16,'https://facebook.net/Michael.Young78', 'https://instagram.net/Michael.Young78'),
    (DEFAULT, 17,'https://facebook.net/Ben.Thompson', 'https://instagram.net/Ben.Thompson'),
    (DEFAULT, 18,'https://facebook.net/Ethan.White', 'https://instagram.net/Ethan.White'),
    (DEFAULT, 19,'https://facebook.net/Ava.Brown27', 'https://instagram.net/Ava.Brown27'),
    (DEFAULT, 20,'https://facebook.net/Harp.Turn', 'https://instagram.net/Harp.Turn')
    ;

DROP TABLE IF EXISTS Airbnb_Hosts;
CREATE TABLE IF NOT EXISTS Airbnb_Hosts
(
	Host_ID INT AUTO_INCREMENT,
	background_check TINYINT(1) NOT NULL,
    User_ID INT UNIQUE NOT NULL,
    CONSTRAINT pk_hosts PRIMARY KEY (Host_ID),
    CONSTRAINT fk_user_id_hosts FOREIGN KEY (User_ID) REFERENCES Airbnb_Users (User_ID)
    );

INSERT INTO Airbnb_Hosts
VALUES 
	(DEFAULT, 1, 1),
    (DEFAULT, 1, 3),
    (DEFAULT, 1, 5),
    (DEFAULT, 1, 7),
    (DEFAULT, 1, 8),
	(DEFAULT, 1, 10),
    (DEFAULT, 1, 12),
    (DEFAULT, 1, 14),
    (DEFAULT, 1, 15),
    (DEFAULT, 1, 17),
    (DEFAULT, 1, 20),
    (DEFAULT, 1, 22),
    (DEFAULT, 1, 24),
    (DEFAULT, 1, 26),
    (DEFAULT, 1, 28),
    (DEFAULT, 1, 30),
    (DEFAULT, 1, 2),
    (DEFAULT, 1, 18),
    (DEFAULT, 1, 19),
    (DEFAULT, 1, 6)
;

DROP TABLE IF EXISTS Host_accounts;
CREATE TABLE IF NOT EXISTS Host_accounts
(
	Account_ID INT AUTO_INCREMENT,
	Host_ID INT NOT NULL,
    account_holders_name VARCHAR(75) NOT NULL,
    account_sort_code CHAR(8) NOT NULL, 
    account_number CHAR(8),
    CONSTRAINT pk_account_id PRIMARY KEY (Account_ID),
    CONSTRAINT fk_account_id FOREIGN KEY (Host_ID) REFERENCES Airbnb_hosts(Host_ID)
    );

INSERT INTO Host_accounts
VALUES 
	(DEFAULT, 1, 'Emma Jones', '11-11-11', '11111111'),
    (DEFAULT, 2, 'Johnson Clarke', '22-22-22', '22222222'),
    (DEFAULT, 3, 'Lily Smith', '33-33-33', '33333333'),
    (DEFAULT, 4, 'Robert Hall', '44-44-44', '44444444'),
    (DEFAULT, 5, 'Charlie Murphy', '55-55-55', '55555555'),
	(DEFAULT, 6, 'Charlotte Johnson', '66-66-66', '66666666'),
    (DEFAULT, 7, 'James Patterson', '77-77-77', '77777777'),
    (DEFAULT, 8, 'Lewis Lee', '88-88-88', '88888888'),
    (DEFAULT, 9, 'Sophia Anderson', '99-99-99', '99999999'),
    (DEFAULT, 10, 'Benjamin Thompson', '12-12-12', '12121212'),
    (DEFAULT, 11, 'Harper Turner', '13-13-13', '13131313'),
    (DEFAULT, 12, 'Ahmed Khan', '14-14-14', '14141414'),
    (DEFAULT, 13, 'Hans Kowalski', '15-15-15', '15151515'),
    (DEFAULT, 14, 'Diego Fernandez', '16-16-16', '16161616'),
    (DEFAULT, 15, 'Christian Hazel', '23-23-23', '23232323'),
    (DEFAULT, 16, 'Samson Schmidt', '34-34-34', '34343434'),
    (DEFAULT, 17, 'Jeffy Thompson', '45-45-45', '45454545'),
    (DEFAULT, 18, 'Ethan White', '46-46-46', '46464646'),
    (DEFAULT, 19, 'Ava Brown', '67-67-67', '67676767'),
    (DEFAULT, 20, 'Mia Patel', '34-45-56', '67457823')
;

DROP TABLE IF EXISTS countries;
CREATE TABLE IF NOT EXISTS countries
(
	Country_ID INT AUTO_INCREMENT,
	country_name VARCHAR(75) NOT NULL UNIQUE,
    CONSTRAINT pk_country PRIMARY KEY (Country_ID)
    );

INSERT INTO countries
VALUES 
	(DEFAULT, 'United Kingdom'),
	(DEFAULT, 'Brazil'),
	(DEFAULT, 'Canada'),
	(DEFAULT, 'United States of America'),
	(DEFAULT, 'Germany'),
	(DEFAULT, 'Kenya'),
	(DEFAULT, 'Italy'),
	(DEFAULT, 'France'),
	(DEFAULT, 'Thailand'),
	(DEFAULT, 'Spain'),
	(DEFAULT, 'Iceland'),
	(DEFAULT, 'Egypt'),
	(DEFAULT, 'Ecuador'),
	(DEFAULT, 'Mexico'),
	(DEFAULT, 'Russia'),
	(DEFAULT, 'Australia'),
	(DEFAULT, 'New Zealand'),
	(DEFAULT, 'Japan'),
	(DEFAULT, 'Vietnam'),
	(DEFAULT, 'South Korea')
	;

DROP TABLE IF EXISTS cities;
CREATE TABLE IF NOT EXISTS cities
(
	City_ID INT AUTO_INCREMENT,
    Country_ID INT NOT NULL, 
	city_name VARCHAR(75) NOT NULL UNIQUE,
    CONSTRAINT pk_cities PRIMARY KEY (City_ID),
    CONSTRAINT fk_city_country FOREIGN KEY (City_ID) REFERENCES countries(Country_ID)
    );

INSERT INTO cities
VALUES 
	(DEFAULT, 1, 'London'), 
	(DEFAULT, 1, 'Norwich'),
	(DEFAULT, 1, 'Bristol'),
	(DEFAULT, 1, 'Birmingham'),
	(DEFAULT, 1, 'Brighton'),
	(DEFAULT, 1, 'Oxford'),
	(DEFAULT, 1, 'Cambridge'),
	(DEFAULT, 1, 'York'),
	(DEFAULT, 1, 'Nottingham'),
	(DEFAULT, 1, 'Cardiff'),
	(DEFAULT, 1, 'Edinburgh'),
	(DEFAULT, 5, 'Munich'),
	(DEFAULT, 5, 'Berlin'),
	(DEFAULT, 5, 'Bonn'),
	(DEFAULT, 5, 'Hannover'),
	(DEFAULT, 5, 'Dresden'),
	(DEFAULT, 5, 'Hamburg'),
	(DEFAULT, 5, 'Cologne'),
	(DEFAULT, 5, 'Karlsruhe'),
	(DEFAULT, 5, 'Mannheim')
	;

DROP TABLE IF EXISTS property_addresses;
CREATE TABLE IF NOT EXISTS property_addresses
(
	Address_ID INT AUTO_INCREMENT,
    City_ID INT NOT NULL, 
    street VARCHAR(250) NOT NULL, 
    zip_code VARCHAR(10) NOT NULL, 
    latitutde VARCHAR(8) NOT NULL, 
    longitude VARCHAR(9) NOT NULL,
	CONSTRAINT pk_property_address PRIMARY KEY (Address_ID),
    CONSTRAINT fk_city_address FOREIGN KEY (City_ID) REFERENCES cities(City_ID)
    );
    

INSERT INTO property_addresses
VALUES 
	(DEFAULT, 2, '67 Forest Lane', 'NR1 1AA', '52.6255', '1.3053'),
	(DEFAULT, 2, '38 Silk Road', 'NR5 5EE', '52.6414', '1.2972'),
    (DEFAULT, 2, '78 Ascott Lane', 'NR7 7GG', '52.6414', '1.3470'),
	(DEFAULT, 2, '74 Thoroughbred Road', 'NR10 0JJ', '52.6607', '1.3992'),
	(DEFAULT, 3, '89 Brunel Road', 'BS1 1AA', '51.4545', '2.5879'),
    (DEFAULT, 3, '92 Wishingwell Lane', 'BS9 9II', '51.4852', '2.6263'),
	(DEFAULT, 3, '72 Nantucket Road', 'BS5 5EE', '51.4623', '2.5681'),
	(DEFAULT, 3, '4 Playfield Lane', 'BS2 2BB', '51.4584', '2.5858'),
	(DEFAULT, 6, '7 Canalboat Lane', 'OX1 1AA', '51.7520', '1.2559'),
    (DEFAULT, 6, '97 Ravensclaw Road', 'OX2 2BB', '51.7737', '1.2686'),
    (DEFAULT, 6, '22 Broomstick Lane', 'OX3 3CC', '51.7594', '1.2150'),
	(DEFAULT, 6, '9 Museum Way', 'OX6 6FF', '51.7594', '1.2905'),
    (DEFAULT, 6, '98 Chimneysweep Lane', 'OX8 8HH', '51.6342', '1.5567'),
    (DEFAULT, 4, '89 Automotice Street', 'B1 1AA', '52.4791', '-1.9066'),
    (DEFAULT, 4, '2 Lucky Lane', 'B3 3CC', '52.4856', '-1.8991'),
    (DEFAULT, 4, '8 Cow Farm Street', 'B5 5EE', '52.4757', '-1.8946'),
	(DEFAULT, 4, '98 Carriage Crescent', 'B6 6FF', '52.5020', '-1.8733'),
    (DEFAULT, 8, '1 Pegasus Place', 'YO1 6AN', '53.9571', '1.0815'),
    (DEFAULT, 8, '54 Merlin Court', 'YO42 2II', '53.8747', '0.8756'),
	(DEFAULT, 8, '89 Heather Way', 'YO60 7JJ', '54.0892', '0.9976');

DROP TABLE IF EXISTS Property_style;
CREATE TABLE IF NOT EXISTS Property_style
(
	Property_Style_ID INT AUTO_INCREMENT,
    category VARCHAR(50) NOT NULL,
	CONSTRAINT pk_property_style PRIMARY KEY (Property_Style_ID)
    );


INSERT INTO Property_style
VALUES 
	(DEFAULT, 'House'),
	(DEFAULT, 'Houseboat'),
	(DEFAULT, 'Flat'),
	(DEFAULT, 'Guest House'),
	(DEFAULT, 'Hotel Room'),
	(DEFAULT, 'Barn'),
	(DEFAULT, 'Bed and Breakfast Room'),
	(DEFAULT, "Shephard's Hut"),
	(DEFAULT, 'Tiny Home'),
	(DEFAULT, 'Camp site'),
    (DEFAULT, 'Camper Van'),
    (DEFAULT, 'Tent'),
	(DEFAULT, 'Yurt'),
    (DEFAULT, 'Historical Home')
	;
    
DROP TABLE IF EXISTS Type_of_Place;
CREATE TABLE IF NOT EXISTS Type_of_Place
(
	Generic_Property_ID INT AUTO_INCREMENT,
    category VARCHAR(50) NOT NULL,
    CONSTRAINT pk_generic_property PRIMARY KEY (Generic_Property_ID)
    );


INSERT INTO Type_of_Place
VALUES 
	(DEFAULT, 'Entire home'),
	(DEFAULT, 'Room')
	;

DROP TABLE IF EXISTS Amenities;
CREATE TABLE IF NOT EXISTS Amenities
(
	Amenities_ID INT AUTO_INCREMENT,
    a_name VARCHAR(250) NOT NULL UNIQUE,
    a_description TEXT,
	CONSTRAINT pk_amenities PRIMARY KEY (Amenities_ID)
    );

INSERT INTO Amenities
VALUES 
	(DEFAULT, 'Cooking Basics', 'Pots, pans, oil, salt and pepper'),
	(DEFAULT, 'Fridge', NULL),
    (DEFAULT, 'Freezer', NULL),
	(DEFAULT, 'Dishes and Cutlery', 'Bowls, plates, 4 sets of utensils, cups, etc.'),
	(DEFAULT, 'Oven', NULL),
	(DEFAULT, 'Microwave', NULL),
	(DEFAULT, 'Washing Machine', NULL),
	(DEFAULT, 'Dishwasher', NULL),
	(DEFAULT, 'Air Conditioning', NULL),
	(DEFAULT, 'Heating System', NULL),
    (DEFAULT, 'Hair Dryer', NULL),
	(DEFAULT, 'Iron', NULL),
	(DEFAULT, 'Pool', NULL),
	(DEFAULT, 'Hot Tub', NULL),
    (DEFAULT, 'Private Parking', NULL),
    (DEFAULT, 'WiFi', NULL),
	(DEFAULT, 'TV', NULL),
	(DEFAULT, 'Bed Linen', 'Enough Bed Linen for all beds available'),
	(DEFAULT, 'Bathroom Essentials', 'Towels, soap, shampoo, and toilet paper'),
	(DEFAULT, 'High Chair', NULL),
	(DEFAULT, 'Dedicated Workspace', NULL),
	(DEFAULT, 'Indoor Fireplace', NULL),
	(DEFAULT, 'Private Entrance', NULL),
	(DEFAULT, 'Private Garden Seating Area', NULL),
	(DEFAULT, 'Self Check-In', NULL)
	;

    
DROP TABLE IF EXISTS Airbnb_Rental;
CREATE TABLE IF NOT EXISTS Airbnb_Rental
(
	Property_ID INT AUTO_INCREMENT,
    property_name VARCHAR(250) NOT NULL, 
    property_description TEXT NOT NULL, 
    max_guests INT NOT NULL, 
    total_bathrooms DEC(3,1) NOT NULL, 
    total_beds INT NOT NULL,
    total_bedrooms INT NOT NULL,
    price_per_night DEC(10,2) NOT NULL, 
    minimum_stay INT NOT NULL,
    maximum_stay INT NOT NULL,
    Property_Style_ID INT NOT NULL,
    Host_ID INT NOT NULL,
    Address_ID INT NOT NULL,
    Generic_Property_ID INT NOT NULL,
	CONSTRAINT pk_rental_details PRIMARY KEY (Property_ID),
    CONSTRAINT fk_rental_style_2 FOREIGN KEY (Property_Style_ID) REFERENCES Property_Style(Property_Style_ID),
	CONSTRAINT fk_rental_host FOREIGN KEY (Host_ID) REFERENCES Airbnb_Hosts(Host_ID),
    CONSTRAINT fk_property_address FOREIGN KEY (Address_ID) REFERENCES property_addresses(Address_ID),
    CONSTRAINT fk_generic_type FOREIGN KEY (Generic_Property_ID) REFERENCES Type_of_Place(Generic_Property_ID),
    CONSTRAINT max_guest CHECK (max_guests >= 0),
    CONSTRAINT bathroom CHECK (total_bathrooms >= 0),
    CONSTRAINT beds CHECK (total_beds >= 0),
    CONSTRAINT bedrooms CHECK (total_bedrooms >= 0),
    CONSTRAINT length_stay CHECK (maximum_stay >  minimum_stay)
    );

INSERT INTO Airbnb_Rental
VALUES 
	(DEFAULT, 'Tiny Home in the Woods', 
    'A cosy tiny home tucked away in the woods. Step out of tiny pod directly into nature.  
	You will have everything you need.  You’ll find local National Parks nearby to explore.', 
	2, 1, 2, 1, 81.00, 2, 30, 9, 2, 1, 1), 
    (DEFAULT, 'Entire Historical Cabin', 
    'See how it was to live 100 years ago in this beautiful historic cabin.  
    There is no road access or neighbours.  You will experience the rawness of the local nature.',
    2, 1, 1, 1, 125.00, 3, 14, 14, 2, 2, 1),
    (DEFAULT, 'Room in lovely Bed and Breakfast', 
    'Relax and enjoy a tranquil environment in lovely Norwich.  
    We will do everything possible to ensure you have a lovely stay.', 
    1, 1, 1, 1, 35.00, 3, 14, 7, 2, 3, 2),
    (DEFAULT, 'Entire Guest House with a view',
    'Enjoy your piece and solitude in our lovely guest house.  
    You will have your own private seating area, with luxury furnishings, 
    and a comfy sofa to enjoy some telly.',  
    4, 1, 2, 1, 100.00, 2, 30, 4, 2, 4, 1),
	(DEFAULT, 'Entire flat near town center',
    'Enjoy the hustle and bussle of city life near the town center.
    You will enjoy your own bedroom, living area, and kitchen.
    You also have your own parking space! A rarity near town',  
    2, 1, 2, 1, 100.00, 2, 10, 3, 3, 5, 1),
    (DEFAULT, 'Entire barn conversion near Bristol',
    'Newly renovated barn conversion on the outskirts of the city.  
    Enjoy the lovely gardens around the home and views of the sheep.',  
    4, 1, 2, 1, 250.00, 5, 90, 6, 3, 6, 1),
    (DEFAULT, 'Entire studio flat in downtown',
    'Ground floor studio flat available to enjoy the local nightlife. 
    You will have all of your necessary amentites available to enjoy your stay. 
    Cozy studio for two to enjoy the weekend.',  
    2, 1, 1, 1, 75.00, 1, 10, 3, 3, 7, 1),
    (DEFAULT, 'Room in cozy home in the country',
    'Cozy room in antique british style.
    All house amenities are shared with resident.
    Lovely gardens to the rear of the house',  
    1, 1, 1, 1, 45.00, 1, 5, 1, 3, 8, 2),
	(DEFAULT, 'Oxford Houseboat',
    'Enjoy the unique experience of life on a houseboat. 
    Close to all the local city amenities, while enjoying the seclusion of the water.',  
    2, 1, 1, 1, 150.00, 3, 30, 2, 4, 9, 1), 
    (DEFAULT, 'Lovely Studio Flat in the Center of Oxford',
    'Cozy flat overlooking the canal, right in the center of Oxford. 
    All of your amenities are provided including a kithchen and King size bed.
    Enjoy the museums and night life, all within walking distance!',  
    2, 1, 1, 1, 85.00, 1, 15, 3, 4, 10, 1),
	(DEFAULT, 'Entire Historical Cottage',
    'Beautiful cottage over 400 years old, refurnished with special touches. 
    Award-winning cottage garden to enjoy during the summer. Centrally located for all your traveling desires!',  
    6, 3.5, 5, 3, 225.00, 2, 15, 14, 4, 11, 1),
	(DEFAULT, 'Entire Wild Swimming Cottage',
    'Beautiful cottage located on a lovely swimming pond.  
    Perfect for those who enjoy cold-water swimming in winter.
    Cottage is also an ideal sumer escape from the heat!',  
    3, 1, 2, 1, 125.00, 2, 20, 1, 4, 12, 1),
	(DEFAULT, 'Stunning Bed and Breakfast room in Oxford',
    'Enjoy the lovely interior design of the Yellow Room. 
    It over looks the streets of Oxford.  Local to a beautiful garden and park.',  
    2, 1, 1, 1, 95.00, 2, 30, 7, 4, 13, 2),
	(DEFAULT, 'Tiny House near Birmingham',
    'Enjoy a nature expierience in one of our tiny homes on the lake. 
    Wake up to the birds outside your window and start your day with a hike.',  
    2, 1, 1, 1, 85.00, 2, 30, 9, 10, 14, 1),
	(DEFAULT, 'Elite hotel room in downtown',
    'Luxury room with en-suite and hot tub access. 
    Enjoy your meals in the downstairs bar and lounge.',  
    2, 1, 1, 1, 300.00, 2, 90, 5, 10, 15, 2),
    (DEFAULT, 'Business Suite in downtown',
    'Relaxing in your luxury hotel room after a busy day at work. 
    Hotel has all essintials including gym, spa, and pool.',  
    2, 1, 1, 1, 250.00, 2, 90, 5, 10, 16, 2),
	(DEFAULT, 'Flat in downtown Birmingham',
    'Unique flat in downtown Birmingham. 
    Enjoy this mid-terrace flat with preserved original features.
    Local to many bars and restaurants.',  
    2, 1.5, 2, 1, 85.00, 2, 180, 3, 10, 17, 1),
    (DEFAULT, 'Welcoming Room in Bungalow',
    'Single room in Bungalow with shared common spaces. 
    A queit neighborhood that is located close to the local bus stop for easy transportation.
    Tidy home with welcoming host.',  
    1, 1, 1, 1, 45.00, 1, 5, 1, 13, 18, 2),
    (DEFAULT, 'Entire home outside York',
    'Beautiful Barn conversion on our farm which raises sheep and highland cattle. 
    We cater for our guests.  The cottage sleeps 2 guests comfortably.',  
    2, 1, 1, 1, 103.00, 2, 14, 14, 13, 19, 1),
    (DEFAULT, 'Terraced house in downtown York',
    'Located in picturesque part of York. Near several historical sights for local exploring.
    The entire home is yours to enjoy. 
    We will leave your home well stocked with food for breakfast with fresh milk, tea, and coffee.
    ',  
    4, 1.5, 3 , 2, 185.00, 2, 14, 1, 13, 20, 1)
    ;
    

DROP TABLE IF EXISTS Property_Photos;
CREATE TABLE IF NOT EXISTS Property_Photos
(
	Photo_ID INT AUTO_INCREMENT,
    Property_ID  INT NOT NULL,
    photo TEXT NOT NULL,
    p_description TEXT,
    CONSTRAINT pk_property_photo PRIMARY KEY (Photo_ID, Property_ID),
    CONSTRAINT fk_property_id_photo FOREIGN KEY (Property_ID) REFERENCES Airbnb_Rental(Property_ID)
    );

INSERT INTO Property_Photos 
VALUES 
	(DEFAULT, 10, 'https://drive.google.com/file/d/1vHUw86gi8FU_kXVD_hTWRSmdTVRtoGV3/view?usp=drive_link', 'Cozy sofa and living area'),
    (DEFAULT, 10, 'https://drive.google.com/file/d/1zoVe_zzGjRC4zr6xtywGOb2UD9ymQTcx/view?usp=drive_link', 'Lovely work area'),
    (DEFAULT, 10, 'https://drive.google.com/file/d/1mBXPiolB1b6XPeJ8jg-PGCKexmCDS1uq/view?usp=drive_link', NULL),
    (DEFAULT, 10, 'https://drive.google.com/file/d/1Kb8r6WIEnOiRNqqyjF8uuLjQ2tXh2oIj/view?usp=drive_link', 'Work area'),
    (DEFAULT, 10, 'https://drive.google.com/file/d/1ZdVNXsISFXTTKy7pYeAof6JDedc1XJ5w/view?usp=drive_link', 'Cozy bedroom in Scandinavian style'),
    (DEFAULT, 10, 'https://drive.google.com/file/d/1rnnsPEyFqP65GmipZ38CiOKS6btiat7j/view?usp=drive_link', 'Plants spread all throughout!'),
    (DEFAULT, 10, 'https://drive.google.com/file/d/1egee_k2-9R8dsT8_4yGCbI7fuMdu4MIV/view?usp=drive_link', 'Luxury beautycare products'),
    (DEFAULT, 10, 'https://drive.google.com/file/d/17ERkUXia5EmMzcJ3F1vifk18hdQ7Qi15/view?usp=drive_link', 'Coffee machine for your use'),
    (DEFAULT, 10, 'https://drive.google.com/file/d/1UIQi2aP-KT1RzY9wGZ1eSSQalxbmFKzI/view?usp=drive_link', NULL),
    (DEFAULT, 10, 'https://drive.google.com/file/d/1ewalytd3Cdv0HCf7c3kdeU86TmDV6-3s/view?usp=drive_link', 'Recently remodeled bathroom'),
    (DEFAULT, 6, 'https://drive.google.com/file/d/1BKICVQN-C1VQ9bsSFKjgSWKmQUwVtK_k/view?usp=drive_link', 'Seating area with views outdoors'),
    (DEFAULT, 6, 'https://drive.google.com/file/d/14RKElRcbd0-x7UP0G3v7s6lVv0MSgdLm/view?usp=drive_link', NULL),
    (DEFAULT, 6, 'https://drive.google.com/file/d/1gTsGXwaLg4CYrrgOTN0fBEGcV3RjhVSV/view?usp=drive_link', 'Dining area'),
    (DEFAULT, 6, 'https://drive.google.com/file/d/1mj-VUN4iSPA9dRStedC-783J7kCwSOTe/view?usp=drive_link', 'Little accent touches throughout'), 
    (DEFAULT, 6, 'https://drive.google.com/file/d/1W3N_K2JdYajpQ1Ni-8uKQoN-92HKpkEH/view?usp=drive_link', 'Barn conversion'),
    (DEFAULT, 6, 'https://drive.google.com/file/d/1iufsWUXQMEu2qxjrIjbFbNvvk72QYkdN/view?usp=drive_link', 'Sheep!'), 
    (DEFAULT, 6, 'https://drive.google.com/file/d/1EGtnDK00MSUuGIJ-pe7e11wyCN83MF27/view?usp=drive_link', 'And more sheep!'),
    (DEFAULT, 6, 'https://drive.google.com/file/d/1J-FSHizFf7iwJ0uidl2de78nls_B1oVM/view?usp=drive_link', 'Modern bathroom'),
    (DEFAULT, 6, 'https://drive.google.com/file/d/11t6hkrsweitvjJuvmrytW0GIJbrhs74y/view?usp=drive_link', NULL),
    (DEFAULT, 6, 'https://drive.google.com/file/d/10Apu1gMjlMa4BcPXMgg-nlDCKnOKXxKQ/view?usp=drive_link', 'Dreamy bedroom')
;
    
    
DROP TABLE IF EXISTS Airbnb_Rental_Amenities;
CREATE TABLE IF NOT EXISTS Airbnb_Rental_Amenities
(
	Property_ID INT NOT NULL,
    Amenities_ID INT NOT NULL,
    CONSTRAINT fk_property_amenities_1 FOREIGN KEY (Amenities_ID) REFERENCES Amenities(Amenities_ID ),
    CONSTRAINT fk_property_amenities_2 FOREIGN KEY (Property_ID) REFERENCES Airbnb_Rental(Property_ID)
    );
 
INSERT INTO Airbnb_Rental_Amenities
VALUES 
	(6, 1),
    (6, 2),
    (6, 3),
    (6, 4),
    (6, 5),
    (6, 6),
    (6, 11),
    (6, 12),
    (6, 15),
    (6, 16),
    (6, 17),
    (6, 18),
    (6, 19),
    (6, 21),
    (6, 23),
    (6, 25),
    (10, 1),
	(10, 2),
    (10, 3),
    (10, 4)
;

DROP TABLE IF EXISTS Booking;
CREATE TABLE IF NOT EXISTS Booking
(
	Booking_ID INT AUTO_INCREMENT,
    User_ID INT NOT NULL,
    Property_ID INT NOT NULL,
    check_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,
    nightly_rate DEC(10,2) NOT NULL,
    state_of_booking VARCHAR(50),
    date_of_booking DATE NOT NULL,
    CONSTRAINT pk_booking PRIMARY KEY (Booking_ID),
    CONSTRAINT fk_booking_user FOREIGN KEY (User_ID) REFERENCES Airbnb_Users(User_ID),
    CONSTRAINT fk_booking_property FOREIGN KEY (Property_ID) REFERENCES Airbnb_Rental(Property_ID),
    CONSTRAINT date_stay CHECK (check_out_date > check_in_date)
    );
    
INSERT INTO Booking
VALUES 
	(DEFAULT, 4, 6, '2023-01-13', '2023-01-20', 225.00, 'Completed', '2022-11-23'),
    (DEFAULT, 9, 6, '2023-01-23', '2023-01-30', 225.00, 'Completed', '2022-10-12'),
    (DEFAULT, 11, 6, '2023-02-06', '2023-02-12', 225.00, 'Completed','2022-12-12'),
    (DEFAULT, 13, 6, '2023-02-23', '2023-03-02', 225.00, 'Completed', '2022-9-22'),
    (DEFAULT, 23, 6, '2023-03-03', '2023-03-10', 225.00, 'Completed', '2022-11-28'),
	(DEFAULT, 16, 10, '2023-01-14', '2023-01-20', 80.00, 'Completed', '2022-10-12'),
    (DEFAULT, 21, 10, '2023-01-23', '2023-01-29', 80.00, 'Completed', '2022-11-15'),
    (DEFAULT, 25, 10, '2023-02-04', '2023-02-08', 80.00, 'Completed', '2022-11-12'),
    (DEFAULT, 27, 10, '2023-02-16', '2023-02-21', 82.00, 'Completed', '2023-01-15'),
    (DEFAULT, 29, 10, '2023-03-03', '2023-03-11', 80.00, 'Completed', '2023-01-30'),
	(DEFAULT, 4, 2, '2023-04-14', '2023-04-20', 115.00, 'Completed', '2023-02-22'),
    (DEFAULT, 9, 2, '2023-04-23', '2023-04-29', 120.00, 'Completed', '2023-02-12'),
    (DEFAULT, 23, 2, '2023-05-04', '2023-05-08', 120.00, 'Completed', '2023-03-28'),
    (DEFAULT, 25, 2, '2023-05-16', '2023-05-21', 115.00, 'Completed', '2023-02-22'),
    (DEFAULT, 16, 2, '2023-06-03', '2023-06-11', 125.00, 'Completed', '2023-03-25'),
    (DEFAULT, 11, 3, '2023-04-12', '2023-04-18', 35.00, 'Completed', '2023-01-25'),
    (DEFAULT, 13, 3, '2023-04-20', '2023-04-26', 34.00, 'Completed', '2023-01-12'),
    (DEFAULT, 21, 3, '2023-05-02', '2023-05-07', 32.00, 'Completed', '2023-02-24'),
    (DEFAULT, 27, 3, '2024-05-12', '2024-05-18', 33.00, 'Awaiting Payment', '2024-02-24'),
    (DEFAULT, 29, 3, '2024-05-22', '2024-06-01', 35.00, 'Pending Approval', '2024-03-24');
    

DROP TABLE IF EXISTS Card_details;
CREATE TABLE IF NOT EXISTS Card_details
(
	Card_ID INT AUTO_INCREMENT,
    card_number CHAR(16) NOT NULL,
    security_code CHAR(3) NOT NULL,
    name_on_card VARCHAR(75) NOT NULL,
    CONSTRAINT pk_card PRIMARY KEY (Card_ID)
    );

INSERT INTO Card_details
VALUES 
	(DEFAULT, '1234567891234567', '111', 'Harry Wilson'),
    (DEFAULT, '1234562783234567', '222', 'Thomas Wilson'),
    (DEFAULT, '1238762783234567', '333', 'Isabella Taylor'),
    (DEFAULT, '3487562755534567', '367', 'Isabella Taylor'),
    (DEFAULT, '1234562783299967', '456', 'Fredirick Hanson'),
    (DEFAULT, '1234562783223467', '398', 'Michael Young'),
    (DEFAULT, '1238888783234567', '587', 'Maria Santos'),
    (DEFAULT, '7778968748434567', '367', 'Maria Santos'),
    (DEFAULT, '1234562783230007', '489', 'Anna Wirth'),
    (DEFAULT, '1234562783999567', '298', 'Ingrid Anderson'),
    (DEFAULT, '1234562789354567', '987', 'Sophia Anderson'),
    (DEFAULT, '1234562783233333', '783', 'Elena Petrova'),
    (DEFAULT, '1234562728390067', '837', 'Robert Petrova'),
    (DEFAULT, '1234562788834567', '232', 'Thomas Garium'),
    (DEFAULT, '1234598783234567', '442', 'Carly Ingridson'),
    (DEFAULT, '1234999783234567', '782', 'Nicholas Smith'),
    (DEFAULT, '1234569983234567', '298', 'Andrew Packer'),
    (DEFAULT, '1234562987232267', '643', 'Constance Builder'),
    (DEFAULT, '1234562796234337', '665', 'Terrance Miner'),
    (DEFAULT, '1234562789834877', '378', 'Zeke Kowski'),
    (DEFAULT, '1234562783384567', '987', 'Joseph Anderson'),
    (DEFAULT, '1234562727394567', '374', 'Emily Garium')
    ;
    
DROP TABLE IF EXISTS Card_User;
CREATE TABLE IF NOT EXISTS Card_User
(
	Card_User_ID INT AUTO_INCREMENT,
    User_ID INT NOT NULL,
    Card_ID INT NOT NULL,
    CONSTRAINT pk_card_user PRIMARY KEY (Card_User_ID),
	CONSTRAINT fk_user_card FOREIGN KEY (User_ID) REFERENCES Airbnb_Users(User_ID),
    CONSTRAINT fk_card_user FOREIGN KEY (Card_ID) REFERENCES Card_details(Card_ID)
    );

INSERT INTO Card_User
VALUES 
	(DEFAULT, 4, 1),
    (DEFAULT, 4, 2),
    (DEFAULT, 9, 2),
    (DEFAULT, 11, 3),
    (DEFAULT, 11, 4),
    (DEFAULT, 13, 5),
    (DEFAULT, 16, 6),
    (DEFAULT, 21, 7),
    (DEFAULT, 21, 8),
    (DEFAULT, 23, 9),
    (DEFAULT, 25, 10),
    (DEFAULT, 15, 11), 
    (DEFAULT, 25, 11),
    (DEFAULT, 29, 12), 
    (DEFAULT, 29, 13),
    (DEFAULT, 27, 14),
    (DEFAULT, 8, 15), 
    (DEFAULT, 5, 16),
    (DEFAULT, 15, 17),
    (DEFAULT, 27, 20)
    ;

DROP TABLE IF EXISTS Payment_status;
CREATE TABLE IF NOT EXISTS Payment_status
(
	Payment_Status_ID INT AUTO_INCREMENT,
    status_type VARCHAR(50) NOT NULL,
    CONSTRAINT pk_card PRIMARY KEY (Payment_Status_ID)
    );

INSERT INTO Payment_status
VALUES 
	(DEFAULT, 'Paid in Full'),
    (DEFAULT, 'Partial Payment'),
    (DEFAULT, 'Cancelled'),
    (DEFAULT, 'Pending'),
    (DEFAULT, 'Refunded'),
    (DEFAULT, 'Declined')
    ;
    
    
DROP TABLE IF EXISTS Payment;
CREATE TABLE IF NOT EXISTS Payment
(
	Transaction_ID INT AUTO_INCREMENT,
    Booking_ID INT NOT NULL,
    Card_User_ID INT NOT NULL,
    Host_ID INT NOT NULL,
    Payment_Status_ID INT NOT NULL,
    total_price DEC(10,2) NOT NULL, 
    payment_date TIMESTAMP,
    CONSTRAINT pk_payment PRIMARY KEY (Transaction_ID),
	CONSTRAINT fk_booking_payment FOREIGN KEY (Booking_ID) REFERENCES Booking(Booking_ID),
    CONSTRAINT fk_card_payment FOREIGN KEY (Card_User_ID) REFERENCES Card_User(Card_User_ID),
    CONSTRAINT fk_host_payment FOREIGN KEY (Host_ID) REFERENCES Airbnb_Hosts(Host_ID),
    CONSTRAINT fk_payment_status FOREIGN KEY (Payment_Status_ID) REFERENCES Payment_status(Payment_Status_ID)
    );

INSERT INTO Payment
VALUES 
	(DEFAULT, 1, 2, 3, 1, 1575.00, '2022-11-29 13:23:56'),
    (DEFAULT, 2, 3, 3, 1, 1575.00, '2022-10-28 03:23:36'),
    (DEFAULT, 3, 4, 3, 1, 1350.00, '2023-01-02 03:33:26'),
	(DEFAULT, 4, 6, 3, 1, 1575.00, '2022-10-30 23:54:36'),
	(DEFAULT, 5, 10, 3, 1, 1575.00,'2022-12-02 07:23:36'),
    (DEFAULT, 6, 7, 4, 1, 480.00, '2022-10-20 12:23:36'),
    (DEFAULT, 7, 9, 4, 1, 480.00, '2022-12-10 16:29:36'),
    (DEFAULT, 8, 13, 4, 1, 320.00, '2022-11-15 13:27:36'),
    (DEFAULT, 9, 20, 4, 1, 410.00, '2023-01-20 09:23:36'),
    (DEFAULT, 10, 14, 4, 1, 640.00, '2023-02-02 11:23:36'),
	(DEFAULT, 11, 1, 2, 1, 690.00, '2023-02-25 03:53:36'),
	(DEFAULT, 12, 3, 2, 1, 720.00, '2023-03-02 09:23:12'),
	(DEFAULT, 13, 10, 2, 1, 480.00, '2023-04-01 13:52:36'),
    (DEFAULT, 14, 11, 2, 1, 575.00, '2023-04-03 14:22:36'),
    (DEFAULT, 15, 7, 2, 1, 1000.00, '2023-03-31 16:23:35'),
    (DEFAULT, 16, 5, 2, 1, 210.00, '2023-02-01 22:23:36'),
    (DEFAULT, 17, 6, 2, 1, 204.00, '2023-02-11 15:23:36'),
    (DEFAULT, 18, 8, 2, 1, 160.00, '2023-03-14 18:11:36'),
    (DEFAULT, 19, 16, 2, 4, 198.00, NULL),
	(DEFAULT, 20, 15, 2, 4, 350.00, NULL)
    ;
  
DROP TABLE IF EXISTS Favorite_Properties;
CREATE TABLE IF NOT EXISTS Favorite_Properties
(
    User_ID INT NOT NULL,
    Property_ID INT NOT NULL,
	CONSTRAINT fk_user_favorite FOREIGN KEY (User_ID) REFERENCES Airbnb_Users(User_ID),
    CONSTRAINT fk_property_favorite FOREIGN KEY (Property_ID) REFERENCES Airbnb_rental(Property_ID)
    );
    
INSERT INTO Favorite_Properties
VALUES 
	(6, 9),
    (6, 10),
    (6, 11),
    (6, 1),
	(4, 19), 
    (9, 9),
    (9, 2), 
    (9, 12), 
    (9, 14),
    (11, 2), 
    (11, 4), 
	(11, 6),
    (13, 9), 
    (13, 11), 
    (13, 15), 
    (13, 2), 
    (25, 9),
    (25, 8),
    (25, 2), 
    (25, 4)
    ;
    
DROP TABLE IF EXISTS Property_Reviews;
CREATE TABLE IF NOT EXISTS Property_Reviews
(
	Prop_Review_ID INT AUTO_INCREMENT,
    User_ID INT NOT NULL,
    Property_ID INT NOT NULL,
    rating_of_property INT NOT NULL,
    review_of_property TEXT NOT NULL,
    check_out_date DATE NOT NULL, 
    CONSTRAINT pk_prop_review PRIMARY KEY (Prop_Review_ID),
	CONSTRAINT fk_user_review FOREIGN KEY (User_ID) REFERENCES Airbnb_Users(User_ID),
    CONSTRAINT fk_property_review FOREIGN KEY (Property_ID) REFERENCES Airbnb_rental(Property_ID), 
    CONSTRAINT prop_rating CHECK (rating_of_property  >= 1 AND rating_of_property  <= 5)
    );

    
INSERT INTO Property_Reviews
VALUES 
    (DEFAULT, 4, 6, 4, 
    'Really enjoyed our stay. The description was spot on. Very clean and great location', 
    '2023-01-20'),
     (DEFAULT, 9, 6, 5, 
    'Lovely Airbnb. Exactly what we needed with all the right amenities.', 
    '2023-01-30'),
     (DEFAULT, 11, 6, 3, 
    'We were expecting a bit more for our money.  The property was average.', 
    '2023-02-06'),
     (DEFAULT, 13, 6, 5, 
    'We loved the garden and the sheep! Great place', 
    '2023-03-02'),
     (DEFAULT, 23, 6, 5, 
    'Such an idylic location. Loved the barn conversion and beautiful landscape.', 
    '2023-03-10'),
     (DEFAULT, 16, 10, 5, 
    'Such a cozy flat in Oxford. Perfect location near all the best spots. Lovely decor.', 
    '2023-01-20'),
     (DEFAULT, 21, 10, 5, 
    'Perfect spot in Oxford. Had everything we needed. What a cute little place.', 
    '2023-01-29'),
     (DEFAULT, 25, 10, 5, 
    'Great value for money. I would definetly stay here again. Peaceful location even though its centrally located.', 
    '2023-02-08'),
     (DEFAULT, 27, 10, 3, 
    'Not really what i was expecting.  I was hoping for a bigger location.  This was too small.', 
    '2023-02-21'),
     (DEFAULT, 29, 10, 5, 
    'My favorite place to stay in Oxford.  I would move here if I could! Such a great spot. And super clean!', 
    '2023-03-11'),
     (DEFAULT, 4, 2, 5, 
    'What an incredible place to stay. Such a perfect place to holiday if you want to get away from it all.', 
    '2023-04-20'),
     (DEFAULT, 9, 2, 5, 
    'I loved our stay.  Will definitely be back. Such a unique experience to be so far away in a cool house.', 
    '2023-04-29'),
     (DEFAULT, 23, 2, 4, 
    'A really cool location in unique house. However it could have been cleaner and been better stocked.', 
    '2023-05-08'),
    (DEFAULT, 25, 2, 5, 
    'I love this place. I would come back every year if I could! The building is beautiful and great to escape the city.', 
    '2023-05-21'),
	(DEFAULT, 16, 2, 4, 
    'Stay was great over all, however could have been cleaner.', 
    '2023-06-11'),
	(DEFAULT, 11, 3, 5, 
    'Could not ask for more for such a cheap price! Such a great little bed and breakfast. Super location!', 
    '2023-04-18'),
    (DEFAULT, 13, 3, 5, 
    'Great value and perfect spot. Breakfast was lovely every day.', 
    '2023-04-26'),
    (DEFAULT, 21, 3, 5, 
    'We come back every year, and it is always such a great value.', 
    '2023-05-07'),
	(DEFAULT, 6, 3, 5, 
    'Lovely bed and breakfast. Thank you for the great stay!', 
    '2022-05-07'),
    (DEFAULT, 17, 3, 5, 
    'Great value for the service provided!', 
    '2022-03-27')
    ;

    
DROP TABLE IF EXISTS Reviews;
CREATE TABLE IF NOT EXISTS Reviews
(
	Review_ID INT AUTO_INCREMENT,
    Guest_ID INT NOT NULL,
    Host_ID INT NOT NULL,
    rating_of_guest INT,
    rating_of_host INT,
    review_of_guest TEXT,
    review_of_host TEXT,
    check_out_date DATE NOT NULL, 
    CONSTRAINT pk_review PRIMARY KEY (Review_ID),
	CONSTRAINT fk_guest FOREIGN KEY (Guest_ID) REFERENCES Airbnb_Users(User_ID),
    CONSTRAINT fk_host_review FOREIGN KEY (Host_ID) REFERENCES Airbnb_Hosts(Host_ID),
    CONSTRAINT host_rating CHECK (rating_of_host >= 1 AND rating_of_host <= 5),
    CONSTRAINT guest_rating CHECK (rating_of_guest >= 1 AND rating_of_guest <= 5)
    );
    


    
INSERT INTO Reviews
VALUES 
    (DEFAULT, 4, 3, 5, 5, 'John was a delight to have. He is welcome back any time.', 
		'Lily was a tremendous host.  She provided great suggestions for places to visit!', '2023-01-20'),
    (DEFAULT, 9, 3, 5, 5, 'Charlie was a very polite guest.', 
		'Host was super helpful.', '2023-01-30'),
    (DEFAULT, 11, 3, 5, 5, 'Isabella was punctual and tidy.', 
		'The host was kind and easy to talk to.', '2023-02-12'),
    (DEFAULT, 13, 3, 5, NULL, 'Freddy and his friends are welcome back any time.', NULL, '2023-03-02'),
    (DEFAULT, 23, 3, 5, 5, 'Anna was a pleasure to have.', 
		'The host was very accomodating during our stay.', '2023-03-10'),
    (DEFAULT, 16, 4, 5, NULL, 'Michael and his family were lovely.', NULL, '2023-01-14'),
	(DEFAULT, 21, 4, 5, 5, 'Please come again!', 
		'The host let us arrive a little early. Grateful for the stay!', '2023-01-29'),
	(DEFAULT, 25, 4, 5, 5, 'Hans kept everything tidy and organized.', 
		'The host helped us out with restaurant recomendations. Great place.', '2023-02-08'),
	(DEFAULT, 27, 4, 5, NULL, 'Lea was a respectful guest', NULL, '2023-02-21'),
	(DEFAULT, 29, 4, 5, NULL, 'Elena is welcome back any time.', NULL, '2023-03-11'),
	(DEFAULT, 4, 2, 5, 5, 'John was a respectful house guest.', 
		'Host did a great job with supplying everything we needed.', '2023-04-20'),
    (DEFAULT, 9, 2, NULL, 5, NULL, 'The host provided everything we needed.', '2023-04-29'),
    (DEFAULT, 23, 2, 5, 4, 'Anna was kind and considerate.', 
		'The host did not allow us to drop our bags off early. Otherwise great stay.', '2023-05-08'),
    (DEFAULT, 25, 2, 5, 5, 'Lovely family. Appreciated the ease of communication.', 
		'Great communication.', '2023-05-21'),
    (DEFAULT, 16, 2, 5, 4, 'There was a mix up with the booking, and Michael was accomodating.', 
		'The host notified us after our arrival that there was still a family there. Not impressed.', '2023-06-11'),
    (DEFAULT, 11, 2, NULL, 5, NULL, 'The host eaasy to communicate with and helped us with our stay.', '2023-04-12'),
    (DEFAULT, 13, 2, 5, NULL, 'Freddy was a respectful house guest.', NULL, '2023-04-26'),
    (DEFAULT, 21, 2, 5, 5, 'Maria was very tidy and quiet.', 
		'Host was fine.', '2023-05-07'),
    (DEFAULT, 6, 2, 5, 5, 'Mia was kind and curtious.', 
		'Everything went as expected.', '2022-05-07'),
    (DEFAULT, 17, 2, 5, 5, 'Ben is welcome back any time.', 
		'Great!', '2022-03-27')
    ;