ruta = "www.google.com.pe"

function saludar(){
    texto = "jelooooow ";
    // document.getElementById("mensaje").innerHTML = texto;
    // $("#mensaje").html(texto);
    nom = $("#nombre").val(); //Obtengo el valor de la caja de texto    
    $("#mensaje").html(texto+nom); //Colocar en el div mensaje el texto y el nombre
    $("#mensaje").fadeIn("slow"); //Mostrar el div mensaje con el efecto de fade in
    $("#form").fadeOut("fast"); //Desvanecer el formulario div form
}

function despedirse(){
    alert("bais");
}