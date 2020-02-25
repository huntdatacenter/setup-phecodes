FROM ubuntu:xenial as build

# Environment variables
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
ENV ANSIBLE_VERSION 2.9.5

# Install Ansible
RUN apt-get update && \
    apt-get --yes install python3-pip && \
    python3 -m pip install pip --upgrade && \
    python3 -m pip install --upgrade pycrypto cryptography && \
    python3 -m pip install ansible && \
    rm -rf /var/lib/apt/lists/*

# Copy required files
COPY setup.yaml setup.yaml

# Run playbook locally
RUN ansible-playbook setup.yaml --tags all,docker --connection local --inventory localhost,

# Run Rscript
CMD ["Rscript"]
