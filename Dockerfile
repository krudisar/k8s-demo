FROM node:6.9.2
EXPOSE 8888
COPY server.js .
CMD node server.js

