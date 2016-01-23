#FROM postgres:9.5
FROM postgres:9.4

# This postgres+postgis image is based on official postgres pkg.
# Note: We can keep an eye on https://github.com/appropriate/docker-postgis/issues/8

ADD https://www.postgresql.org/media/keys/ACCC4CF8.asc /tmp/
RUN apt-key add /tmp/ACCC4CF8.asc
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list
RUN apt-get update
#RUN apt-get install postgresql-9.5-postgis-2.2
RUN apt-get install -y postgresql-9.4-postgis-2.1
