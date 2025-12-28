FROM ubuntu:24.04
RUN  apt update --fix-missing \
     && apt install -y libopenmpi-dev openmpi-bin \
     && apt install -y ssh \
     && apt install -y python3-mpi4py \
     && apt clean \
     && rm -rf /var/lib/apt/lists/*
CMD mkdir -p /var/run/sshd; /usr/sbin/sshd;