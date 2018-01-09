FROM sunshower/sunshower-base:1.0.0
ENV PROJECT_NAME=sunshower-wildfly

RUN mkdir -p /opt/sunshower-wildfly
COPY . /home/sunshower/$PROJECT_NAME
WORKDIR /home/sunshower/$PROJECT_NAME
RUN chmod +x ./scripts/build.sh 
ENTRYPOINT ./scripts/build.sh  

