# Custom mongo
FROM registry.access.redhat.com/rhscl/mongodb-36-rhel7:latest

USER 0

RUN mkdir /etc/mongo
RUN chown mongodb:root /etc/mongo
RUN cp /etc/mongod.conf /etc/mongo

ENTRYPOINT ["mongod -f /etc/mongo/mongod.conf --auth"]
