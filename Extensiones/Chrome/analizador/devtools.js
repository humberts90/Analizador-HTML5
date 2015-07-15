/*
    This Analizador-HTML5 consists of a tool for the analysis (lexical, syntactical and semantic) of HTML5 structures. The application was done purely in JavaScript, so it will not require an Internet connection to be used.

    The project was presented as a thesis project for my university, so it only covers a portion of the W3C standard for HTML5 to date.

    For the analysis, the W3C recommendation of October 28, 2014, was taken into account.

    Copyright (C) 2015  Humberto Soler S.
    
devtools.js is part of Analizador-HTML5.

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
chrome.devtools.panels.create("Analizador",
                              "./imagenes/icon10.png",
                              "panel.html",
                              null);
