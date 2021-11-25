<template>
	<div>
		<h2>Practica con Operadores 🔥</h2>
		<input type="text"
		v-model="numero1"
		@keyup="realizarOperacion"
		placeholder="Numero1"/>

		<select v-model="operador"
		@change="realizarOperacion">
			<option >+</option>
			<option >-</option>
			<option >*</option>
			<option >*</option>
		</select>

		<input
			type="text"
			v-model="numero2"
			@keyup="realizarOperacion"
			placeholder="Numero2"
		/>
		<h3>
			El resultado es <b>{{ resultado }}</b>
		</h3>
	</div>

</template>

<script>
export default {
  data() {
    return {
    operador: "+",
    resultado: 0,
    numero1: 0,
    numero2: 0,
	};
  },
  methods: {
	realizarOperacion(){
		const numero1 = !isNaN(Number(this.numero1))? Number(this.numero1) : 0;
		const numero2 = !isNaN(Number(this.numero2))? Number(this.numero2) : 0;
		this.resultado = eval(`${numero1}${this.operador}${numero2}`);
    },
  },
};
</script>

<style>
	
</style>