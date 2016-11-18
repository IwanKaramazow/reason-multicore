FROM phusion/baseimage:latest

CMD ["/sbin/my_init"]
RUN apt-get update
RUN apt-get install -y git build-essential ncurses-dev wget vim m4 unzip
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

### OCaml-multicore ###
ADD build-ocaml-multicore.sh /opt/
RUN /opt/build-ocaml-multicore.sh

### Opam && Ocaml 4.02.3 ###
ADD install-opam.sh /opt/
RUN /opt/install-opam.sh

### Reason  ###
ADD install-reason.sh /opt/
RUN /opt/install-reason.sh

ADD .bashrc /root/

CMD ["bash"]
