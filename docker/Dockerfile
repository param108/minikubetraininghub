FROM ubuntu:18.04

RUN apt update && apt install -y openssl gnupg2 vim apt-transport-https ca-certificates curl software-properties-common

RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list
RUN apt-get update && apt-get install -y kubectl

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

RUN apt-get update && apt-get install -y docker-ce

RUN useradd -p `openssl passwd user1` -G docker,sudo user1  --shell /bin/bash

RUN useradd -p `openssl passwd user2` -G docker,sudo user2 --shell /bin/bash

RUN useradd -p `openssl passwd user3` -G docker,sudo user3 --shell /bin/bash

RUN useradd -p `openssl passwd user4` -G docker,sudo user4 --shell /bin/bash

RUN useradd -p `openssl passwd user5` -G docker,sudo user5 --shell /bin/bash

RUN useradd -p `openssl passwd user6` -G docker,sudo user6 --shell /bin/bash

RUN useradd -p `openssl passwd user7` -G docker,sudo user7 --shell /bin/bash

RUN useradd -p `openssl passwd user8` -G docker,sudo user8 --shell /bin/bash

RUN useradd -p `openssl passwd user9` -G docker,sudo user9 --shell /bin/bash

RUN useradd -p `openssl passwd user10` -G docker,sudo user10 --shell /bin/bash


RUN useradd -p master -G docker,sudo master --shell /bin/bash

ADD --chown=master:master kube /home/master/.kube

ADD --chown=root:root minikube /usr/local/minikube

RUN chmod -R 755 /usr/local/minikube

RUN apt install -y telnet telnetd

ADD inet_run.sh /inet_run.sh

RUN chmod 777 /inet_run.sh

RUN chown user1:user1 /home/user1
RUN chown user2:user2 /home/user2
RUN chown user3:user3 /home/user3
RUN chown user4:user4 /home/user4
RUN chown user5:user5 /home/user5
RUN chown user6:user6 /home/user6
RUN chown user7:user7 /home/user7
RUN chown user8:user8 /home/user8
RUN chown user9:user9 /home/user9
RUN chown user10:user10 /home/user10
RUN chown master:master /home/master

COPY --chown=user1:user1 bash_profile /home/user1/.bash_profile
COPY --chown=user2:user2 bash_profile /home/user2/.bash_profile
COPY --chown=user3:user3 bash_profile /home/user3/.bash_profile
COPY --chown=user4:user4 bash_profile /home/user4/.bash_profile
COPY --chown=user5:user5 bash_profile /home/user5/.bash_profile
COPY --chown=user6:user6 bash_profile /home/user6/.bash_profile
COPY --chown=user7:user7 bash_profile /home/user7/.bash_profile
COPY --chown=user8:user8 bash_profile /home/user8/.bash_profile
COPY --chown=user9:user9 bash_profile /home/user9/.bash_profile
COPY --chown=user10:user10 bash_profile /home/user10/.bash_profile
COPY --chown=master:master bash_profile /home/master/.bash_profile

COPY --chown=user1:user1  kube /home/user1/.kube
COPY --chown=user2:user2 kube /home/user2/.kube
COPY --chown=user3:user3 kube /home/user3/.kube
COPY --chown=user4:user4 kube /home/user4/.kube
COPY --chown=user5:user5 kube /home/user5/.kube
COPY --chown=user6:user6 kube /home/user6/.kube
COPY --chown=user7:user7 kube /home/user7/.kube
COPY --chown=user8:user8 kube /home/user8/.kube
COPY --chown=user9:user9 kube /home/user9/.kube
COPY --chown=user10:user10 kube /home/user10/.kube


CMD /bin/bash /inet_run.sh
