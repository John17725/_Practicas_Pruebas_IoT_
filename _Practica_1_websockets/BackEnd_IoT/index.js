// Importar librerias a usar dentro del backend
const http = require("http").createServer();
const io = require("socket.io")(http, {
	cors:{
		origin: "*"
	}
});

io.on('connection', (socket) => {
	socket.on('message', (data) => {
		console.log(data);
	});
});

http.listen(4200);