FROM ubuntu:18.04
RUN DEBIAN_FRONTEND=noninteractive apt-get update -y && \
	DEBIAN_FRONTEND=noninteractive apt-get install openssh-client rsync ansible -y
RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh
RUN echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
