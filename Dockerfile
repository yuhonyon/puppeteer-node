FROM node:18.18.2
ENV  APP_NAME=admin-server
USER root
RUN mkdir -p /app/src/&&mkdir -p /app/logs/&&mkdir -p /etc/apt/&&touch /etc/apt/sources.list

ADD sources.list /etc/apt/ 
RUN apt-get update&&apt-get install -y  fonts-ipafont-gothic fonts-wqy-zenhei fonts-thai-tlwg fonts-kacst --no-install-recommends 
# dependencies
RUN apt-get install -yq gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 \
    libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 \
    libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 \
    libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 \
    ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget --fix-missing \
    vim apt-utils git curl unzip sudo whois dnsutils

RUN apt-get install  fonts-wqy-microhei fonts-noto-cjk

