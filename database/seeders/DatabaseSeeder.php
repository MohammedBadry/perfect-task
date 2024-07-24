<?php
namespace Database\Seeders;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder {
	/**
	 * Seed the application's database.
	 *
	 * @return void
	 */
	public function run() {

		\App\Models\Setting::create([
            'id' => 1,
            'sitename_ar' => 'تطبيق بيرفيكت',
            'sitename_en' => 'Perfect App',
            'email' => 'task@perfect.com',
            'logo' => 'setting/rPMfACi1e6xzEDoxUVSvUixUcD4lPMfUZ46LobiV.png',
            'icon' => 'setting/3UbxSg2iE1exLMM4fJoOmTC8PW6UCwumC1G2Sri8.png',
            'system_status' => 'open',
            'system_message' => NULL,
            'theme_setting' => '{\"brand_color\":\"navbar-dark\",\"sidebar_class\":\"sidebar-dark-navy\",\"main_header\":\"\",\"navbar\":\"navbar-dark navbar-dark\"}',
            'created_at' => '2022-04-17 21:42:13',
            'updated_at' => '2022-04-19 09:52:01',
        ]);

		\App\Models\Admin::create([
            'id' => 1,
			'name' => 'admin',
			'email' => 'admin@admin.com',
			'group_id' => 1,
			'status' => 1,
			'password' => bcrypt('password'),
		]);

		if (class_exists(\App\Models\AdminGroupRole::class)) {
			if (class_exists(\App\Models\AdminGroup::class)) {
                \App\Models\AdminGroup::Create([
                    'id' => 1,
                    'admin_id' => 1,
                    'group_name' => 'Full Permission - Admin',
                ]);
				// admingroups Role
				\App\Models\AdminGroupRole::Create([
					'name' => 'admingroups',
					'admin_groups_id' => 1,
					'show' => 'yes',
					'add' => 'yes',
					'edit' => 'yes',
					'delete' => 'yes',
				]);
				// admins Role
				\App\Models\AdminGroupRole::Create([
					'name' => 'admins',
					'admin_groups_id' => 1,
					'show' => 'yes',
					'add' => 'yes',
					'edit' => 'yes',
					'delete' => 'yes',
				]);
				// Settings Role
				\App\Models\AdminGroupRole::Create([
					'name' => 'settings',
					'admin_groups_id' => 1,
					'show' => 'yes',
					'add' => 'no',
					'edit' => 'yes',
					'delete' => 'no',
				]);
				\App\Models\AdminGroupRole::Create([
					'name' => 'categories',
					'admin_groups_id' => 1,
					'show' => 'yes',
					'add' => 'yes',
					'edit' => 'yes',
					'delete' => 'yes',
				]);
				\App\Models\AdminGroupRole::Create([
					'name' => 'products',
					'admin_groups_id' => 1,
					'show' => 'yes',
					'add' => 'yes',
					'edit' => 'yes',
					'delete' => 'yes',
				]);
			}

		}
	}
}
