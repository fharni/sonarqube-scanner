# sonarqube-scanner for docker

runs sonar-scanner 4.0.0.1744 in a docker container. It has support for Python 3 and NodeJS 12.

To pull and run
```
docker run -ti -v $(pwd):/root/src fharni/sonarqube-scanner
```

# Example Project Config
You need a sonar-project.properties in the root of your project file heres
a template for python
```
# Required metadata
sonar.projectKey=de.falkharnisch:sonar-project-key
sonar.projectName=Sonar Project Name
sonar.projectVersion=1.0

# Sonar API token
sonar.login=123455e62d5cb9aa015cca0f8f24981798891280

# Comma-separated paths to directories with sources (required)
sonar.sources=src/main/java,src/main/webapp

# Comma-separated paths to directories with tests
sonar.tests=src/test/java

# Comma-separated paths to directories with classes binaries
sonar.java.binaries=target/classes

# Tells SonarQube where the unit tests execution reports are
sonar.junit.reportsPath=target/surefire-reports

# Tells SonarQube where the unit tests code coverage report is
sonar.jacoco.reportPaths=target/jacoco.exec

# Encoding of the source files
sonar.sourceEncoding=UTF-8

# SCM provider
sonar.scm.provider=git

# Host URL
sonar.host.url=http://sonar:9000
```
