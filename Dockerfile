FROM owncloud:latest

RUN ln -s /usr/lib/x86_64-linux-gnu/libldap.so /usr/lib/

RUN apt-get update
RUN apt-get install -y libldap2-dev

RUN docker-php-ext-install ldap
