$(document).ready(function(){
    cantidad = 4;
    dnis = [432, 789, 759, 322];
    // $(".ingresar").click(function(){
    //     cantidad++;
    //     nombre = $("#nombre").val();
    //     dni = $("#dni").val();
    //     if (validar(dnis, dni)){
    //         dnis.push(dni);
    //         fila_html = "<tr>" + 
    //         "<td id='persona"+cantidad+"'>"+nombre+"</td>" +
    //         "<td id='dni"+dni+"'>"+dni+"</td>" +
    //         "<td><input type='text' id='respuesta"+cantidad+"'/></td>" + 
    //         "</tr>";
    //         $("#tblNotas").append(fila_html);
    //     } else {
    //         alert("DNI ya existe")
    //         $("#dni").focus();
    //         return;
    //     }
    //     if (nombre == "" || dni == "") {
    //         alert("Ingrese los datos de la nueva persona");
    //         $("#nombre").focus();
    //         return;
    //     }
    // });

    // function validar(dnis, dni){
    //     for (i=0;i<dnis.length;i++){
    //         if (dni==dnis[i]){
    //             return false;
    //         }
    //     } 
    //     return true;
    // }

    dnis = [432, 789, 759, 322];
    $(".ingresar").click(function(){
        cantidad++;
        nombre = $("#nombre").val();
        dni = $("#dni").val();
        if (dni.length == 8){
            if (dnis.indexOf(dni) == -1){
                dnis.push(dni);
                fila_html = "<tr>" + 
                "<td id='persona"+cantidad+"'>"+nombre+"</td>" +
                "<td id='dni"+dni+"'>"+dni+"</td>" +
                "<td><input type='text' id='respuesta"+cantidad+"'/></td>" + 
                "</tr>";
                $("#tblNotas").append(fila_html);
            } else {
                alert("DNI ya existe")
                $("#dni").focus();
                return;
            }
        } else {
            alert("Ingrese un DNI válido");
            $("#dni").focus();
            return;
        }
    })


    $(".procesar").click(function(){
        si = 0;
        no = 0;
        for(i=1;i<=cantidad;i++){
            if ($("#respuesta"+i).val() == "SI") {
                si++;
                console.log(si)
            }
            if ($("#respuesta"+i).val() == "NO"){
                no++
            }
            if ($("#respuesta"+i).val() == ""){
                alert("Ingrese todas las respuestas!");
                return;
            }
        }
        suma = parseInt(si) + parseInt(no);
        console.log("total:"+suma);
        porcentaje_si = (si/suma)*100;
        porcentaje_no = (no/suma)*100;
        $("#si").html(porcentaje_si);
        $("#no").html(porcentaje_no);
    })
})