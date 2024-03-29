FROM fedora

RUN yum install -y nodejs
RUN yum install -y npm
RUN yum install -y git
RUN yum install -y bzip2

RUN git clone https://github.com/AdrianBalcan/ab-node.git /app

WORKDIR /app

RUN npm install

EXPOSE 8080

CMD npm start
