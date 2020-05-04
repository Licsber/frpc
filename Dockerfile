FROM alpine:3

LABEL maintainer="Licsber <Licsber@njit.edu.cn>"

ENV FRP_VERSION 0.33.0

RUN wget https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz && \ 
	tar xzf frp_${FRP_VERSION}_linux_amd64.tar.gz && \
	cd frp_${FRP_VERSION}_linux_amd64 && \
	mv frpc /frpc && \
	mkdir /frp && \
	mv frpc.ini /frp && \
	cd .. && \
	rm -rf *.tar.gz && \
	rm -rf frp_${FRP_VERSION}_linux_amd64

VOLUME [ "/frp" ]

ENTRYPOINT [ "/frpc", "-c", "/frp/frpc.ini" ]
