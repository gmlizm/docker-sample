FROM java:latest
LABEL version="1.0" author="lizm" description="dockerfile for zkui"

ADD files/* /var/app/
ENTRYPOINT ["/var/app/bootstrap.sh"]
EXPOSE 9090
