

function addRuta(url){
  	document.write("<"+"script type='text/javascript' src='"+url+"'></script>")
}

	addRuta('./libreria/parseHTML5.js');
	addRuta('./libreria/scriptHTML5.js');

	window.addEventListener("message", function(event) {  
		  document.getElementById('salida').innerHTML = '';
		  var advertencias = analizarHTML(parser,event.data);
		  
		  for(var i in advertencias)
		     document.getElementById('salida').innerHTML += '<div><p>'+advertencias[i]+'</p></div>';
	});
