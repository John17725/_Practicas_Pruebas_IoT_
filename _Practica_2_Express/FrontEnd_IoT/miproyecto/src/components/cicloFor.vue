<template>
	<div>
		<h2>Ciclo For ↩</h2>
		<div class="tabla">
			<table border="1" style="border-collapse: collapse; width: 30%;">
				<thead>
					<tr>
						<th>Nombre</th>
						<th>Edad</th>
					</tr>
				</thead>
				<tbody>
					<tr v-for="usuario in usuarios" :key="usuario.nombre">
						<td>{{ usuario.nombre }}</td>
						<td>{{ usuario.edad }}</td>
					</tr>
				</tbody>
			</table>			
		</div>
	</div>
</template>

<script>
export default{
	name: "CicloFor",
	data(){
		return{
			usuarios: [
				{ nombre: "Jesus", edad: 22 },
				{ nombre: "Luz", edad: 22 },
				{ nombre: "Elena", edad: 22 },
			],
		};
	},
};
</script>

<style>
.tabla {
  display: flex;
  justify-content: center;
}
</style>