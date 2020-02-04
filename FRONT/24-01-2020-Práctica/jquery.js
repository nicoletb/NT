function paso(num) {
    if (num == 2) {
        pel1 = $("#pelicula1").is(":checked");
        pel2 = $("#pelicula2").is(":checked");
        pel3 = $("#pelicula3").is(":checked");
        if (pel1 || pel2 || pel3) {
            $("#paso1").fadeOut("slow", function() {
                $("#paso2").fadeIn();
            });
        }else{
            alert("Seleccione una película")
        }
        return;
    }

    if (num == 1) {
        $("#paso2").fadeOut("slow", function(){
            $("#paso1").fadeIn();
        });
    }
    
    if (num == 3) {
        pel1 = $("#pelicula1").is(":checked");
        pel2 = $("#pelicula2").is(":checked");
        pel3 = $("#pelicula3").is(":checked");
        ent1 = $("#entrada1").is(":checked");
        ent2 = $("#entrada2").is(":checked");
        ent_n = $("input[type=number],[name='ent_nino']:checked").val()
        ent_a = $("input[type=number],[name='ent_adulto']:checked").val()

        console.log(ent_a)

        if ( (pel1 || pel2 || pel3) && (ent1 || ent2)){
            
            nompelicula = $("input[name=pelicula]:checked").val();
            $("#nompelicula").html(nompelicula);

            cont_nino = 0;
            cont_adulto = 0;

            ent2 = $("#entrada2").is(":checked");
            val_entrada_a = $("input[name='entrada_a']:checked").val();
            ent1 = $("#entrada1").is(":checked");
            val_entrada_n = $("input[name='entrada_n']:checked").val();
            console.log(val_entrada_a)
                // if ((ent1==False) || (val_entrada_n<0) && (ent2==False) || (val_entrada_a<0)) {
                //      alert("Debe seleccionar sus entradas")
                // }

            if (ent2) {
                cont_adulto =+ parseInt($("input[type=number],[name='ent_adulto']:checked").val())
                $("#adulto_total").html(cont_adulto)
            }
            if ((val_entrada_a == 'Adultos') && (ent2)) {
                total_a = 20 * parseInt(cont_adulto);
            }else{
                alert("Debes seleccionar mínimo una entrada")
                total_a = 0
                $("#adulto").hide()
                return
            }

            if (ent1) {
                cont_nino =+ parseInt($("input[type=number],[name='ent_nino']:checked").val())
                $("#nino_total").html(cont_nino);
            }
            if ((val_entrada_n == 'Ninos') && (ent1)) {
                total_n = 15 * parseInt(cont_nino);
            }else{
                alert("Debes seleccionar mínimo una entrada")
                total_n = 0;
                $("#nino").hide();
                return;
            }

            conf = confirm("¿Está seguro de finalizar su compra?")

            total = total_n+total_a

            $("#precio_total").html(total.toFixed(2));

            $("#paso2").fadeOut("slow", function(){
                $("#paso3").fadeIn();
            });
            
        } else {
            alert("Debe seleccionar por lo menos una entrada.")
        }
        return;
    }
}