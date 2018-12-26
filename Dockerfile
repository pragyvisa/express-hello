FROM ubuntu:18.04

RUN apt-get update \
 && apt-get -y install wget xz-utils \
 && wget "https://nodejs.org/dist/v10.14.2/node-v10.14.2-linux-x64.tar.xz" \
 && tar -xJvf node*.tar.xz \
 && rm -f node*.tar.xz \
 && mkdir -p /opt \
 && mv node* /opt/node
RUN mkdir /app
ADD app.js package.json package-lock.json /app/
ENV PATH="/opt/node/bin:${PATH}"
RUN cd /app && npm install
EXPOSE 3000
CMD /bin/bash -c "cd /app && node app.js"
