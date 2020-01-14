FROM mariadb:10.4

LABEL maintainer "miguelwill@gmail.com"

# libraries for build UDF plugin
RUN     apt-get update; \
        apt-get install -y \
        libmysqlclient-dev make gcc vim net-tools\
        ; \
        rm -rf /var/lib/apt/lists/*;

# copy udf plugin source files 
RUN mkdir /usr/local/bin/lib_mysqludf_sys
COPY lib_mysqludf_sys/* /usr/local/bin/lib_mysqludf_sys/
RUN cd /usr/local/bin/lib_mysqludf_sys && make

VOLUME /var/lib/mysql

COPY docker-entrypoint.sh /usr/local/bin/
#RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 3306
CMD ["mysqld"]
