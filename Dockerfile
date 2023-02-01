FROM centos:9
MAINTAINER caesarek <caesar@email.cz>

# Add repo file
ADD ./sander.repo /etc/yum.repos.d/

# Install cool software
RUN 	dnf -y update && \
	dnf -y mc install bash nmap iproute && \
	dnf clean all

ENTRYPOINT ["/bin/bash"]
#CMD ["-sn", "172.17.0.0/24"] 
