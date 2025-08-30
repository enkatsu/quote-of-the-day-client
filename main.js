const net = require('node:net');

const HOST = 'djxmmx.net';
const PORT = 17;

const client = net.createConnection({ host: HOST, port: PORT });

client.on('data', data => {
    console.log(data.toString());
});
