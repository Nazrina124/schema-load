FROM          docker.io/redhat/ubi9
COPY          mongo.repo /etc/yum.repos.d/mongo.repo
RUN           dnf install mysql mongodb-mongosh git -y
COPY          run.sh /
ENTRYPOINT    ["bash", "-x", "/run.sh"]