var express = require('express');
var socket = require('socket.io');
var app = express.createServer();
var io = socket.listen(app);

io.sockets.on('connection', function(client) {
  console.log('Client connected');
});
