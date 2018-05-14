FROM node:6.9.2
EXPOSE 7777
COPY server.js .
CMD node server.js

