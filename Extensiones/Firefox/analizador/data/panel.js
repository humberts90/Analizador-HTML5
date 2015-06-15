

function addRuta(url){
  	document.write("<"+"script type='text/javascript' src='"+url+"'></script>")
}

	addRuta('./libreria/parseHTML5.js');
	addRuta('./libreria/scriptHTML5.js');

	var color = 'Negro';
	
	window.addEventListener("message", function(event) {  
		  document.getElementById('salida').innerHTML = '';
		  
		  if(event.data === 'Blanco'){
		  		document.getElementById('salida').style.color = 'black';
		  		color = 'Negro';
		  } 
		  else if(event.data === 'Negro'){
		  		document.getElementById('salida').style.color = 'white';
		 		color = 'Blanco';
		  } else{

			  var advertencias = analizarHTML(parser,event.data);


			  for(var i in advertencias)
			     document.getElementById('salida').innerHTML += '<div><p>'+advertencias[i]+'</p></div>';
				

				var lista = document.getElementsByTagName('a');
		 		
		 		for(var i=0;i<lista.length;i++){
		 		
		 			if(color === 'Negro')
		 				lista[i].style.color = 'blue';
		 			if(color === 'Blanco')
		 				lista[i].style.color = 'orange';

		 			lista[i].setAttribute('target','_black');
		 		}

		}
	});
