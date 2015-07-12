/*
background.js is part of Analizador-HTML5.

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


chrome.runtime.onConnect.addListener(function (port) {

      chrome.tabs.query({'active': true}, function (tabs) {
	    var url = tabs[0].url;
	   getEtiquetas(url,port);
	});

	chrome.tabs.onUpdated.addListener(function(tabId, changeInfo, tab) {
    
    if (changeInfo.status == 'complete') {
        getEtiquetas(tab.url,port);
    }

});

      });

function getEtiquetas(url,port){
	
	const ESTADO_CORRECTO = 4; 
	const RESPUESTA_CORRECTA = 200;
	const INFO_SERVIDOR = null;

	var req = new XMLHttpRequest();
	

		req.open('GET', url, true);
		req.overrideMimeType("text/plain; charset=latin1");

		req.onreadystatechange = function (aEvt) {

		  if (req.readyState == ESTADO_CORRECTO) {
		    
		     if(req.status == RESPUESTA_CORRECTA)
		      port.postMessage(req.responseText);
		     else
		      console.log("Error loading page\n");
		  }
		};
		req.send(INFO_SERVIDOR);	

};

}());
