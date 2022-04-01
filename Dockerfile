FROM oraclelinux:8-slim

RUN curl 'https://copr.fedorainfracloud.org/coprs/g/CESNET/NEMEA/repo/epel-8/group_CESNET-NEMEA-epel-8.repo' > /etc/yum.repos.d/group_CESNET-NEMEA-epel-8.repo

# Installation of python3 and some useful tools
RUN microdnf install less vim oracle-epel-release-el8

# Installation of nemea-framework incl. pytrap and python3
RUN microdnf install ipython3 nemea-framework

RUN mkdir /data

VOLUME /data
