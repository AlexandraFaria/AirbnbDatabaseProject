
-- User ID 4 Information including first and last name, email address, and phone number. 

USE `alexandrafariaAIRBNB`;
SELECT first_name, last_name, email, contact_number
FROM Airbnb_Users
WHERE User_ID = 4;

-- Photo and Social Media Account for Harry Wilson

USE `alexandrafariaAIRBNB`;
SELECT au.first_name, au.last_name, sm.Facebook_URL, sm.Instagram_URL, pp.photo
FROM Airbnb_Users AS au
	JOIN Social_Media AS sm
		ON au.User_ID=sm.User_ID
	JOIN Profile_Photo AS pp
		ON au.User_ID=pp.User_ID
WHERE au.User_ID = 4;

-- Name and Photo of Airbnb_Host number 3

USE `alexandrafariaAIRBNB`;
SELECT h.host_ID, au.first_name, au.last_name, pp.photo
FROM Airbnb_Users AS au
	JOIN Airbnb_Hosts AS h
		ON au.User_ID=h.User_ID
	JOIN Profile_Photo AS pp
		ON au.User_ID=pp.User_ID
WHERE h.host_ID= 3;

-- Bank Account details for Payment to Lily Smith
USE `alexandrafariaAIRBNB`;
SELECT au.first_name, au.last_name, ha.account_holders_name, ha.account_sort_code, ha.account_number
FROM Airbnb_Users AS au
	JOIN Airbnb_Hosts AS h
		ON au.User_ID=h.User_ID
	JOIN Host_accounts AS ha
		ON h.Host_ID=ha.Host_ID
WHERE au.first_name='Lily' AND au.last_name='Smith';

-- Property 6 name, type of place, and style

USE `alexandrafariaAIRBNB`;
SELECT p.property_ID, p.property_name, ps.category AS Style, top.category
FROM Airbnb_rental AS p
	JOIN Property_Style AS ps
		ON p.Property_Style_ID=ps.Property_Style_ID
	JOIN Type_Of_Place AS top
		ON p.Generic_Property_ID=top.Generic_Property_ID
WHERE p.Property_ID=6;

-- Address of Property 6 with Property Name

USE `alexandrafariaAIRBNB`;
SELECT p.property_ID, p.property_name, pa.street, pa.zip_code, c.city_name, co.country_name
FROM Airbnb_rental AS p
	JOIN Property_Addresses AS pa
		ON p.Address_ID=pa.Address_ID
	JOIN Cities AS c
		ON pa.city_ID=c.city_ID
	JOIN countries AS co
		ON c.Country_ID=co.country_ID
WHERE p.Property_ID=6;


-- Amenities for Property 6
USE `alexandrafariaAIRBNB`;
SELECT a.a_name AS Amenities, a.a_description AS Description
FROM Airbnb_Rental_Amenities As ara
	JOIN Amenities AS a
		ON ara.Amenities_ID=a.Amenities_ID
	JOIN Airbnb_Rental AS p
		ON ara.Property_ID=p.Property_ID
WHERE p.property_ID=6
ORDER BY a_name ASC;

-- Photos for Property 6

USE `alexandrafariaAIRBNB`;
SELECT pp.p_description AS Description, pp.photo
FROM Airbnb_rental AS p
	JOIN Property_Photos AS pp
		ON p.Property_ID=pp.Property_ID
WHERE p.Property_ID=6;

-- Booking Details for Harry Wilson at Property 6

USE `alexandrafariaAIRBNB`;
SELECT au.first_name, au.last_name, p.property_name, b.booking_ID, 
	b.date_of_booking, b.check_in_date, b.check_out_date
FROM Booking AS b
	JOIN Airbnb_users AS au
		ON b.User_ID=au.User_ID
	JOIN Airbnb_rental AS p
		ON b.Property_ID=p.Property_ID
WHERE p.Property_ID=6 AND au.first_name= 'Harry' AND au.last_name='Wilson';

-- Payment information for Booking 1 for Harry Wilson
 
USE `alexandrafariaAIRBNB`;
SELECT pay.Booking_ID, au.first_name, au.last_name,  cd.name_on_card, cd.card_number, 
	cd.security_code, pay.total_price, b.date_of_booking, pay.payment_date, ps.status_type
FROM Card_User As cu
	JOIN Card_Details AS cd
		ON cd.Card_ID=cu.Card_ID
	JOIN Payment AS pay
		ON pay.Card_User_ID=cu.Card_User_ID
	JOIN Payment_status AS ps
		ON pay.payment_status_ID=ps.payment_status_ID
	JOIN Airbnb_Users AS au
		ON au.User_ID=cu.User_ID
	JOIN Booking AS b
		ON pay.booking_ID=b.booking_ID
WHERE cu.User_ID=4 AND pay.Booking_ID=1;


-- Average rating of Property 6
USE `alexandrafariaAIRBNB`;
SELECT pr.property_ID, AVG(pr.rating_of_property) AS Average_Rating
FROM Property_Reviews AS pr
	JOIN Airbnb_Rental AS p
		ON pr.Property_ID=p.Property_ID
GROUP BY pr.Property_ID
HAVING pr.property_ID= 6
;

-- Rating and review for guest, host, and property for Harry's stay at property 6 with check-out on '2023-01-20'
USE `alexandrafariaAIRBNB`;
SELECT pr.check_out_date, pr.rating_of_property  AS property_rating, pr.review_of_property,r.rating_of_guest, r.review_of_guest, r.rating_of_host, r.review_of_host
FROM Property_Reviews AS pr
	JOIN Airbnb_Rental AS p
		ON pr.Property_ID=p.Property_ID
	JOIN Reviews AS r
		ON r.check_out_date=pr.check_out_date
WHERE r.check_out_date='2023-01-20' AND p.Property_ID=6;

-- What are Harry's selected Favorite Properties and their names and city location?
USE `alexandrafariaAIRBNB`;
SELECT p.property_ID, p.property_name, c.city_name
FROM Airbnb_rental AS p
	JOIN Property_Addresses AS pa
		ON p.Address_ID=pa.Address_ID
	JOIN Cities AS c
		ON pa.city_ID=c.city_ID
	JOIN Favorite_properties AS fp
		ON fp.property_ID=p.property_ID
WHERE fp.User_ID=6;
