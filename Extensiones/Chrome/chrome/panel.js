
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


