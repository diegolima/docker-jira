FROM centos:7
MAINTAINER Diego Lima <diego@diegolima.org>


RUN mkdir /app
ADD https://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-software-7.2.4-x64.bin /app/
