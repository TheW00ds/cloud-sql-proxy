FROM alpine:3.14

WORKDIR /usr/src/app

COPY * .

EXPOSE 5432
CMD [ "./cloud_sql_proxy", "-instances=<project>:<region>:<instance>=tcp:<port>", "-credential_file=<service-key>.json" ]
