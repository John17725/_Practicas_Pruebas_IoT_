const index = (req, res) => {
	return res.status(200).send({ message: "Hola api"});
}

module.exports = index; 