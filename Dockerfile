FROM centos:7
MAINTAINER Diego Lima <diego@diegolima.org>

EXPOSE 8080 8085

ADD https://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-software-7.2.4-x64.bin /opt/
ADD https://raw.githubusercontent.com/diegolima/docker-jira/master/response.varfile /opt/

RUN chmod +x /opt/atlassian-jira-software-7.2.4-x64.bin
RUN /opt/atlassian-jira-software-7.2.4-x64.bin -q -varfile /opt/response.varfile
RUN rm -f /opt/atlassian-jira-software-7.2.4-x64.bin /opt/response.varfile
CMD ["/opt/jira-server/bin/catalina.sh", "run"]