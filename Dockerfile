FROM jenkins/jenkins:lts
USER "root"
RUN \
apt-get update -y && apt-get install unzip -y && apt-get install wget -y
RUN wget https://releases.hashicorp.com/terraform/0.12.17/terraform_0.12.17_linux_amd64.zip
RUN unzip terraform_0.12.17_linux_amd64.zip
RUN mv terraform /usr/local/bin/
RUN chown jenkins:jenkins terraform

RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip

RUN pip3 install awscli --upgrade --user

USER "jenkins"