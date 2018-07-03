var http = require('http');
var bs = require('bootstrap');
var mongo = require('mongodb');

http.createServer(function(req,res) {
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.end('Hello world!');
}).listen(8080);