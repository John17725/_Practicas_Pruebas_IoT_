<template>
	<div>
		<h2>Practica con condicionales ⏬</h2>
		<input type="text" v-model="edad" placeholder="Ingrese su edad" />
		<h2 v-if="edad >= 18">La persona es mayor de edad</h2>
		<h2 v-else>La persona es menor de edad</h2>
	</div>
</template>

<script>
export default{
	name: "Condicionales",
	data(){
		return{
			edad: null,
		};
	},
};
</script>

<style>
	
</style>