function paso(num){
    if(num==2){ //Estoy en el paso 1
        //Validar
        check1 = $("#curso1").is(':checked');
        check2 = $("#curso2").is(':checked');
        check3 = $("#curso3").is(':checked');
        if(check1 || check2 || check3){
            $("#paso1").fadeOut("slow",function(){
                $("#paso2").fadeIn();
            });
        }else{
            alert("Debes seleccionar un curso")
        }
        return;        
    }

    if(num==1){ //Estoy en el paso 2
        $("#paso2").fadeOut("slow", function(){
            $("#paso1").fadeIn();
        });
    }

    if(num==3){ //Estoy en el paso 3
        mod1 = $("#modulo1").is(':checked');
        mod2 = $("#modulo2").is(':checked');
        mod3 = $("#modulo3").is(':checked');
        if(mod1 || mod2 || mod3){
            rpta = confirm("¿Estás seguro de finalizar?")
            if(rpta){
                //Asignando los datos
                val_curso = $("input[name='curso']:checked").val();
                console.log(val_curso);
                $("#nomCurso").html(val_curso);

                cont_mod = 0;

                //Obtengo los módulos seleccionados
                check1 = $("#modulo1").is(":checked");
                if (check1) { //.append() agrega contenido a un elemento
                    cont_mod++;
                    $("#lista").append("<li>Básico</li>");
                }

                check2 = $("#modulo2").is(":checked");
                if (check2) {
                    cont_mod++;
                    $("#lista").append("<li>Intermedio</li>")
                }

                check3 = $("#modulo3").is(":checked")
                if (check3) {
                    cont_mod++;
                    $("#lista").append("<li>Avanzado</li>")
                }

                //Calculo el pago total según el curso y la cantidad de módulos seleccionados

                if (val_curso=='Java'){
                    total = 1600 * cont_mod;
                }
                if (val_curso=='.Net'){
                    total = 1700*cont_mod;
                }
                if (val_curso=='PHP'){
                    total = 1200 * cont_mod;
                }
                console.log(total);
                $("#total").html(total.toFixed(2));

                //Ocultar paso 2 y mostrar paso 3
                $("#paso2").fadeOut("slow", function(){
                    $("#paso3").fadeIn();
                });
            }
        }else{
            alert("Debes seleccionar por lo menos un módulo.")
        }
        return;
    }
}

function pagar(){
    total = $("#total").html();
    check = $("#pago").is(":checked");
    if(check) {
        desc = total * 0.5;
        nTotal = total * 0.95;
        $("#descuento").html(desc.toFixed(2));
        $("#nuevoTotal").html(nTotal.toFixed(2));
    }else{
        $("#nuevoTotal").html(total.toFixed(2));
    }
}