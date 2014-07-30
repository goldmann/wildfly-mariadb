Example showing how we can connect a MariaDB database with WildFly application server.

## Build

    docker build --rm --tag wildfly-mariadb .

## Run

    docker run -d --name=mariadb fedora/mariadb
    docker run -it --rm --link mariadb:mariadb -p 8080:8080 wildfly-mariadb

## Source code

The source code of the application used in this example is [available here](https://github.com/wildfly/quickstart/tree/master/kitchensink). One change was made to the source -- the [`kitchensink-quickstart-ds.xml`](https://github.com/wildfly/quickstart/blob/master/kitchensink/src/main/webapp/WEB-INF/kitchensink-quickstart-ds.xml) was removed, because we use the `jboss/datasources/KitchensinkQuickstartDS` dat source created in the `/opt/wildfly/standalone/configuration/standalone.xml` configuration file.
