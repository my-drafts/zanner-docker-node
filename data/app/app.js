#!/usr/bin/env node

const http = require('http');

http.createServer(function(request, response) {
  response.end('node');
}).listen(80);

console.log('server started.');

