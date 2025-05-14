FROM            docker.io/redhat/ubi9
COPY            mongo.repo /etc/yum.repos.d/mongo.repo
RUN             dnf install mysql mongodb-mongosh git -y
COPY            run.sh /
ENTRYPOINT      ["bash", "/run.sh"]   ### entrypoinnt is the  allows you to configure a container that will run as an executable. hence it #### allow to run the command entered in run.sh which is condition given to the masterdata if mongo then run and if mysql then run

