# https://hub.docker.com/_/oraclelinux
# https://github.com/oracle/container-images/pkgs/container/oraclelinux
# https://github.com/oracle/container-images/blob/dist-amd64/9-slim/Dockerfile
FROM oraclelinux:9-slim

# https://github.com/oracle/docker-images/blob/main/OracleLinuxDevelopers/oraclelinux9/python/3.11/Dockerfile
RUN microdnf -y install python3.11 python3.11-libs python3.11-pip python3.11-setuptools python3.11-wheel && \
    rm -rf /var/cache/dnf

CMD ["/usr/bin/python3.11", "-V"]
