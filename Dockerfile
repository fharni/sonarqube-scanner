FROM openjdk:11-jre

RUN apt-get update && apt-get -y install curl git python3-pip nodejs
RUN pip3 install --upgrade pip pylint setuptools

WORKDIR /root

RUN env && \
curl --insecure -OL 'https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.0.0.1744-linux.zip' && \
mkdir sonar_scanner && unzip -d sonar_scanner sonar*.zip && mv sonar_scanner/* sonar_home && rm -rf sonar_scanner sonar*.zip

ENV SONAR_RUNNER_HOME=/root/sonar_home
ENV PATH ${SONAR_RUNNER_HOME}/bin:$PATH

CMD sonar-scanner -Dsonar.projectBaseDir=./src
