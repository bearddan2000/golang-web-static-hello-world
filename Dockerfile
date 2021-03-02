FROM ubuntu:latest

COPY bin/ ./

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
      apt-transport-https \
      software-properties-common \
      golang-go \
    && chmod +x ./main.go 

CMD ["go", "run", "./main.go"]
