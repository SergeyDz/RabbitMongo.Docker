FROM rabbitmq:3-management

COPY scripts/install.mongo.sh /usr/local/bin/
RUN chmod 777 /usr/local/bin/install.mongo.sh &&  /usr/local/bin/install.mongo.sh 

ENV RABBITMQ_DEFAULT_USER=messagebus
ENV RABBITMQ_DEFAULT_PASS=messagebus
ENV RABBITMQ_DEFAULT_VHOST=vhost_test

COPY scripts/start.sh /usr/local/bin/
RUN chmod 777 /usr/local/bin/start.sh


EXPOSE 4369 5671 5672 25672 15672 27017
#ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/usr/local/bin/start.sh"]