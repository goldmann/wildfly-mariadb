FROM jboss/wildfly
ADD org /opt/wildfly/modules/org/
ADD wildfly-kitchensink.war /opt/wildfly/standalone/deployments/
ADD add-datasource.sh /opt/wildfly/bin/
RUN /opt/wildfly/bin/add-datasource.sh
