/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


// Elementos en variables
let nombre =document.getElementById("nombre");
let apellido =document.getElementById("apellido");
let direccion =document.getElementById("direccion");
let localidad =document.getElementById("localidad");
let email =document.getElementById("mail");
let telefono =document.getElementById("telefono");
let msgError = document.getElementsByClassName("error");




// Desarrollo de Función Agregar
//con las validaciones correspondientes


function agregar()
{ 
    quitarClaseError();

      
    //VALIDACION DE NOMBRE
    
    if(nombre.value.trim()==="")
    {
     msgError[0].innerHTML= 'Ingrese su nombre';
        nombre.classList.add("is-invalid");
        nombre.focus();
        return ;
    } else{
     msgError[0].innerHTML= '';
        }


    // Para determinar si el nombre es válido o no
    const nombreValido = nombre => 
        {
            return /^[a-zA-Zá-úÁ-Ú]+[a-zA-Zá-úÁ-ÚñÑ" "]+$/.test(nombre);
        };

    if(!nombreValido(nombre.value))
    {
     msgError[0].innerHTML="El nombre no debe contener números u otros caracteres";
        nombre.classList.add("is-invalid");
        nombre.focus();
        return ;
    }   else{
         msgError[0].innerHTML='';
        }





    //VALIDACION DE APELLIDO
    
    if(apellido.value==="")
    {
     msgError[1].innerHTML= 'Ingrese su apellido';
        apellido.classList.add("is-invalid");
        apellido.focus();
        return ;
    } else{
         msgError[1].innerHTML= '';
        }


    // Para determinar si el apellido es válido o no
    const apellidoValido = apellido => 
    {
        return /^[a-zA-Zá-úÁ-Ú]+[a-zA-Zá-úÁ-ÚñÑ" "]+$/.test(apellido);
    };

    if(!apellidoValido(apellido.value))
    {
     msgError[1].innerHTML="El apellido no debe contener números u otros caracteres";
        apellido.classList.add("is-invalid");
        apellido.focus();
        return ;
    }   else{
         msgError[1].innerHTML='';
        }






     //VALIDACION DE DIRECCION
    
    if(direccion.value.trim()==="")
    {
     msgError[2].innerHTML= 'Ingrese su direccion';
        direccion.classList.add("is-invalid");
        direccion.focus();
        return ;
    } else{
     msgError[2].innerHTML= '';
        }


    // Para determinar si el nombre es válido o no
    const direccionValida = direccion => 
        {
            return /^[a-zA-Z0-9" "]+(\.)?[a-zA-Zá-úÁ-Ú" "ñÑ]*[0-9]+$/.test(direccion);
        };

    if(!direccionValida(direccion.value))
    {
     msgError[2].innerHTML="El nombre no debe contener caracteres como @ /";
       direccion.classList.add("is-invalid");
        direccion.focus();
        return ;
    }   else{
         msgError[2].innerHTML='';
        }
        
        
    
    
    
    //VALIDACION DE LOCALIDAD
    
    if(localidad.value.trim()==="")
    {
     msgError[3].innerHTML= 'Ingrese su localidad';
        localidad.classList.add("is-invalid");
        localidad.focus();
        return ;
    } else{
     msgError[3].innerHTML= '';
        }


    // Para determinar si el nombre es válido o no
    const localidadValida = localidad => 
        {
            return /[a-zA-Z0-9á-úÁ-Ú" "ñÑ]+[a-zA-Zá-úÁ-Ú" "ñÑ]*$/.test(localidad);
        };

    if(!localidadValida(localidad.value))
    {
     msgError[3].innerHTML="El nombre no debe contener caracteres como @ /";
        localidad.classList.add("is-invalid");
        localidad.focus();
        return ;
    }   else{
         msgError[3].innerHTML='';
        }





  
    //VALIDACION DE MAIL
    if(email.value==="")
    {
     msgError[4].innerHTML= 'Escriba su mail';
        email.classList.add("is-invalid");
        email.focus();
        return ;
    } else{
     msgError[4].innerHTML= '';
        }

    // Para determinar si el correo electrónico es válido o no
    const emailValido = email => 
    {
        return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
    };

    if(!emailValido(email.value))
    {
     msgError[4].innerHTML= 'Debe ingresarlo en éste formato.  usuario@mail.com';
        email.classList.add("is-invalid");
        email.focus();
        return ;
    }else{
     msgError[4].innerHTML= '';
        }




     //VALIDACION DE TELEFONO
    
    if(telefono.value.trim()==="")
    {
     msgError[5].innerHTML= 'Ingrese su telefono';
        telefono.classList.add("is-invalid");
        telefono.focus();
        return ;
    } else{
     msgError[5].innerHTML= '';
        }


    // Para determinar si el nombre es válido o no
    const telefonoValido = telefono => 
        {
            return /^(11)[0-9]{8}$/.test(telefono);
        };

    if(!telefonoValido(telefono.value))
    {
     msgError[5].innerHTML="El teléfono debe tener 10 dígitos y comenzar con 11";
        telefono.classList.add("is-invalid");
        telefono.focus();
        return ;
    }   else{
         msgError[5].innerHTML='';
        };
 


} 








//Desarrollo de Función quitar clase error
function quitarClaseError()
{
    let x=document.querySelectorAll(".form-control,.form-select");
    let i;
    for(i=0;i<x.length;i++)
    {
        x[i].classList.remove("is-invalid");
    }
}


//Boton agregar.
let x=document.getElementById("btnAgregar");
x.addEventListener("click",agregar);



