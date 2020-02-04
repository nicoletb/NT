//notas.js
$(document).ready(function(){
    cantidad = 4;
	$(".btnProcesar").click(function(){
		notas = [];
		suma = 0;
		aprobados = 0;
        desaprobados = 0;
		for(i=1;i<=cantidad;i++){
			console.log("#nota"+i);
			nota = parseInt($("#nota"+i).val());
			console.log(nota);
			if(nota==""){ //Si esta vacío
				alert("Falta ingresar nota: "+i);
				$("#nota"+i).focus();
				return;
			}
			if(nota>20 || nota<0){ //Si la nota es más de 20 o menos de 0
				alert("Debes ingresar una nota válida");
				$("#nota"+i).focus();
				return;
			}
			notas.push(nota);
			suma+= nota;//Si todo ok, voy sumando la nota
			if(nota<11){
				desaprobados++;
			}else{
				aprobados++;
			}
		}
		console.log("Aprobados:"+aprobados);
		console.log("Desaprobados:"+desaprobados);
		$("#aprobados").html(aprobados);
		$("#desaprobados").html(desaprobados);
		max = Math.max.apply(null,notas);
		console.log("Max:"+max);
		console.log(notas);
		pos = notas.indexOf(max) +1;
		alumno = $("#alumno"+pos).html();
        console.log(alumno);
        $("#puesto").html(alumno);
		console.log("Suma:"+suma);
		prom = suma/notas.length;
		console.log("Promedio:"+prom);
		$("#promedio").html(prom);
    });
    
    $(".btnIngresar").click(function(){
        cantidad++;
        nombre = $("#nombre").val();
        if (nombre == "") {
            alert("Ingresa un nombre");
            $("#nombre").focus();
            return;
        }
        fila_html = "<tr>" + "<td id='alumno"+cantidad+"'>"+nombre+"</td>"
        + "<td><input type='number' id='nota5'/></td>" + "</tr>";
        $("#tblNotas").append(fila_html);
    });
});