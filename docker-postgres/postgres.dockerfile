FROM postgres:12.2

# copies init setup sql file to the docker container
COPY setup.sql /docker-entrypoint-initdb.d/dockersetup.sql

# allows data egress on PORT 
EXPOSE 5432