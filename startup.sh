#!/bin/bash
echo "nginx configuration webroot has to be laravels public folder"
sed -i -e 's/root \/home\/site\/wwwroot;/root \/home\/site\/wwwroot\/public;/g' /etc/nginx/sites-enabled/default

echo "generating new application key"
php artisan key:generate

echo "Reloading nginx to apply new configuration"
service nginx reload

# needed first time deploy:
# cd /home/site/wwwroot && cp -n .env.example .env 
