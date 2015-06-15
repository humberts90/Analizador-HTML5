
var { Panel } = require("dev/panel");
var { Tool } = require("dev/toolbox");
var { Class } = require("sdk/core/heritage");
var self = require("sdk/self");
var Request = require("sdk/request").Request;
var utils = require('sdk/window/utils');
var ventanaNav = utils.getMostRecentBrowserWindow();

var nombre = "devtools.theme";

var tabs = require("sdk/tabs");

function enviarEtiquetas(thisPanel,ventanaNav){
      var urlNavegador = JSON.stringify(ventanaNav.content.document.URL).split('"').join("");
      var codigoFuente = Request({
        url: urlNavegador,
        overrideMimeType: "text/plain; charset=latin1",
        onComplete: function (response) {
           thisPanel.postMessage(response.text, [thisPanel.debuggee]);
        }
      }).get();
}

var REPLPanel = Class({
  extends: Panel,
  label: "Analizador",
  tooltip: "Analizador HTML5",
  icon: self.data.url("./imagenes/icon64.png"),
  url: self.data.url("panel.html"),
  setup: function(options) {
    this.debuggee = options.debuggee;
  },
  dispose: function() {
    this.debuggee = null;
  },
  onReady: function() {
   
      var thisPanel = this;
      var selectedThemeID = require("sdk/preferences/service").get(nombre);

      if(selectedThemeID === 'light')
          this.postMessage('Blanco', [this.debuggee]);
       if(selectedThemeID === 'dark')
          this.postMessage('Negro', [this.debuggee]);

      enviarEtiquetas(thisPanel, ventanaNav);

      tabs.on('load', function(tab) {
        enviarEtiquetas(thisPanel, ventanaNav);
      })
  }
});
exports.REPLPanel = REPLPanel;

var replTool = new Tool({
  panels: { repl: REPLPanel }
});

