var http = require('http'), 
    port = 3001;


http.createServer(function(request, response) {
  response.writeHead(200); 
  response.write('Hello, this is a dog');
  setTimeout(function() {
    response.write('Dog is done.');
    response.end();
  }, 5000);
  response.write('Hi ?');
}).listen(port);

console.log('Listening on port: ' + port);
