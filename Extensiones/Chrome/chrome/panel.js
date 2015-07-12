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
(function(){
	'use strict';

	function addRuta(url){
  		document.write("<"+"script type='text/javascript' src='"+url+"'></script>")
	}

	addRuta('./libreria/parseHTML5.js');
	addRuta('./libreria/scriptHTML5.js');

	
	 var port = chrome.runtime.connect({name: "Eval in context"});
      port.onMessage.addListener(function (data) {
       	
      	 document.getElementById('salida').innerHTML = '';
		  var advertencias = analizarHTML(parser,data);
		  
		  for(var i in advertencias)
		     document.getElementById('salida').innerHTML += '<div><p>'+advertencias[i]+'</p></div>';


      });

}());


