/*
main.js is part of Analizador-HTML5.

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

