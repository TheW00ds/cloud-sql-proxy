# Cloud SQL Proxy

_Dockerization of a proxy service from Google that allows connections to Google Cloud SQL._

- [Google Cloud SQL Proxy](https://cloud.google.com/sql/docs/sql-proxy)

To run the Coud SQL Proxy on your local machine, you need to first [create a key](https://cloud.google.com/iam/docs/creating-managing-service-account-keys) for a service account that has Cloud SQL Client privileges.

## Local Usage

Run the following command to start the proxy, but replace the `<project-id>`, `<service-account-key-file>` and `<port>` with your own values.:

`./cloud_sql_proxy -instances=<project>:<region>:<instance>=tcp:<port>`

## Docker Usage

Edit the Dockerfile to replace the `<project-id>`, `<service-account-key-file>` and `<port>` with your own values.

### Build The Image

`docker build -t cloud-sql-proxy .`

### Run The Image

`docker run -d -p 5432:5432 --name cloud-sql-proxy cloud-sql-proxy`

## Push Image To Google Container Registry

[_Pushing and pulling images from Google Container Registry_](https://cloud.google.com/container-registry/docs/pushing-pulling)
