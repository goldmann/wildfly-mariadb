Example showing how we can connect a MariaDB database with WildFly application server.

## Build

    docker build --rm --tag wildfly-mariadb .

## Run

    docker run -d --name=mariadb fedora/mariadb
    docker run -it --rm --link mariadb:mariadb -p 8080:8080 wildfly-mariadb
