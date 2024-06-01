FROM debian:12.5

RUN apt-get update \
 && apt-get install -y \
   bat \
   g++ \
   make \
   ruby \
   nodejs \
   python3 \
   openjdk-17-jdk \
 && mkdir -p /playground

WORKDIR /playground

COPY . .
