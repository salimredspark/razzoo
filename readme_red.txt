https://laravel.com/docs/6.x | Version 5.5.48
---------------------------------------------------------------------------------------------------
Via Laravel Installer
First, download the Laravel installer using Composer.
composer global require "laravel/installer=~1.1"

Default Installed Path: C:\Users\Redspark\AppData\Roaming\Composer\vendor\bin  in windows
---------------------------------------------------------------------------------------------------
Laravel Installer
composer global require laravel/installer
laravel new razzoo [project folder name --it will create auto]
--------------------------------------------------------------------------------------------
Installl Laravel with Latest Version
composer create-project --prefer-dist laravel/laravel
composer create-project laravel/laravel razzoo 6.0 --prefer-dist

Install with specifice Version
composer create-project laravel/laravel {directory} 4.2 --prefer-dist
composer create-project --prefer-dist laravel/laravel 6.1
composer create-project laravel/laravel blog "6.0.*"
composer remove maatwebsite/excel

install in direct dir
composer create-project --prefer-dist laravel/laravel project_folder_name
---------------------------------------------------------------------------------------------------
After Installation run following command to run laravel: 
php artisan serve 
then open http://localhost:8000/

///Login
GIThub Login
https://github.com/salimredspark/razzoo.git
salimredspark
salim@redsparkinfo.co.in
sk@spark123
---------------------------------------------------------------------------------------------------
How to create Admin Panel
https://www.itsolutionstuff.com/post/laravel-5-create-quick-backend-admin-panel-tutorialexample.html

composer create-project --prefer-dist laravel/laravel razzoo_new

Step 1 : Install Laravel Application
composer create-project --prefer-dist laravel/laravel blog
Step 2 : Install voyager Package
composer require tcg/voyager
Step 3 : Database Configuration
Step 4 : Add ServiceProvider
config/app.php
'providers' => [
	....
	TCG\Voyager\VoyagerServiceProvider::class,
	Intervention\Image\ImageServiceProvider::class,
]
Step 5 : Install Voyager
php artisan voyager:install
Step 6 : Make Setting File
config/voyager.php
php artisan vendor:publish --tag=voyager_assets --force
php artisan serve
---------------------------------------------------------------------------------------------------
http://localhost/projects/razzoo/public/admin/login

Admin
email: admin@razzoo.com
password: red@spark

Super Admin
email: salim@redsparkinfo.co.in
password: red@spark
---------------------------------------------------------------------------------------------------
Multi-Step Form
https://www.jqueryscript.net/form/Signup-Form-Wizard-jQuery-multiStepForm.html
---------------------------------------------------------------------------------------------------
Database Migraetion
php artisan migrate
php artisan migrate:rollback
---------------------------------------------------------------------------------------------------------------------------------------------
Help: https://selftaughtcoders.com/from-idea-to-launch/lesson-17/laravel-5-mvc-application-in-10-minutes/

Create Table (First Create Migration File in laravel\database\migrations\)
php artisan make:migration create_car_table
Then add your columns in files and run again php artisan migrate
---------------------------------------------------------------------------------------------------------------------------------------------
Create Model
php artisan make:model Car --migration

Create Controller
php artisan make:controller CarController
---------------------------------------------------------------------------------------------------------------------------------------------
Create Controller and Model
https://laravel.com/docs/master/controllers
---------------------------------------------------------------------------------------------------------------------------------------------
add in system varibale
C:\Program Files\MongoDB\Server\3.2\bin;
---------------------------------------------------------------------------------------------------------------------------------------------
How to add menu in admin panel
1) vendor\tcg\voyager\src\Http\Controllers -- Create controller like [VoyagerLoanController.php]
2) vendor\tcg\voyager\src\Models -- Create model like [Loan.php]
3) Create Bread -- or check data_types table in DB
4) And Create Menu in Admin
---------------------------------------------------------------------------------------------------------------------------------------------
facebook Login
https://www.itsolutionstuff.com/post/laravel-56-login-with-facebook-with-socialiteexample.html

App Created Login and App name : Razzoo
testing016.test@gmail.com
testers123
---------------------------------------------------------------------------------------------------------------------------------------------
Google Address API
https://stackoverflow.com/questions/38321753/google-map-autocomplete-with-laravel
---------------------------------------------------------------------------------------------------------------------------------------------
Bank Statement APi
https://swagger.io/tools/open-source/open-source-integrations/

MogoPluse
https://mogoplus.com/
https://www.mogo.ca/signup

I can not find any API documentation for MogoPlus. I have request for demo. Following website I have referer for help
https://mogoplus.com/
https://www.mogo.ca/signup

So please provide API document for development help.
---------------------------------------------------------------------------------------------------------------------------------------------
Newsletter
https://github.com/spatie/laravel-newsletter
---------------------------------------------------------------------------------------------------------------------------------------------
Publish Cookies
https://github.com/spatie/laravel-cookie-consent
---------------------------------------------------------------------------------------------------------------------------------------------
https://my.a2hosting.com/clientarea.php
dhruv@redsparkinfo.com
Redspark@1
---------------------------------------------------------------------------------------------------------------------------------------------
redspark.biz
DB Name: rtrialco_razzoo
DB user: rtrialco_razzoo
DB Pass: 3BQ66DWI*KNI
--------------------------------------------------------------------------------------------------------------------------------------------
SSH
User: redspar2
Passphrase: magento_2
cd /home/redspar2/public_html/razzoo
--------------------------------------------------------------------------------------------------------------------------------------------
Admin Login
https://razzoo.redspark.biz/public/admin/login
email: admin@razzoo.com
password: red@spark
---------------------------------------------------------------------------------------------------------------------------------------------
Development Domain URL
https://razzoo.redspark.biz/public
--------------------------------------------------------------------------------------------------------------------------------------------
https://secure.uat.mogoplus.com/maroubra/login
dpatel 
Red@spark1
--------------------------------------------------------------------------------------------------------------------------------------------
1) Upload Project to Server
2) Set Home Page
3) Facebook Login
4) Bank Statemment -- MogoPlus API 
5) 


Search by ABN: SearchByABNv201408
Search by ACN: SearchByASICv201408
Your GUID for accessing the web services is: 8f522b7d-f8fa-4503-a385-34a7399dbcca
Test No: 51824753556

It cannot be created, unfortunately as it the primary account and also an A2 subdomain. Only one A2 subdomain is only available for a single cPanel account. So if you need an account like https://razzoo.a2hosted.com, you may need purchase a new hosting plan. 













