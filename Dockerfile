FROM resin/nuc-debian
RUN apt-get update && echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | tee /etc/apt/sources.list.d/webupd8team-java.list
RUN echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 boolean true" | debconf-set-selections
RUN apt-get update && apt-get install oracle-java8-installer && apt-get install maven
ADD settings.xml /usr/share/maven
ADD . /usr/local/quarksjava/
RUN sh /usr/local/quarksjava/maven_build_aws.sh
RUN cd /usr/local/quarksjava/Sample_Edgent && mvn clean install

#RUN mvn clean install
#CMD ["java", "-cp", "/usr/local/quarksjava/quarksjava-1.0.jar", "CommonApplication"]
CMD ["java", "-jar", "/usr/local/quarksjava/Sample_Edgent/target/Sample_Edgent-0.0.1-SNAPSHOT.jar"]

