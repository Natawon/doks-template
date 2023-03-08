#docker-compose -f thestandard-build.yml up -d
#docker ps -a
#sleep 10
#docker cp ./config-front/nginx-php-v8/etc/nginx/nginx.conf thestandard-build:/etc/nginx/nginx.conf
#docker cp -a ./config-front/nginx-php-v8/etc/nginx/sites-enabled thestandard-build:/etc/nginx/
#docker cp ./config-front/nginx-php-v8/etc/php-fpm/php.ini thestandard-build:/etc/php/7.1/fpm/php.ini
#docker cp ./config-front/nginx-php-v8/etc/php-fpm/php-fpm.conf thestandard-build:/etc/php/7.1/fpm/php-fpm.conf
#docker cp -a /data/www-front/elearning.thestandard.or.th thestandard-build:/usr/share/nginx/html/
#docker cp -a /data/www-front/app-data thestandard-build:/usr/share/nginx/html/
#docker cp ./config-front/nginx-php-v8/etc/nginx/ssl thestandard-build:/etc/nginx/ssl

#docker exec frogplus-build bash -c 'rm /usr/share/nginx/html/www.frogplus.tv/api/storage/logs/*'

#sleep 10
docker export thestandard-build > thestandard-build_export.tar
cat thestandard-build_export.tar | docker import - thestandard-build

#docker-compose -f frogplus-build.yml down

