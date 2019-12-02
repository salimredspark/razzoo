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
http://localhost:8000/admin/login

email: admin@admin.com
password: password
---------------------------------------------------------------------------------------------------
IP: 123.201.9.132
root 
roo123
mongodb+srv://root:<password>@cluster0-axlbd.mongodb.net/test?retryWrites=true&w=majority

https://downloads.mongodb.com/compass/mongodb-compass-community-1.19.12-win32-x64.exe

C:\Users\Redspark\AppData\Roaming\Composer\vendor\bin;C:\python37;%PyCharm Community Edition%;C:\Program Files\MongoDB\Server\3.2\bin
----------------------------------------
Remote Access | DB Host
----------------------------------------
Prinmary
cluster0-shard-00-00-axlbd.mongodb.net
User: root 
Pass: roo123
DB: redspark
----------------------------------------
MongoDB Connection
https://github.com/salimredspark/razzoo.git

Final Installation : E:\xampp\htdocs\projects\laravel
------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------
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
vasudev.com
admin@vasudev.com
vasu@dev
---------------------------------------------------------------------------------------------------------------------------------------------
Note:
Column C, “SederID”,  in file name “VSLLP MDR _ vasupujya _ 21 Aug2019.xlsx”, Please consider it as on of the Tag, as discussed.  Also use another tag, “Real Estate Supplier”.
For other excel file, please use City, Pin Code, Locality, Level1, Level2 and Level3 as Tags. 
---------------------------------------------------------------------------------------------------------------------------------------------
1) Same customers in multiple company 
2) Assign tag to multilpe company and there companies customers
3) Import CSV in fast way
---------------------------------------------------------------------------------------------------------------------------------------------
26/09
Assign Tag
1) Change selection of company like Tags page.
2) Query Builder for Customer
---------------------------------------------------------------------------------------------------------------------------------------------

Setup MongoDB in Local

1) Download MongoDB and Laravel configure
https://medium.com/@LondonAppBrewery/how-to-download-install-mongodb-on-windows-4ee4b3493514

2) Install MSI Setup

3) Configure local database credentials into Database file in Laravel .env

3) run laravel migrate command in to CMD php artisan migrate:refresh
---------------------------------------------------------------------------------------------------------------------------------------------
MongoDB Database Tables
companies, customers, uploaded_csv, 

Laravel Created Tables after migrate command run
users, password_resets, migrations
---------------------------------------------------------------------------------------------------------------------------------------------
GIThub
https://github.com/salimredspark/razzoo

HTML
http://redspark.biz/Designers/razzoo/index.html

Admin Users
http://localhost/projects/razzoo/public/admin/login
Username: salim@redsparkinfo.co.in
Password: red@spark

admin@Razzoo.com
Username: admin@Razzoo.com
Password: red@spark
---------------------------------------------------------------------------------------------------------------------------------------------