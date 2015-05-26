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
