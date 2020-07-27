FROM jare/x11-bridge

COPY tcp_m /usr/local/bin/

ENV DISPLAY=":14"            \
    START_XORG="yes"         \
    XPRA_HTML="yes"           \
    XPRA_TCP_PORT="10000"

ENV GID="1000"         \
    GNAME="xpra"       \
    SHELL="/bin/bash"  \
    UHOME="/home/xpra" \
    UID="1000"         \
    UNAME="xpra"       \
    MODE="tcp"


EXPOSE $SSHD_PORT $XPRA_TCP_PORT

ENTRYPOINT ["/usr/local/bin/run"]
CMD ["xhost +"]
