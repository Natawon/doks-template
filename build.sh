#docker-compose -f thestandard-build.yml up -d
#docker ps -a
#sleep 10

#docker cp ./config/nginx-php/etc/nginx/nginx.conf thestandard-build:/etc/nginx/nginx.conf
#docker cp -a ./config/nginx-php/etc/nginx/sites-enabled thestandard-build:/etc/nginx/
#docker cp ./config/nginx-php/etc/php-fpm/php.ini thestandard-build:/etc/php/7.1/fpm/php.ini
#docker cp ./config/nginx-php/etc/php-fpm/php-fpm.conf thestandard-build:/etc/php/7.1/fpm/php-fpm.conf
docker cp -a /data/webinar/www thestandard-build:/usr/share/nginx/html/
#docker cp ./config/nginx-php/etc/nginx/ssl thestandard-build:/etc/nginx/ssl

#docker exec thestandard-build bash -c 'rm /usr/share/nginx/html/api/storage/logs/*'

#du -sh  /usr/share/nginx/html/elearning.thestandard.or.th/api/storage/logs/

#sleep 10
#docker export thestandard-build > thestandard-build_export.tar
#cat thestandard-build_export.tar | docker import - thestandard-build

#docker-compose -f frogplus-build.yml down

