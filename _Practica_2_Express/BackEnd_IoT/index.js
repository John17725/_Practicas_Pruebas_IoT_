const express = require("express"); /*IMPORTACION DE LA LIBRERIA*/
const app = express();/*INICIALIZACION DE LA LIBRERIRA*/
const port = 5547 /*DEFINICION DEL PUERTO DE ESCUCHA DEL BACKEND*/
const router = require('./routes')

/*MIDDLEWAR*/
app.use(express.json());
app.use(express.urlencoded({ extended: true}));

/*ROUTING O ENDPOINTS */
app.use(router);


app.listen(port, function(){
	console.log("API listener port:",port);
})