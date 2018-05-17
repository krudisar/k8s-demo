var http = require('http');

var handleRequest = function(request, response) {
  console.log('Received request for URL: ' + request.url);
  response.writeHead(200);
  response.end('Hello World - Greetings from Vmware! - Come and see us at VMWorld 2018 ...\n');
};

var www = http.createServer(handleRequest);
www.listen(8080);

