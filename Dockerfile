# Custom mongo
FROM registry.access.redhat.com/rhscl/mongodb-36-rhel7

USER root

RUN mkdir -m 777 -p /custom/mongo
COPY ./mongod.conf /custom/mongo/mongod.conf
RUN chown -R mongodb:root /custom/mongo

USER mongo

ENTRYPOINT ["mongod -f /custom/mongo/mongod.conf --auth"]
