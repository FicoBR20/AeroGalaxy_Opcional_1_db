FROM postgres:14

ENV POSTGRES_USER=aerogalaxy
ENV POSTGRES_PASSWORD=aerogalaxy_db
ENV POSTGRES_DB=aerogalaxy

COPY ./* .sql/docker-entrypoint-initdatabse.d/

EXPOSE 5432

