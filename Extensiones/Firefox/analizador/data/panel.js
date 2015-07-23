/*
    This Analizador-HTML5 consists of a tool for the analysis (lexical, syntactical and semantic) of HTML5 structures. The application was done purely in JavaScript, so it will not require an Internet connection to be used.

    The project was presented as a thesis project for my university, so it only covers a portion of the W3C standard for HTML5 to date.

    For the analysis, the W3C recommendation of October 28, 2014, was taken into account.

    Copyright (C) 2015  Humberto Soler S.
    
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
		  document.getElementById('salida').innerHTML = '<b id="msj">Analizando...</b>';		
		  
			 try {

			  var advertencias = analizarHTML(parser,event.data);

			  if(advertencias.length > 0)
			  {
			  	document.getElementById('salida').innerHTML = '';
			  }
			  
			  var idAc = 0;
			  for(var i in advertencias){

			  	if(advertencias[i].extracto.length < 250)
			     	document.getElementById('salida').innerHTML += '<section class="ac-container"><div><input id="ac-'+idAc+'" name="accordion-'+idAc+'" type="checkbox" />	<label for="ac-'+idAc+'">'+advertencias[i].getAdvertencia+'</label><article class="ac-small"><p> '+advertencias[i].extracto.replace(/(\<)/gmi,'&lt;')+'</p>					</article>				</div>			</section>';
			     else
			     	document.getElementById('salida').innerHTML += '<section class="ac-container"><div><input id="ac-'+idAc+'" name="accordion-'+idAc+'" type="checkbox" />	<label for="ac-'+idAc+'">'+advertencias[i].getAdvertencia+'</label><article class="ac-small"><p> '+advertencias[i].extracto.replace(/(\<)/gmi,'&lt;').substring(0,250)+'...</p>					</article>				</div>			</section>';
			     
				 idAc = idAc + 1;
			  }

			  if(advertencias.length < 1)
			  	{
			  		document.getElementById('salida').innerHTML = '<b id="msj">Análisis culminado con éxito, no se encontrarón advertencias</b>';
			  		document.getElementById('salida').style.color = 'green';
			  	}

				var lista = document.getElementsByTagName('a');
		 		
		 		for(var i=0;i<lista.length;i++){		 	
		 			lista[i].style.color = 'blue';
		 			lista[i].setAttribute('target','_black');
		 		}

		 	}catch (e) {
				document.getElementById('salida').innerHTML += '<b id="msj" style="color:red; font-size:14px;">Ups... ha ocurrido un problema al momento de generar el árbol de etiquetas, si ves este mensaje escribe a <a href="mailto:humberts90@gmail.com">humberts90@gmail.com</a> informando del problema, si el problema te da con un sitio online enviá la URL para realizar la prueba y corregír el problema.</b>';
			}
	});
