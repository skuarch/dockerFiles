#
## docker run -t -d -p 4848:4848 -p 8080:8080 -p 8181:8181 ozark
#

# Start off with latest GF image that includes JDK 8
FROM glassfish:latest

# Maintainer
MAINTAINER Santiago Pericas-Geertsen <santiago.pericasgeertsen@oracle.com>

# Download and overlay latest GF with Ozark samples

# Set working directory
WORKDIR /usr/local/glassfish4

# Nuke old GF to overlay Ozark's version
RUN rm -rf /usr/local/glassfish4/*

# Download GF
RUN wget https://java.net/projects/ozark/downloads/download/Docker/glassfish-ozark.zip 

# COPY glassfish-ozark.zip /usr/local/glassfish4/

# Unpack GF
RUN unzip -o glassfish-ozark.zip

# Cleanup GF
RUN rm -f glassfish-ozark.zip

# Set JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

# Start GF
ENTRYPOINT ["asadmin", "start-domain", "-v"]

# Ports being exposed
EXPOSE 4848
EXPOSE 8080
EXPOSE 8181
