# Rabbit-job
recruit website. written in pure php and db is mysql

download the source code.
How to run this website?
step 1: Start Apache and MySQL in xampp panel.
step 2: copy the source code with name "cap2" into C:\xampp\htdocs if you use window.
step 3: You need open phpmyadmin. click admin in the MySQL row in xampp panel or open browser, write "localhost/phpmyadmin".
step 4: import the database "rabbit_job" in "database" folder.
step 5: in the source. you need configure a few things:
	- in include/connection.php. you need fix servername = "localhost",username = "root", password = "", database = "rabbit_job".
step 6: open browser and write "localhost/cap2". the project will work.
-some accounts: 
+ admin899 pass: 123456
+ user899 pass:123456
+ poster899 pass:123456
+ suporter899 pass: 123456
+ hr899 pass:123456

-admin: 
	+ can CRUD member
-user:
	+ can search the job.
	+ see detail the job.
	+ apply the job by submit cv (upload file pdf).
	+ chat realtime with supporter.
	+ read blog.
-poster:
	+ CRUD the post.
	+ edit status the post (private or public).
-supporter:
	+ chat realtime with candidate (user).
-human resource:
	+ CRUD the job.
	+ download cv that user submitted.