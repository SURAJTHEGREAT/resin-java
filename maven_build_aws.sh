
#bin/sh
set -vx
mvn install:install-file -Dfile=/usr/local/quarksjava/Quarks_libs/quarks.api.graph.jar -DgroupId=quarks.api.graph -DartifactId=quarks.api.graph -Dversion=1.0 -Dpackaging=jar


mvn install:install-file -Dfile=/usr/local/quarksjava/Quarks_libs/quarks.api.oplet.jar -DgroupId=quarks.api.oplet -DartifactId=quarks.api.oplet -Dversion=1.0 -Dpackaging=jar
	
	

mvn install:install-file -Dfile=/usr/local/quarksjava/Quarks_libs/quarks.api.window.jar -DgroupId=quarks.api.window -DartifactId=quarks.api.window -Dversion=1.0 -Dpackaging=jar


mvn install:install-file -Dfile=/usr/local/quarksjava/Quarks_libs/quarks.providers.development.jar -DgroupId=quarks.providers.development -DartifactId=quarks.providers.development -Dversion=1.0 -Dpackaging=jar


mvn install:install-file -Dfile=/usr/local/quarksjava/Quarks_libs/quarks.providers.iot.jar -DgroupId=quarks.providers.iot -DartifactId=quarks.providers.iot -Dversion=1.0 -Dpackaging=jar


mvn install:install-file -Dfile=/usr/local/quarksjava/Quarks_libs/quarks.runtime.appservice.jar -DgroupId=quarks.runtime.appservice -DartifactId=quarks.runtime.appservice -Dversion=1.0 -Dpackaging=jar


mvn install:install-file -Dfile=/usr/local/quarksjava/Quarks_libs/quarks.runtime.etiao.jar -DgroupId=quarks.runtime.etiao -DartifactId=quarks.runtime.etiao -Dversion=1.0 -Dpackaging=jar


mvn install:install-file -Dfile=/usr/local/quarksjava/Quarks_libs/quarks.runtime.jmxcontrol.jar -DgroupId=quarks.runtime.jmxcontrol -DartifactId=quarks.runtime.jmxcontrol -Dversion=1.0 -Dpackaging=jar


mvn install:install-file -Dfile=/usr/local/quarksjava/Quarks_libs/quarks.runtime.jobregistry.jar -DgroupId=quarks.runtime.jobregistry -DartifactId=quarks.runtime.jobregistry -Dversion=1.0 -Dpackaging=jar


mvn install:install-file -Dfile=/usr/local/quarksjava/Quarks_libs/quarks.runtime.jsoncontrol.jar -DgroupId=quarks.runtime.jsoncontrol -DartifactId=quarks.runtime.jsoncontrol -Dversion=1.0 -Dpackaging=jar


mvn install:install-file -Dfile=/usr/local/quarksjava/Quarks_libs/quarks.spi.graph.jar -DgroupId=quarks.spi.graph -DartifactId=quarks.spi.graph -Dversion=1.0 -Dpackaging=jar


#NEW

mvn install:install-file -Dfile=/usr/local/quarksjava/Quarks_libs/quarks.spi.topology.jar -DgroupId=quarks.spi.topology -DartifactId=quarks.spi.topology -Dversion=1.0 -Dpackaging=jar

#NEW1
mvn install:install-file -Dfile=/usr/local/quarksjava/Quarks_libs/quarks.api.function.jar -DgroupId=quarks.api.function -DartifactId=quarks.api.function -Dversion=1.0 -Dpackaging=jar

#NEW2
mvn install:install-file -Dfile=/usr/local/quarksjava/Quarks_libs/quarks.providers.direct.jar -DgroupId=quarks.providers.direct -DartifactId=quarks.providers.direct -Dversion=1.0 -Dpackaging=jar

#NEW3
mvn install:install-file -Dfile=/usr/local/quarksjava/Quarks_libs/quarks.api.topology.jar -DgroupId=quarks.api.topology -DartifactId=quarks.api.topology -Dversion=1.0 -Dpackaging=jar

#NEW 4
mvn install:install-file -Dfile=/usr/local/quarksjava/Quarks_libs/quarks.api.execution.jar -DgroupId=quarks.api.execution -DartifactId=quarks.api.execution -Dversion=1.0 -Dpackaging=jar







