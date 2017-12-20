FROM java:latest
LABEL version="1.0" author="lizm" description="dockerfile for zkui"

WORKDIR /var/app
ADD files/ /var/app/
ENTRYPOINT ["/var/app/bootstrap.sh"]
EXPOSE 9090
