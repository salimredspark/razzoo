<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'Admin',
            'email' => 'salim@redsparkinfo.co.in',
            'role_id' => 1,
            'password' => bcrypt('red@spark'),
        ]);
        DB::table('users')->insert([
            'name' => 'Admin',
            'email' => 'admin@Razzoo.com',
            'role_id' => 1,
            'password' => bcrypt('red@spark'),
        ]);
    }
}
