const io = require('socket.io-client');
const socket = io("ws://192.168.0.15:4200") //=>Conexion inicial al socket del backend

for (var i = 0; i <= 1000; i++) {
		socket.emit('message', 'Probando WebSocket '+i);
}