# IMAGE rick/uppy-basic:1.0.0
FROM node:18.17.1-alpine
WORKDIR /app
RUN apk --update add && apk add git vim bash zsh curl make gcc g++ python3 libgcc libstdc++ && cd /app
RUN git clone https://github.com/transloadit/uppy.git /app/
RUN cd /app && corepack yarn install
RUN cd /app && corepack yarn build
EXPOSE 3020
EXPOSE 5173

