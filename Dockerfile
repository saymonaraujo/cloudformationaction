FROM ubuntu:18.04

LABEL com.github.actions.name="CloudFormation Deploy Action-Saymon"
LABEL com.github.actions.description="Deploy AWS CloudFormation Stack-Saymon"
LABEL com.github.actions.icon="upload-cloud"
LABEL com.github.actions.color="orange"

LABEL repository="https://github.com/saymonaraujo/cloudformationaction.git"
LABEL homepage="https://github.com/saymonaraujo/cloudformationaction.git"
LABEL maintainer="Saymon Araujo <saymon.onl@gmail.com>"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y awscli

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
