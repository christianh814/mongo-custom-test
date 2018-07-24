# Custom mongo
FROM registry.access.redhat.com/rhscl/mongodb-36-rhel7:latest

USER 0

RUN mkdir -m 777 -p /custom/mongo
RUN chown mongodb:root /custom/mongo
RUN cp /etc/mongod.conf /custom/mongo

ENTRYPOINT ["mongod -f /custom/mongo/mongod.conf --auth"]
