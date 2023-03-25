FROM ubuntu:22.04 AS builder
# FROM pandoc/latex:3.1.1.0-ubuntu AS builder

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get -y install make wget unzip texlive-full
RUN wget http://mirrors.ctan.org/macros/latex/contrib/moderncv.zip \
  && unzip moderncv.zip \
  && mkdir -p /root/texmf/tex/latex \
  && mv moderncv /root/texmf/tex/latex/
WORKDIR /cv/
COPY * /cv/
RUN make clean \
  && make

FROM python:latest
WORKDIR /cv/
COPY --from=builder /cv/output/* /cv/
CMD ["python", "-m", "http.server", "9000"]
