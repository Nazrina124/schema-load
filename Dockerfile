FROM          docker.io/redhat/ubi9
COPY          mongo.repo /etc/yum.repos.d/mongo.repo
RUN           dnf install mysql mongodb-mongosh git -y
COPY          run.sh /
ENTRYPOINT    ["bash", "-x", "/run.sh"]  #####-x is debug 


#####Commands to remember docker bild .  . is the current location path
###### docker build -t 640168456211.dkr.ecr.us-east-1.amazonaws.com/schema-load .    ## 
####Remember after changes doker built -t ...and then docker push 
#### docker run -it --entrypoint 

