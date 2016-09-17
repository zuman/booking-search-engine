//	@Author:	Syed Zuman Husain
//	@email:		syed.zuman.007@gmail.com

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