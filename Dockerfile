FROM horgix/moderncv@sha256:fe93495468bfd397295cdac9d33caf4f1618506c5ba3e03d07944c395345dc34 AS builder
RUN apt-get update \
  && apt-get -y install make
WORKDIR /cv/
COPY * /cv/
RUN make clean \
  && make

FROM python:latest
WORKDIR /cv/
COPY --from=builder /cv/output/* /cv/
CMD ["python", "-m", "http.server", "9000"]