FROM    ubuntu
MAINTAINER Willrich
RUN apt-get update && \
    apt-get -y install curl nodejs npm nginx sudo

RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - && sudo apt-get install -y nodejs

RUN npm install -g @angular/cli
RUN npm install -g s3-upload

EXPOSE 4200

WORKDIR /usr/fewo-willrich

CMD npm start 