/*
panel.js is part of Analizador-HTML5.

    Analizador-HTML5 is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Analizador-HTML5 is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Analizador-HTML.  If not, see <http://www.gnu.org/licenses/>.

 */

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
