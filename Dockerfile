FROM mashape/kong
MAINTAINER Renato Biancalana da Silva <renato.biancalana.silva@gmail.com>

RUN yum install postgresql -y

COPY ./wait-for-it.sh /usr/bin/wait-for-it
RUN chmod a+x /usr/bin/wait-for-it

ENTRYPOINT ["wait-for-it", "kong-database", "5432", "kong"]
