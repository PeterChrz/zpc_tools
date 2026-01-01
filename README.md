# zpc_tools
handy scripts for managing local dev system

### php_mysql_dev/
// When using Artix or any OpenRC based system I try to run as few default services as possible. When doing php dev work, call the following scripts to start and stop services related to php-fpm and mariadb from a .bashrc alias for ease of use. 
- start_dev_services.sh: Start OpenRC services related to php-fpm and mariadb
- stop_dev_services.sh: Stop OpenRC services related to php-fpm and mariadb
