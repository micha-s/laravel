#!/bin/bash
echo "nginx configuration webroot has to be laravels public folder"
sed -i -e 's/root \/root\/site\/wwwroot;/root \/root\/site\/wwwroot\/public;/g' /etc/nginx/sites-available/default
 
echo "Reloading nginx to apply new configuration"
service nginx reload
