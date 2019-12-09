https://laravel.com/docs/6.x | Version 5.5.48
---------------------------------------------------------------------------------------------------
Via Laravel Installer
First, download the Laravel installer using Composer.
composer global require "laravel/installer=~1.1"

Default Installed Path: C:\Users\Redspark\AppData\Roaming\Composer\vendor\bin  in windows
---------------------------------------------------------------------------------------------------
Download extension=php_mongodb.dll and configure in php.ini
https://pecl.php.net/package/mongodb/1.6.0/windows
---------------------------------------------------------------------------------------------------
Install mongo-php-library
https://github.com/mongodb/mongo-php-library
composer require mongodb/mongodb
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
Publish Cookies
https://github.com/spatie/laravel-cookie-consent
---------------------------------------------------------------------------------------------------------------------------------------------