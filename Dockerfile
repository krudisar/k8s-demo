FROM node:6.9.2
EXPOSE 6666
COPY server.js .
CMD node server.js

