
<!-- GETTING STARTED -->
## Getting Started

This is a task solution of php oop import excel example.
To get a local copy up and running follow these simple example steps.


### Installation

1. Clone the repo in your localhost www folder
   ```sh
   git clone https://github.com/MohammedBadry/perfect-task.git
   ```

2. Open terminal in the project root directory and run
   ```js
   composer install
   npm install
   npm run build
   ```

3. Go to your phpMyAdmin and create new database

4. Rename .env.example to .env and then enter your DB Settings
   ```js
    DB_HOST=127.0.0.1
    DB_PORT=3306
    DB_DATABASE=task
    DB_USERNAME=root
    DB_PASSWORD=
   ```

5. run these commands in terminal
   ```js
   php artisan migrate --seed
   php artisan key:generate
   php artisan storage:link
   php artisan serve
   ```
   
6. Open the project on your browser like below
   ```js
    http://127.0.0.1:8000
   ```
   
7. default admin credentials:
   ```js
    email: admin@admin.com
   password: password
   ```
