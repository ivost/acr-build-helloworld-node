#FROM node:9-alpine
FROM arm32v7/node:lts-alpine

COPY . /src
RUN cd /src && npm install
EXPOSE 80
CMD ["node", "/src/server.js"]
