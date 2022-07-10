#!/bin/bash
echo "nginx configuration webroot has to be laravels public folder"
sed -i -e 's/root \/home\/site\/wwwroot;/root \/home\/site\/wwwroot\/public;/g' /etc/nginx/sites-available/default
 
echo "Reloading nginx to apply new configuration"
service nginx reload
