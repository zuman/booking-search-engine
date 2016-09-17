#Booking.com Search Engine project

@Author:	Syed Zuman Husain
@email:		syed.zuman.007@gmail.com

This project appeared to me on HackerRank via an open-ended Hackathon.

The problem statement was to create a search engine that would take people's passions as arguments and suggest them one or more places to visit for vacations which would best match their passions.

For eg. If someone enters 'Food' as their passion, a list of cities should pop-up where food is endorsed by the travellers who have visited the place before.

The database contains a singlr table with only three columns: City, Passion, Endorse_count. Where Endorement_count is an integer denoting the number of travellers who have given a positive response for that respected passion in that respected city.

You can add or edit the existing data in the database via "Edit Data" on top right corner of the search engine

Try entering food, walk, beach in the search engine.

Front-end Technologies used:
	1. HTML/CSS
	2. AngularJS
	
Back-end Technologies used:
	1. PHP
	2. Apache Server
	3. MySQL for Database
	
Steps to configure project:

	1. Install WAMPP or XAMPP according to your OS.
	2. Run Apache and MySQL on the server.
	3. Create database 'booking' or use file '127_0_0_1.sql' to create and populate the database.
	   The search engine accuracy is better with more data in the database.
	4. Change the database name, username, password, localhost values in '\booking\logic\connect.php' file.
	   Default login: 		username='root',		password=''			//There is no password for this username.
	   Alternate login:		username='bookadmin',	password='mypass'
	5. run the web app on http://localhost/booking

Key features:

	1. Results display as you type.
	2. No need to add delimeter. The only delimeter is a space (' '). So no need to use comma(',') or anything else in search bar.
	   Checkout the screenshots in 'screenshots' folder to see how it works.
	3. There is a console created to get real-time backend info.
	4. You can clear the console any time by clicking on "Clear Console" button on upper right corner of any page.
	5. Go to Insert page by clicking on "Insert Data" on upper right corner of any page.
	6. In Insert page, 'Insert/Update' can be used to Insert or Update the value of a City and Passion.
	   You don't need to worry about redundant tuples. It has been taken care of. ;)
	7. You can also view an Endorsement count value of a City, Passion pair by clicking on 'Get Endorsements' button.