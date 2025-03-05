FROM amazon/aws-cli:2.24.17

# Add Kubernetes repository and install kubectl 1.32
RUN yum install -y yum-utils && \
    yum-config-manager --add-repo https://pkgs.k8s.io/core:/stable:/v1.32/rpm/ && \
    rpm --import https://pkgs.k8s.io/core:/stable:/v1.32/rpm/repodata/repomd.xml.key && \
    yum install -y kubectl