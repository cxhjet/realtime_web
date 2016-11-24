FROM node:0.12.13-slim
MAINTAINER Hewin "hewin@maxwin.com.tw"
WORKDIR /var/realtime_web
ADD package.json /var/realtime_web
RUN npm install
RUN npm install pm2@0.12.15 -g
ADD . /var/realtime_web
ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
EXPOSE 3000
#ENTRYPOINT ["/nodejs/bin/npm", "start"]
#CMD ["node","index.js","config=./config.js"]
