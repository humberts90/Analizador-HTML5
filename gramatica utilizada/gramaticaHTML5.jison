/*
gramaticaHTML5.jison is part of Analizador-HTML5.

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
%lex
%options case-insensitive
%%

\s+|\n+                   /* skip whitespace */
"<!"("DOCTYPE")" "*"html"" "*("system")?" "*(('"'|"'")[^>^"^']*('"'|"'")" "*)*" "* return 'doctype'

"<"("blockquote")" "* return 'iblockquote'
"<"("figcaption")" "* return 'ifigcaption'
"<"("fieldset")" "* return 'ifieldset'
"<"("colgroup")" "* return 'icolgroup'
"<"("datalist")" "* return 'idatalist'
"<"("optgroup")" "* return 'ioptgroup'
"<"("textarea")" "* return 'itextarea'
"<"("progress")" "* return 'iprogress'
"<"("noscript")" "* return 'inoscript'
"<"("template")" "* return 'itemplate'
"<"("caption")" "* return 'icaption'
"<"("address")" "* return 'iaddress'
"<"("article")" "* return 'iarticle'
"<"("section")" "* return 'isection'
"<"("header")" "* return 'iheader'
"<"("footer")" "* return 'ifooter'
"<"("figure")" "* return 'ifigure'
"<"("strong")" "* return 'istrong'
"<"("iframe")" "* return 'iiframe'
"<"("object")" "* return 'iobject'
"<"("source")" "* return 'isource'
"<"("button")" "* return 'ibutton'
"<"("select")" "* return 'iselect'
"<"("option")" "* return 'ioption'
"<"("keygen")" "* return 'ikeygen'
"<"("output")" "* return 'ioutput'
"<"("legend")" "* return 'ilegend'
"<"("script")" "* return 'iscript'
"<"("canvas")" "* return 'icanvas'
"<"("small")" "* return 'ismall'
"<"("embed")" "* return 'iembed'
"<"("param")" "* return 'iparam'
"<"("video")" "* return 'ivideo'
"<"("audio")" "* return 'iaudio'
"<"("track")" "* return 'itrack'
"<"("table")" "* return 'itable'
"<"("tbody")" "* return 'itbody'
"<"("thead")" "* return 'ithead'
"<"("tfoot")" "* return 'itfoot'
"<"("label")" "* return 'ilabel'
"<"("input")" "* return 'iinput'
"<"("meter")" "* return 'imeter'
"<"("title")" "* return 'ititle'
"<"("style")" "* return 'istyle'
"<"("aside")" "* return 'iaside'
"<"("aside")" "* return 'iaside'
"<"("html")" "* return 'ihtml'
"<"("head")" "* return 'ihead'
"<"("base")" "* return 'ibase'
"<"("link")" "* return 'ilink'
"<"("meta")" "* return 'imeta'
"<"("body")" "* return 'ibody'
"<"("main")" "* return 'imain'
"<"("abbr")" "* return 'iabbr'
"<"("data")" "* return 'idata'
"<"("time")" "* return 'itime'
"<"("code")" "* return 'icode'
"<"("samp")" "* return 'isamp'
"<"("cite")" "* return 'icite'
"<"("mark")" "* return 'imark'
"<"("ruby")" "* return 'iruby'
"<"("span")" "* return 'ispan'
"<"("area")" "* return 'iarea'
"<"("form")" "* return 'iform'
"<"("math")" "* return 'imath'
"<"("nav")" "* return 'inav'
"<"("pre")" "* return 'ipre'
"<"("dfn")" "* return 'idfn'
"<"("var")" "* return 'ivar'
"<"("kbd")" "* return 'ikbd'
"<"("sub")" "* return 'isub'
"<"("sup")" "* return 'isup'
"<"("wbr")" "* return 'iwbr'
"<"("ins")" "* return 'iins'
"<"("del")" "* return 'idel'
"<"("img")" "* return 'iimg'
"<"("div")" "* return 'idiv'
"<"("map")" "* return 'imap'
"<"("col")" "* return 'icol'
"<"("svg")" "* return 'isvg'
"<"("h1")" "* return 'ih1'
"<"("h2")" "* return 'ih2'
"<"("h3")" "* return 'ih3'
"<"("h4")" "* return 'ih4'
"<"("h5")" "* return 'ih5'
"<"("h6")" "* return 'ih6'
"<"("hr")" "* return 'ihr'
"<"("ol")" "* return 'iol'
"<"("ul")" "* return 'iul'
"<"("li")" "* return 'ili'
"<"("dl")" "* return 'idl'
"<"("dt")" "* return 'idt'
"<"("dd")" "* return 'idd'
"<"("br")" "* return 'ibr'
"<"("tr")" "* return 'itr'
"<"("td")" "* return 'itd'
"<"("th")" "* return 'ith'
"<"("em")" "* return 'iem'
"<"("p")" "* return 'ip'
"<"("a")" "* return 'ia'
"<"("s")" "* return 'is'
"<"("q")" "* return 'iq'
"<"("i")" "* return 'ii'
"<"("b")" "* return 'ib'
"<"("u")" "* return 'iu'



"</"("figcaption")" "*">" return 'ffigcaption'
"</"("blockquote")" "*">" return 'fblockquote'
"</"("fieldset")" "*">" return 'ffieldset'
"</"("colgroup")" "*">" return 'fcolgroup'
"</"("optgroup")" "*">" return 'foptgroup'
"</"("textarea")" "*">" return 'ftextarea'
"</"("progress")" "*">" return 'fprogress'
"</"("noscript")" "*">" return 'fnoscript'
"</"("template")" "*">" return 'ftemplate'
"</"("datalist")" "*">" return 'fdatalist'
"</"("caption")" "*">" return 'fcaption'
"</"("address")" "*">" return 'faddress'
"</"("article")" "*">" return 'farticle'
"</"("section")" "*">" return 'fsection'
"</"("select")" "*">" return 'fselect'
"</"("option")" "*">" return 'foption'
"</"("output")" "*">" return 'foutput'
"</"("canvas")" "*">" return 'fcanvas'
"</"("legend")" "*">" return 'flegend'
"</"("script")" "*">" return 'fscript'
"</"("header")" "*">" return 'fheader'
"</"("footer")" "*">" return 'ffooter'
"</"("iframe")" "*">" return 'fiframe'
"</"("object")" "*">" return 'fobject'
"</"("strong")" "*">" return 'fstrong'
"</"("figure")" "*">" return 'ffigure'
"</"("button")" "*">" return 'fbutton'
"</"("small")" "*">" return 'fsmall'
"</"("video")" "*">" return 'fvideo'
"</"("audio")" "*">" return 'faudio'
"</"("table")" "*">" return 'ftable'
"</"("tbody")" "*">" return 'ftbody'
"</"("thead")" "*">" return 'fthead'
"</"("tfoot")" "*">" return 'ftfoot'
"</"("label")" "*">" return 'flabel'
"</"("meter")" "*">" return 'fmeter'
"</"("title")" "*">" return 'ftitle'
"</"("style")" "*">" return 'fstyle'
"</"("aside")" "*">" return 'faside'
"</"("math")" "*">" return 'fmath'
"</"("form")" "*">" return 'fform'
"</"("html")" "*">" return 'fhtml'
"</"("head")" "*">" return 'fhead'
"</"("body")" "*">" return 'fbody'
"</"("main")" "*">" return 'fmain'
"</"("abbr")" "*">" return 'fabbr'
"</"("data")" "*">" return 'fdata'
"</"("time")" "*">" return 'ftime'
"</"("mark")" "*">" return 'fmark'
"</"("ruby")" "*">" return 'fruby'
"</"("samp")" "*">" return 'fsamp'
"</"("code")" "*">" return 'fcode'
"</"("cite")" "*">" return 'fcite'
"</"("span")" "*">" return 'fspan'
"</"("nav")" "*">" return 'fnav'
"</"("pre")" "*">" return 'fpre'
"</"("div")" "*">" return 'fdiv'
"</"("dfn")" "*">" return 'fdfn'
"</"("var")" "*">" return 'fvar'
"</"("kbd")" "*">" return 'fkbd'
"</"("sub")" "*">" return 'fsub'
"</"("sup")" "*">" return 'fsup'
"</"("rtc")" "*">" return 'frtc'
"</"("bdi")" "*">" return 'fbdi'
"</"("bdo")" "*">" return 'fbdo'
"</"("ins")" "*">" return 'fins'
"</"("del")" "*">" return 'fdel'
"</"("map")" "*">" return 'fmap'
"</"("svg")" "*">" return 'fsvg'
"</"("h1")" "*">" return 'fh1'
"</"("h2")" "*">" return 'fh2'
"</"("h3")" "*">" return 'fh3'
"</"("h4")" "*">" return 'fh4'
"</"("h5")" "*">" return 'fh5'
"</"("h6")" "*">" return 'fh6'
"</"("ol")" "*">" return 'fol'
"</"("ul")" "*">" return 'ful'
"</"("li")" "*">" return 'fli'
"</"("dl")" "*">" return 'fdl'
"</"("dt")" "*">" return 'fdt'
"</"("dd")" "*">" return 'fdd'
"</"("rp")" "*">" return 'frp'
"</"("rb")" "*">" return 'frb'
"</"("rt")" "*">" return 'frt'
"</"("tr")" "*">" return 'ftr'
"</"("td")" "*">" return 'ftd'
"</"("th")" "*">" return 'fth'
"</"("em")" "*">" return 'fem'
"</"("p")" "*">" return 'fp'
"</"("a")" "*">" return 'fa'
"</"("s")" "*">" return 'fs'
"</"("q")" "*">" return 'fq'
"</"("i")" "*">" return 'fi'
"</"("b")" "*">" return 'fb'
"</"("u")" "*">" return 'fu'



"/>"   return 'cIzqE'
">"   return 'cIzq'
" "*"data"("-"[a-zA-Z]+)*" "* return 'atr_dataAST'
" "*"oncanplaythrough"" "* return 'atr_oncanplaythrough'
" "*"ondurationchange"" "* return 'atr_ondurationchange'
" "*"onloadedmetadata"" "* return 'atr_onloadedmetadata'
" "*"contenteditable"" "* return 'atr_contenteditable'
" "*"onbertoreunload"" "* return 'atr_onbertoreunload'
" "*"formnovalidate"" "* return 'atr_formnovalidate'
" "*"onvolumechange"" "* return 'atr_onvolumechange'
" "*"accept-charset"" "* return 'atr_acceptCharset'
" "*"typemustmatch"" "* return 'atr_typemustmatch'
" "*"onbeforeprint"" "* return 'atr_onbeforeprint'

" "*"onhashchange"" "* return 'atr_onhashchange'
" "*"onafterprint"" "* return 'atr_onafterprint'
" "*"ontimeupdate"" "* return 'atr_ontimeupdate'
" "*"onratechange"" "* return 'atr_onratechange'
" "*"autocomplete"" "* return 'atr_autocomplete'
" "*"onloadeddata"" "* return 'atr_onloadeddata'
" "*"onmouseenter"" "* return 'atr_onmouseenter'
" "*"onmouseleave"" "* return 'atr_onmouseleave'
" "*"onmousewheel"" "* return 'atr_onmousewheel'
" "*"crossorigin"" "* return 'atr_crossorigin'
" "*"onmousemove"" "* return 'atr_onmousemove'
" "*"oncuechange"" "* return 'atr_oncuechange'
" "*"onloadstart"" "* return 'atr_onloadstart'
" "*"onmousedown"" "* return 'atr_onmousedown'
" "*"onmouseover"" "* return 'atr_onmouseover'
" "*"formenctype"" "* return 'atr_formenctype'
" "*"placeholder"" "* return 'atr_placeholder'
" "*"formmethod"" "* return 'atr_formmethod'
" "*"formtarget"" "* return 'atr_formtarget'
" "*"novalidate"" "* return 'atr_novalidate'
" "*"mediagroup"" "* return 'atr_mediagroup'
" "*"onmouseout"" "* return 'atr_onmouseout'
" "*"ondblclick"" "* return 'atr_ondblclick'
" "*"onkeypress"" "* return 'atr_onkeypress'
" "*"onprogress"" "* return 'atr_onprogress'
" "*"onofflinme"" "* return 'atr_onofflinme'
" "*"spellcheck"" "* return 'atr_spellcheck'
" "*"translater"" "* return 'atr_translater'
" "*"onpagehide"" "* return 'atr_onpagehide'
" "*"onpageshow"" "* return 'atr_onpageshow'
" "*"onpopstate"" "* return 'atr_onpopstate'
" "*"http-equiv"" "* return 'atr_httpEquiv'
" "*"oncanplay"" "* return 'atr_oncanplay'

" "*"oninvalid"" "* return 'atr_oninvalid'
" "*"onkeydown"" "* return 'atr_onkeydown'
" "*"onplaying"" "* return 'atr_onplaying'
" "*"onmouseup"" "* return 'atr_onmouseup'
" "*"onseeking"" "* return 'atr_onseeking'
" "*"onstalled"" "* return 'atr_onstalled'
" "*"onsuspend"" "* return 'atr_onsuspend'
" "*"onwaiting"" "* return 'atr_onwaiting'
" "*"onemptied"" "* return 'atr_onemptied'
" "*"formation"" "* return 'atr_formation'
" "*"autofocus"" "* return 'atr_autofocus'
" "*"inputmode"" "* return 'atr_inputmode'
" "*"maxlength"" "* return 'atr_maxlength'
" "*"minlength"" "* return 'atr_minlength'
" "*"challenge"" "* return 'atr_challenge'
" "*"onmassage"" "* return 'atr_onmassage'
" "*"onstorage"" "* return 'atr_onstorage'
" "*"accesskey"" "* return 'atr_accesskey'
" "*"onunload"" "* return 'atr_onunload'
" "*"manifest"" "* return 'atr_manifest'
" "*"tabindex"" "* return 'atr_tabindex'
" "*"hreflang"" "* return 'atr_hreflang'
" "*"ononline"" "* return 'atr_ononline'
" "*"onupload"" "* return 'atr_onupload'
" "*"reserved"" "* return 'atr_reserved'
" "*"download"" "* return 'atr_download'
" "*"datetime"" "* return 'atr_datetime'
" "*"disabled"" "* return 'atr_disabled'
" "*"multiple"" "* return 'atr_multiple'
" "*"readonly"" "* return 'atr_readonly'
" "*"required"" "* return 'atr_required'
" "*"selected"" "* return 'atr_selected'
" "*"onchange"" "* return 'atr_onchange'
" "*"oncancel"" "* return 'atr_oncancel'
" "*"sortable"" "* return 'atr_sortable'
" "*"dirsable"" "* return 'atr_dirsable'
" "*"autoplay"" "* return 'atr_autoplay'
" "*"controls"" "* return 'atr_controls'
" "*"onresize"" "* return 'atr_onresize'
" "*"onscroll"" "* return 'atr_onscroll'
" "*"onseeked"" "* return 'atr_onseeked'
" "*"onselect"" "* return 'atr_onselect'
" "*"onsubmit"" "* return 'atr_onsubmit'
" "*"ontoggle"" "* return 'atr_ontoggle'
" "*"onpause"" "* return 'atr_onpause'
" "*"srclang"" "* return 'atr_srclang'
" "*"usermap"" "* return 'atr_usermap'
" "*"sandbox"" "* return 'atr_sandbox'
" "*"preload"" "* return 'atr_preload'
" "*"default"" "* return 'atr_default'
" "*"colspan"" "* return 'atr_colspan'
" "*"rowspan"" "* return 'atr_rowspan'
" "*"enctype"" "* return 'atr_enctype'
" "*"checked"" "* return 'atr_checked'
" "*"dirname"" "* return 'atr_dirname'
" "*"pattern"" "* return 'atr_pattern'
" "*"keytype"" "* return 'atr_keytype'
" "*"optimum"" "* return 'atr_optimum'
" "*"onabort"" "* return 'atr_onabort'
" "*"onclick"" "* return 'atr_onclick'
" "*"onended"" "* return 'atr_onended'
" "*"onerror"" "* return 'atr_onerror'
" "*"onfocus"" "* return 'atr_onfocus'
" "*"oninput"" "* return 'atr_oninput'
" "*"onreset"" "* return 'atr_onreset'
" "*"onkeyup"" "* return 'atr_onkeyup'
" "*"content"" "* return 'atr_content'
" "*"charset"" "* return 'atr_charset'
" "*"accept"" "* return 'atr_accept'
" "*"height"" "* return 'atr_height'
" "*"srcdoc"" "* return 'atr_srcdoc'
" "*"target"" "* return 'atr_target'
" "*"hidden"" "* return 'atr_hidden'
" "*"onload"" "* return 'atr_onload'
" "*"onplay"" "* return 'atr_onplay'
" "*"onblur"" "* return 'atr_onblur'
" "*"poster"" "* return 'atr_poster'
" "*"headers"" "* return 'atr_headers'
" "*"coords"" "* return 'atr_coords'
" "*"method"" "* return 'atr_method'
" "*"border"" "* return 'atr_border'
" "*"sorted"" "* return 'atr_sorted'
" "*"action"" "* return 'atr_action'
" "*"onshow"" "* return 'atr_onshow'
" "*"kind"" "* return 'atr_kind'
" "*"muted"" "* return 'atr_muted'
" "*"label"" "* return 'atr_label'
" "*"shape"" "* return 'atr_shape'
" "*"scope"" "* return 'atr_scope'
" "*"async"" "* return 'atr_async'
" "*"defer"" "* return 'atr_defer'
" "*"style"" "* return 'atr_style'
" "*"title"" "* return 'atr_title'
" "*"media"" "* return 'atr_media'
" "*"sizes"" "* return 'atr_sizes'
" "*"class"" "* return 'atr_class'
" "*"ismap"" "* return 'atr_ismap'
" "*"width"" "* return 'atr_width'
" "*"start"" "* return 'atr_start'
" "*"value"" "* return 'atr_value'
" "*"href"" "* return 'atr_href'
" "*"type"" "* return 'atr_type'
" "*"name"" "* return 'atr_name'
" "*"cite"" "* return 'atr_cite'
" "*"data"" "* return 'atr_data'
" "*"form"" "* return 'atr_form'
" "*"size"" "* return 'atr_size'
" "*"step"" "* return 'atr_step'
" "*"menu"" "* return 'atr_menu'
" "*"abbr"" "* return 'atr_abbr'
" "*"loop"" "* return 'atr_loop'
" "*"span"" "* return 'atr_span'
" "*"list"" "* return 'atr_list'
" "*"wrap"" "* return 'atr_wrap'
" "*"high"" "* return 'atr_high'
" "*"lang"" "* return 'atr_lang'
" "*"rows"" "* return 'atr_rows'
" "*"cols"" "* return 'atr_cols'
" "*"rel"" "* return 'atr_rel'
" "*"dir"" "* return 'atr_dir'
" "*"rel"" "* return 'atr_rel'
" "*"alt"" "* return 'atr_alt'
" "*"src"" "* return 'atr_src'
" "*"low"" "* return 'atr_low'
" "*"max"" "* return 'atr_max'
" "*"for"" "* return 'atr_for'
" "*"min"" "* return 'atr_min'
" "*"id"" "* return 'atr_id'

" "*"aria-activedescendant"" "* return 'atr_ariaActivedescendant'
" "*"aria-multiselectable"" "* return 'atr_ariaMultiselectable'
" "*"aria-autocomplete"" "* return 'atr_ariaAutocomplete'
" "*"aria-multiline"" "* return 'atr_ariaMultiline'
" "*"aria-orientation"" "* return 'atr_ariaOrientation'
" "*"aria-describedby"" "* return 'atr_ariaDescribedby'
" "*"aria-labelledby"" "* return 'atr_ariaLabelledby'
" "*"aria-valuetext"" "* return 'atr_ariaValuetext'
" "*"aria-dropeffect"" "* return 'atr_ariaDropeffect'
" "*"aria-haspopup"" "* return 'atr_ariaHaspopup'
" "*"aria-readonly"" "* return 'atr_ariaReadonly'
" "*"aria-relevant"" "* return 'atr_ariaRelevant'
" "*"aria-expanded"" "* return 'atr_ariaExpanded'
" "*"aria-selected"" "* return 'atr_ariaSelected'
" "*"aria-required"" "* return 'atr_ariaRequired'
" "*"aria-posinset"" "* return 'atr_ariaPosinset'

" "*"aria-valuemax"" "* return 'atr_ariaValuemax'
" "*"aria-valuemin"" "* return 'atr_ariaValuemin'
" "*"aria-valuenow"" "* return 'atr_ariaValuenow'

" "*"aria-pressed"" "* return 'atr_ariaPressed'
" "*"aria-setsize"" "* return 'atr_ariaSetsize'
" "*"aria-checked"" "* return 'atr_ariaChecked'
" "*"aria-control"" "* return 'atr_ariaControl'
" "*"aria-disable"" "* return 'atr_ariaDisable'
" "*"aria-grabbed"" "* return 'atr_ariaGrabbed'
" "*"aria-invalid"" "* return 'atr_ariaInvalid'
" "*"aria-hidden"" "* return 'atr_ariaHidden'
" "*"aria-atomic"" "* return 'atr_ariaAtomic'
" "*"aria-flowto"" "* return 'atr_ariaFlowto'
" "*"aria-level"" "* return 'atr_ariaLevel'
" "*"aria-label"" "* return 'atr_ariaLabel'
" "*"aria-live"" "* return 'atr_ariaLive'
" "*"aria-owns"" "* return 'atr_ariaOwns'
" "*"aria-busy"" "* return 'atr_ariaBusy'


" "*"role"" "* return 'atr_role'


("</"" "*[a-zA-Z0-9]*">") return "atrError_cierre"

(("="*" "*("'")[^>^']*("'")" "*)|
("="*" "*('"')[^>^"]*('"')" "*)|
("="*" "*("'"|'"')?[^>^"^']*("'"|'"')" "*)|
("="*" "*("'"|'"')[^>^"^'^" "]*(" "))|
("="+" "*[^" "^>]+" "*)) return 'partDe'

/*

(("="*" "*("'"|'"')[^>^"^']*("'"|'"')" "*)|
("="*" "*("'"|'"')?[^>^"^'^" "]*("'"|'"')" "*)|
("="*" "*("'"|'"')[^>^"^'^" "]*("'"|'"')?" "*)|
("="+" "*[^" "^>]+" "*)) return 'partDe'



(

("="*" "*("'"|'"')?[^>^"^'^" "]*("'"|'"')" "*)|
("="*" "*("'"|'"')[^>^"^'^" "]*("'"|'"')?" "*)|

("="+" "*[a-zA-Z]+" "*)
) return 'partDe'

*/

("<"" "*[a-zA-Z]+) return "atrError_inicio"
[^> ^< ^' ']+ return "atrError_atributos"


<<EOF>>               return 'FD'

/lex

%{
"use strict";
var advertencia = [];

/**
 * Sets up the JSON format for the AST tree. / Arma el formato JSON para el árbol AST.
 * @param  {object} objEtiqueta - Receives the different parts of the tree. / Recibe las diferentes partes del árbol.
 * @return {string} - JSON format of the tree set up. / Formato JSON del árbol armado.
 */

var aniNiveles = function (objEtiqueta) {
 
    var ramas="";
    var contCierre = 0;
    var concCierre="";
    var etiqs = [];

    for(var i=0; i<objEtiqueta.length; i++){
        if(objEtiqueta[i] !== "null" && objEtiqueta[i] !== "")
        etiqs.push(objEtiqueta[i]);
    }

    for(var i=0; i<etiqs.length; i++){
        if(i === 0){
            ramas = ramas + etiqs[i];
        }
        else{
            ramas = ramas+',{"h_der":['+etiqs[i];
            contCierre++;
        }
    }

    for(var i=0; i<contCierre; i++)
    concCierre =  concCierre + ']}';

    if(ramas){
        if(concCierre)
        ramas = ramas + concCierre;
    return ramas;
    }

    return "";
};

/**
 * Sets up the branch corresponding to the last tag analyzed. / Arma la rama correspondiente a la ultima etiqueta analizada.
 * @param  {string} nombre      - Name of the analyzed tag. / Nombre de la etiqueta analizada.
 * @param  {array} atr         - Attributes pertaining to this tag. / Atributos pertenecientes a dicha etiqueta.
 * @param  {object} objEtiqueta - Contains the child tags. / Contiene las etiquetas hijas.     
 * @param  {number} linea       - Receives the tag opening line number. / Recibe el número de linea de apertura de la etiqueta.
 * @param  {number} valCierre   - Receives the tag closing line number. / Recibe el número de linea de cierre de la etiqueta.
 * @return {string}             - JSON format of the tag. / Formato JSON de la etiqueta.
 */

var ramas = function (nombre, atr, objEtiqueta, linea,valCierre) {
   
    var atrs = [];
    var ids =[];
    var str;
    var cierre = true;
    var strnumLi = [true,-1];
   	// Defines whether or not the label close / Define si existe o no cierre para la etiqueta
    if(/(<\/otro>-[0-9]*)/gmi.test(valCierre))
    {
        cierre = false;
        strnumLi = valCierre.split("-");
    }
    //Prepare formatting attributes / Prepara el formato de los atributos
    for(var i=0; i<atr.length; i++){
        if(atr[i] !== "null" && atr[i] !== ""){
            atrs.push(atr[i]);
            str = atr[i].split(":");
            ids.push(str[0].split("{").join(""));       
        }
    }
    //It is valid if the attribute type data-, follow the corresponding recommendations / Válida si el atributo es tipo data-, siga las recomendaciones correspondientes
    for(var i = 0; i < ids.length; i++){
        if(/^("data-)/gmi.test(ids[i]))
        {
            ids[i] = ids[i].split('"').join('');
            var data = ids[i].split('-');
            for(var j=0;j<data.length; j++)
            {
                  if(ids[i] == ids[i].toUpperCase()) {
                    advertencia.push("Atributo "+ids[i]+" solo debe contener minúsculas en la etiqueta "+nombre+" de la linea "+linea);
                  }
                  else if(ids[i] == ids[i].toLowerCase()) {
                    
                  }
                  else {
                    advertencia.push("Atributo "+ids[i]+" solo debe contener minúsculas en la etiqueta "+nombre+" de la linea "+linea);
                  }
            }
        }

   } 
   // Check that there are no duplicate attributes / Verifica que no existan atributos duplicados
    for(var i = 0; i < ids.length; i++){
        for(var j = 0; j < ids.length; j++){
            if( j > i && ids[i] === ids[j]){
                advertencia.push("Atributo "+ids[i]+" duplicado, no pueden haber dos atributos iguales en una misma etiqueta "+nombre+" en la linea "+linea);
            }
        }
    }
   
    return '{"nombre":"'+nombre+'","atr":['+atrs+'],"linea":"'+linea+'","cierre":"'+cierre+'","linea_cierre":"'+strnumLi[1]+'","h_izq":['+objEtiqueta+']}';
};

/**
/**
 * Converts the attributes to JSON format. / Convierte los atributos a formato JSON.
 * @param  {string} partIzq - Represents the name of the attribute. / Representa el nombre del atributo.
 * @param  {string} partDe  - Represents the value of the attribute. / Representa el valor del atributo.
 * @return {string}         - JSON format of the attribute. / Formato JSON del atributo.
 */

var atributos = function (partIzq, partDe) {
    var valor = partIzq.split('"').join("").split(" ").join("")+'"'+':"'+partDe.split("=").join("").split('"').join("").split(",").join("").split(" ").join("").split("'").join("");
    return '{"'+valor+'"}';
};

/**
 * Returns the respective warnings depending on the tag. / Devuelve las respectivas advertencias dependiendo la etiqueta.
 * @param  {object} arg - Contains the stack of the analysis. / Contiene la pila del análisis.
 * @return {object}     - Tag, link and attribute for the respective warning. / Etiqueta, enlace y atributo para la respectiva advertencia.
 */
var advAtr = function(arg){
    // the corresponding values are obtained / se obtienen los valores correspondientes
    var etiqueta = arg[arg.length-3]; // tag
    var atr = arg[arg.length-1]; // atribute
    var link = ""; // Link

    atr = atr.replace(/(([a-z0-9]*)(.*))/gmi,'$2'); // Clean format / Limpiamos el formato
    etiqueta = etiqueta.split('<').join('').split(' ').join('').toLowerCase(); // clean format and converted to toLowerCase / limpiamos el formato y convertimos a minusculas
    
    switch(etiqueta){
        case 'html':
        link = 'http://www.w3.org/TR/html5/semantics.html#the-html-element';
        break;
    case 'head':
        link = 'http://www.w3.org/TR/html5/document-metadata.html#the-head-element';
        break;
    case 'title':
        link = 'http://www.w3.org/TR/html5/document-metadata.html#the-title-element';
        break;
    case 'base':
        link = 'http://www.w3.org/TR/html5/document-metadata.html#the-base-element';
        break;
    case 'link':
        link = 'http://www.w3.org/TR/html5/document-metadata.html#the-link-element';
        break;
    case 'meta':
        link = 'http://www.w3.org/TR/html5/document-metadata.html#the-meta-element';
        break;
    case 'style':
        link = 'http://www.w3.org/TR/html5/document-metadata.html#the-style-element';
        break;
    case 'body':
        link = 'http://www.w3.org/TR/html5/sections.html#the-body-element';
        break;
    case 'article':
        link = 'http://www.w3.org/TR/html5/sections.html#the-article-element';
        break;
    case 'section':
        link = 'http://www.w3.org/TR/html5/sections.html#the-section-element';
        break;
    case 'nav':
        link = 'http://www.w3.org/TR/html5/sections.html#the-nav-element';
        break;
    case 'aside':
        link = 'http://www.w3.org/TR/html5/sections.html#the-aside-element';
        break;
    case 'h1':
        link = 'http://www.w3.org/TR/html5/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements';
        break;
    case 'h2':
        link = 'http://www.w3.org/TR/html5/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements';
        break;
    case 'h3':
        link = 'http://www.w3.org/TR/html5/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements';
        break;
    case 'h4':
        link = 'http://www.w3.org/TR/html5/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements';
        break;
    case 'h5':
        link = 'http://www.w3.org/TR/html5/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements';
        break;
    case 'h6':
        link = 'http://www.w3.org/TR/html5/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements';
        break;
    case 'header':
        link = 'http://www.w3.org/TR/html5/sections.html#the-header-element';
        break;
    case 'footer':
        link = 'http://www.w3.org/TR/html5/sections.html#the-footer-element';
        break;
    case 'address':
        link = 'http://www.w3.org/TR/html5/sections.html#the-address-element';
        break;
    case 'p':
        link = 'http://www.w3.org/TR/html5/grouping-content.html#the-p-element';
        break;
    case 'hr':
        link = 'http://www.w3.org/TR/html5/grouping-content.html#the-hr-element';
        break;
    case 'pre':
        link = 'http://www.w3.org/TR/html5/grouping-content.html#the-pre-element';
        break;
    case 'blockquote':
        link = 'http://www.w3.org/TR/html5/grouping-content.html#the-blockquote-element';
        break;
    case 'ol':
        link = 'http://www.w3.org/TR/html5/grouping-content.html#the-ol-element';
        break;
    case 'li':
        link = 'http://www.w3.org/TR/html5/grouping-content.html#the-li-element';
        break;
    case 'ul':
        link = 'http://www.w3.org/TR/html5/grouping-content.html#the-ul-element';
        break;
    case 'dl':
        link = 'http://www.w3.org/TR/html5/grouping-content.html#the-dl-element';
        break;
    case 'dt':
        link = 'http://www.w3.org/TR/html5/grouping-content.html#the-dt-element';
        break;
    case 'dd':
        link = 'http://www.w3.org/TR/html5/grouping-content.html#the-dd-element';
        break;
    case 'figure':
        link = 'http://www.w3.org/TR/html5/grouping-content.html#the-figure-element';
        break;
    case 'figcaption':
        link = 'http://www.w3.org/TR/html5/grouping-content.html#the-figcaption-element';
        break;
    case 'div':
        link = 'http://www.w3.org/TR/html5/grouping-content.html#the-div-element';
        break;
    case 'main':
        link = 'http://www.w3.org/TR/html5/grouping-content.html#the-main-element';
        break;
    case 'a':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-a-element';
        break;
    case 'em':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-em-element';
        break;
    case 'strong':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-strong-element';
        break;
    case 'small':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-small-element';
        break;
    case 's':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-s-element';
        break;
    case 'cite':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-cite-element';
        break;
    case 'q':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-q-element';
        break;
    case 'dfn':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-dfn-element';
        break;
    case 'abbr':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-abbr-element';
        break;
    case 'data':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-data-element';
        break;
    case 'time':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-time-element';
        break;
    case 'code':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-code-element';
        break;
    case 'var':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-var-element';
        break;
    case 'samp':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-samp-element';
        break;
    case 'kbd':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-kbd-element';
        break;
    case 'sub':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-sub-and-sup-elements';
        break;
    case 'sup':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-sub-and-sup-elements';
        break;
    case 'i':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-b-element';
        break;
    case 'b':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-b-element';
        break;
    case 'u':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-u-element';
        break;
    case 'mark':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-mark-element';
        break;
    case 'ruby':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-ruby-element';
        break;
    case 'rb':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-rb-element';
        break;
    case 'rt':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-rt-element';
        break;
    case 'rtc':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-rtc-element';
        break;
    case 'rp':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-rp-element';
        break;
    case 'bdi':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-bdi-element';
        break;
    case 'bdo':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-bdo-element';
        break;
    case 'span':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-span-element';
        break;
    case 'br':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-br-element';
        break;
    case 'wbr':
        link = 'http://www.w3.org/TR/html5/text-level-semantics.html#the-wbr-element';
        break;
    case 'ins':
        link = 'http://www.w3.org/TR/html5/edits.html#the-ins-element';
        break;
    case 'del':
        link = 'http://www.w3.org/TR/html5/edits.html#the-del-element';
        break;
    case 'img':
        link = 'http://www.w3.org/TR/html5/embedded-content-0.html#the-img-element';
        break;
    case 'iframe':
        link = 'http://www.w3.org/TR/html5/embedded-content-0.html#the-iframe-element';
        break;
    case 'embed':
        link = 'http://www.w3.org/TR/html5/embedded-content-0.html#the-embed-element';
        break;
    case 'object':
        link = 'http://www.w3.org/TR/html5/embedded-content-0.html#the-object-element';
        break;
    case 'param':
        link = 'http://www.w3.org/TR/html5/embedded-content-0.html#the-param-element';
        break;
    case 'video':
        link = 'http://www.w3.org/TR/html5/embedded-content-0.html#the-video-element';
        break;
    case 'audio':
        link = 'http://www.w3.org/TR/html5/embedded-content-0.html#the-audio-element';
        break;
    case 'source':
        link = 'http://www.w3.org/TR/html5/embedded-content-0.html#the-source-element';
        break;
    case 'track':
        link = 'http://www.w3.org/TR/html5/embedded-content-0.html#the-track-element';
        break;
    case 'map':
        link = 'http://www.w3.org/TR/html5/embedded-content-0.html#the-map-element';
        break;
    case 'area':
        link = 'http://www.w3.org/TR/html5/embedded-content-0.html#the-area-element';
        break;
    case 'table':
        link = 'http://www.w3.org/TR/html5/tabular-data.html#the-table-element';
        break;
    case 'caption':
        link = 'http://www.w3.org/TR/html5/tabular-data.html#the-caption-element';
        break;
    case 'colgroup':
        link = 'http://www.w3.org/TR/html5/tabular-data.html#the-colgroup-element';
        break;
    case 'col':
        link = 'http://www.w3.org/TR/html5/tabular-data.html#the-col-element';
        break;
    case 'tbody':
        link = 'http://www.w3.org/TR/html5/tabular-data.html#the-tbody-element';
        break;
    case 'thead':
        link = 'http://www.w3.org/TR/html5/tabular-data.html#the-thead-element';
        break;
    case 'tfoot':
        link = 'http://www.w3.org/TR/html5/tabular-data.html#the-tfoot-element';
        break;
    case 'tr':
        link = 'http://www.w3.org/TR/html5/tabular-data.html#the-tr-element';
        break;
    case 'td':
        link = 'http://www.w3.org/TR/html5/tabular-data.html#the-td-element';
        break;
    case 'th':
        link = 'http://www.w3.org/TR/html5/tabular-data.html#the-th-element';
        break;
    case 'form':
        link = 'http://www.w3.org/TR/html5/forms.html#the-form-element';
        break;
    case 'label':
        link = 'http://www.w3.org/TR/html5/forms.html#the-label-element';
        break;
    case 'input':
        link = 'http://www.w3.org/TR/html5/forms.html#the-input-element';
        break;
    case 'button':
        link = 'http://www.w3.org/TR/html5/forms.html#the-button-element';
        break;
    case 'select':
        link = 'http://www.w3.org/TR/html5/forms.html#the-select-element';
        break;
    case 'datalist':
        link = 'http://www.w3.org/TR/html5/forms.html#the-datalist-element';
        break;
    case 'optgroup':
        link = 'http://www.w3.org/TR/html5/forms.html#the-optgroup-element';
        break;
    case 'option':
        link = 'http://www.w3.org/TR/html5/forms.html#the-option-element';
        break;
    case 'textarea':
        link = 'http://www.w3.org/TR/html5/forms.html#the-textarea-element';
        break;
    case 'keygen':
        link = 'http://www.w3.org/TR/html5/forms.html#the-keygen-element';
        break;
    case 'output':
        link = 'http://www.w3.org/TR/html5/forms.html#the-output-element';
        break;
    case 'progress':
        link = 'http://www.w3.org/TR/html5/forms.html#the-progress-element';
        break;
    case 'meter':
        link = 'http://www.w3.org/TR/html5/forms.html#the-meter-element';
        break;
    case 'fieldset':
        link = 'http://www.w3.org/TR/html5/forms.html#the-fieldset-element';
        break;
    case 'legend':
        link = 'http://www.w3.org/TR/html5/forms.html#the-legend-element';
        break;
    case 'script':
        link = 'http://www.w3.org/TR/html5/scripting-1.html#the-script-element';
        break;
    case 'noscript':
        link = 'http://www.w3.org/TR/html5/scripting-1.html#the-noscript-element';
        break;
    case 'template':
        link = 'http://www.w3.org/TR/html5/scripting-1.html#the-template-element';
        break;
    case 'canvas':
        link = 'http://www.w3.org/TR/html5/scripting-1.html#the-canvas-element';
        break;

    }

    return {
        etiqueta:etiqueta,
        enlace:link,
        atributo:atr
    };
};

/**
 * Checks for obsolete tags. / Revisa la existencia de etiquetas obsoletas.
 * @param  {string} nombreEti - Contains the name of the tag to be analyzed. / Contiene el nombre de la etiqueta que se va a analizar.
 * @param  {number} linea     - Contains the line number where the tag is found. / Contiene el número de linea donde se encuentra la etiqueta.
 * @return {boolean}           - True if obsolete. / Verdadero si es obsoleto.
 */
var revisarEtiqueta = function (nombreEti, linea){
 
    var val = false;
    nombreEti = nombreEti.split('<').join('');
    nombreEti = nombreEti.toLowerCase();
    switch(nombreEti){

        case 'applet':
            advertencia.push('Remplazar '+nombreEti+' por: embed u object en la linea '+linea);
            val = true;
            break;
        case 'acronym':
            advertencia.push('Remplazar '+nombreEti+' por: abbr en la linea '+linea);
            val = true;
            break;
        case 'bgsound':
            advertencia.push('Remplazar '+nombreEti+' por: audio en la linea '+linea);
            val = true;
            break;
        case 'dir':
            advertencia.push('Remplazar '+nombreEti+' por: ul en la linea '+linea);
            val = true;
            break;
        case 'frame':
        case 'frameset':
        case 'noframes':
            advertencia.push('Remplazar '+nombreEti+' por: iframe en la linea '+linea);
            val = true;
            break;
        case 'hgroup':
            advertencia.push(nombreEti+' Obsoleta en la linea '+linea);
            val = true;
            break;
        case 'isindex':
            advertencia.push('Remplazar '+nombreEti+' por: form  en la linea '+linea);
            val = true;
            break;
        case 'listing':
            advertencia.push('Remplazar '+nombreEti+' por: pre, code en la linea '+linea);
            val = true;
            break;
        case 'nextid':
            advertencia.push(nombreEti+' Obsoleta  en la linea '+linea);
            val = true;
            break;
        case 'noembed':
            advertencia.push('Remplazar '+nombreEti+' por: object en la linea '+linea);
            val = true;
            break;
        case 'plaintext':
            advertencia.push('Remplazar '+nombreEti+' por: text/plain  en la linea '+linea);
            val = true;
            break;
        case 'strike':
            advertencia.push('Remplazar '+nombreEti+' por: del, s en la linea '+linea);
            val = true;
            break;
        case 'xmp':
            advertencia.push('Remplazar '+nombreEti+' por: pre, code en la linea '+linea);
            val = true;
            break;
        case 'basefont':
        case 'big':
        case 'blink':
        case 'center':
        case 'font':
        case 'marquee':
        case 'multicol':
        case 'nobr':
        case 'spacer':
        case 'tt':
            advertencia.push(nombreEti+' Obsoleto en la linea '+linea);
            val = true;
            break;
        default:
            break;

    }
    return val;
};

/**
 * Checks for obsolete attributes. / Revisa la existencia de atributos obsoletos.
 * @param  {string} etiqueta - Contains the name of the tag to be analyzed. / Contiene el nombre de la etiqueta a analizar.
 * @param  {string} atributo - Contains the name of the attribute to be analyzed. / Contiene el nombre  del atributo a analizar.
 * @param  {object} arr      - Contains the stack of the parse. / Contiene la pila del parse.
 * @param  {number} linea    - Line number where the attribute was found. / Número de linea donde se encontró el atributo.
 * @return {boolean}         - True if obsolete. / Verdadero si es obsoleto
 */

var revisarAtrib = function (etiqueta, atributo, arr, linea){
   
    var etiq ="";
    var atr ="";
    var str;
    var str2;
    var condicion = true;
    var val = false;

    if(/(<[a-zA-Z]*)/gmi.test(etiqueta) && /([a-zA-Z0-9]+)/gmi.test(atributo)){
        etiq = etiqueta.split("<").join("").split(" ").join("");
        atr = atributo.replace(/(([a-z0-9]*)(.*))/gmi,'$2');
    }

    if(/([a-zA-Z0-9]+=*(\"|\')*[^\'^\"]*(\"|\')*)/gmi.test(etiqueta) && /([a-zA-Z0-9]+=*(\"|\')*[^\'^\"]*(\"|\')*)/gmi.test(atributo) && etiqueta === atributo ){
        str = arr[arr.length-3];
        etiq = str.split("<").join("").split(" ").join("");
        str2 = atributo.split("=");
        atr = str2[0];
    }

    etiq = etiq.toLowerCase();
    atr = atr.toLowerCase();

    switch(condicion){

        case ((etiq === "a" || etiq === "link") && atr ==="charset"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Utilice el encabezado HTTP Content-Type "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "a" && (atr === "coords" || atr === "shape")):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Utilice área en lugar del a para los mapas de caracteres "+"en la linea "+linea);
            val = true;
            break;
        case ((etiq === "a" || etiq === "link") && atr ==="methods"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Utilice la característica de opciones en lugar de HTTP "+"en la linea "+linea);
            val = true;
            break;
        case ((etiq === "a" || etiq === "embed" || etiq === "img" || etiq === "option") && atr ==="name"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Utilice id en su lugar "+"en la linea "+linea);
            val = true;
            break;
        case ((etiq === "a" || etiq === "link") && atr ==="urn"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Utilice href  "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "form" && atr === "accept"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Utilice accept directamente en los input "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "form" && atr === "nohref"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Omitir href es suficiente "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "head" && atr === "profile"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Es inecesaria en los meta. Cuando se utiliza para desencadenar conductas de agentes usuario específicos: utilizar link en su lugar "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "html" && atr === "version"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Se omite, no es necesario "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "input" && atr === "ismap"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" No es necesario, se omite por completo "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "input" && atr === "usemap"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Utilice img en lugar de input "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "img" && atr === "lowsrc"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Use una imagen JPEG progresiva (dada en el src), en lugar de utilizar dos imágenes separadas "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "link" && atr === "target"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" No es necesario, se omite por completo "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "meta" && atr === "scheme"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Utilice solo un esquema de campo, o hacer de declaración esquema, valor "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "object" && (atr === "archive" || atr === "classid" || atr === "code" || atr === "codebase" || atr === "codetype")):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Utilice los data y type para invocar plugins. Para establecer los parámetros con estos nombres en particular, utilizar param "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "object" && atr === "declare"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Repita el object cada vez, el recurso es para ser reutilizado "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "object" && atr === "standby"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Optimizar el recurso vinculado para que se cargue rápidamente o, al menos, de forma incremental "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "param" && (atr === "type" || atr === "valuetype")):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Usa los name y value atributos sin declarar los tipos de valor "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "script" && (atr === "language" || atr === "event" || atr === "for")):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Utilice el DOM para registrar detectores de evento "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "table" && atr === "datepagesize"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" No es necesario, se omite "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "table" && atr === "summary"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Utilice una de las técnicas para la descripción de table en su lugar "+"en la linea "+linea);
            val = true;
            break;
        case ((etiq === "td" && etiq === "th") && atr === "scope"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Utilice el scope en el th o td correspondiente "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "td" && atr === "scope"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Utilice th "+"en la linea "+linea);
            val = true;
            break;
        case ((etiq === "a" || etiq === "applet" || etiq === "buttom" || etiq === "div" || etiq === "frame" || etiq === "iframe" || etiq === "img" || etiq === "input" || etiq === "label" || etiq === "legend" || etiq === "marquee" || etiq === "object" || etiq === "option" || etiq === "select" || etiq === "span" || etiq === "table" || etiq === "textarea") && (atr === "datasrc" || atr === "datafld")):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Uso de la escritura y mecanismo XMLHttpRequest para rellenar la página dinámicamente "+"en la linea "+linea);
            val = true;
            break;
        case ((etiq === "buttom" || etiq === "div" || etiq === "input" || etiq === "label" || etiq === "legend" || etiq === "marquee" || etiq === "object" || etiq === "option" || etiq === "select" || etiq === "span" || etiq === "table") && atr === "dataformatas"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Uso de la escritura y mecanismo XMLHttpRequest para rellenar la página dinámicamente "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "body" && (atr === "alink" || atr === "bgcolor" || atr === "link" || atr === "marginbottom" || atr === "marginheight" || atr === "marginleft" || atr === "marginright" || atr === "margintop" || atr === "marginwidth" || atr === "text" || atr === "vlink")):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Excepto como indica la sección anterior, para mas visite http://www.w3.org/TR/html5/obsolete.html "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "br" && atr === "clear"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Excepto como indica la sección anterior, para mas visite http://www.w3.org/TR/html5/obsolete.html "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "caption" && atr === "align"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Excepto como indica la sección anterior, para mas visite http://www.w3.org/TR/html5/obsolete.html "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "col" && (atr === "alink" || atr === "char" || atr === "charoff" || atr === "valign" || atr === "width" )):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Excepto como indica la sección anterior, para mas visite http://www.w3.org/TR/html5/obsolete.html "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "div" && atr === "align"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Excepto como indica la sección anterior, para mas visite http://www.w3.org/TR/html5/obsolete.html "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "dl" && atr === "compact"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Excepto como indica la sección anterior, para mas visite http://www.w3.org/TR/html5/obsolete.html "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "embed" && (atr === "alink" || atr === "hspace" || atr === "vspace")):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Excepto como indica la sección anterior, para mas visite http://www.w3.org/TR/html5/obsolete.html "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "hr" && (atr === "alink" || atr === "color" || atr === "noshade" || atr === "size" || atr === "width")):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Excepto como indica la sección anterior, para mas visite http://www.w3.org/TR/html5/obsolete.html "+"en la linea "+linea);
            val = true;
            break; 
        case ((etiq === "h1" || etiq === "h2" || etiq === "h3" || etiq === "h4" || etiq === "h5" || etiq === "h6") && atr === "align"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Excepto como indica la sección anterior, para mas visite http://www.w3.org/TR/html5/obsolete.html "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "iframe" && (atr === "alink" || atr === "allowtransparency" || atr === "frameborder" || atr === "hspace" || atr === "marginheight" || atr === "marginwidth" || atr === "scrolling" || atr === "vspace")):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Excepto como indica la sección anterior, para mas visite http://www.w3.org/TR/html5/obsolete.html "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "input" && (atr === "alink" || atr === "hspace" || atr === "vspace")):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Excepto como indica la sección anterior, para mas visite http://www.w3.org/TR/html5/obsolete.html "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "img" && (atr === "alink" || atr === "border")):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Excepto como indica la sección anterior, para mas visite http://www.w3.org/TR/html5/obsolete.html "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "img" && (atr === "hspace" || atr === "hspace" || atr === "vspace" || atr === "align" || atr === "type")):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Usar css en su lugar "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "object" && (atr === "align" || atr === "border" || atr === "vspace" || atr === "hspace")):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Usar css en su lugar "+"en la linea "+linea);
            val = true;
            break; 
        case (etiq === "ol" && atr === "compact"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Excepto como indica la sección anterior, para mas visite http://www.w3.org/TR/html5/obsolete.html "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "p" && atr === "align"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Excepto como indica la sección anterior, para mas visite http://www.w3.org/TR/html5/obsolete.html "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "pre" && atr === "width"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Excepto como indica la sección anterior, para mas visite http://www.w3.org/TR/html5/obsolete.html "+"en la linea "+linea);
            val = true;
            break;
        case (etiq === "table" && (atr === "align" || atr === "bgcolor" || atr === "bordercolor" || atr === "cellpadding" || atr === "cellspacing" || atr === "frame" || atr === "rules" || atr === "width")):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Usar css en su lugar "+"en la linea "+linea);
            val = true;
            break; 
        case ((etiq === "tbody" || etiq === "thead" || etiq === "tfoot") && (atr === "align" || atr === "char" || atr === "charoff" || atr === "valign")):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Usar css en su lugar "+"en la linea "+linea);
            val = true;
            break;
        case ((etiq === "td" || etiq === "th") && (atr === "align" || atr === "bgcolor" || atr === "char" || atr === "charoff" || atr === "height" || atr === "nowrap" || atr === "valign" || atr === "width")):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Usar css en su lugar "+"en la linea "+linea);
            val = true;
            break; 
        case (etiq === "tr" && (atr === "align" || atr === "bgcolor" || atr === "char" || atr === "charoff" || atr === "valign")):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Usar css en su lugar "+"en la linea "+linea);
            val = true;
            break; 
        case (etiq === "ul" && (atr === "compact" || atr === "type")):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Usar css en su lugar "+"en la linea "+linea);
            val = true;
            break; 
        case ((etiq === "body" || etiq === "table" || etiq === "thead" || etiq === "tbody" || etiq === "tfoot" || etiq === "tr" || etiq === "td" || etiq === "th") && atr === "background"):
            advertencia.push("Para el elemento: "+etiq+" con atributo "+atr+" Excepto como indica la sección anterior "+"en la linea "+linea);
            val = true;
            break;
        default:
            break;
    } 
    return val;
};

%}

%token doc
%left doc
%start documento
%ebnf

%%

documento
    : ((doctype|EDOCTYPE) cIzq)? doc FD{

    if($1)
        var arbol = '{"documento":['+$2+'],"doctype":"'+$1.replace("<!","")+'","linea":"'+(this._$.first_line-1)+'"}';
    else
        var arbol = '{"documento":['+$2+'],"doctype":"null","linea":"-1"}';

    var objAdv = advertencia.filter(function(index, i) {
        return advertencia.indexOf(index) == i;
    });

    arbol = arbol.replace(/(\n|\s|\t|\r)/gmi,'');
   
    return {
        getArbol:JSON.parse(arbol),
        getAdvertencia:objAdv
    };
};

doc : (html|head|title|base|link|meta|style|body|article|section|nav|aside|h1|h2|h3|h4|h5|h6|header|footer|address|p|hr|pre|blockquote|ol|li|ul|dl|dt|dd|figure|figcaption|div|main|a|em|strong|small|s|cite|q|dfn|abbr|data|time|code|var|samp|kbd|sub|sup|i|b|u|mark|ruby|rb|rt|rtc|rp|bdi|bdo|span|br|wbr|ins|del|img|iframe|embed|object|param|video|audio|source|track|map|area|table|caption|colgroup|col|tbody|thead|tfoot|tr|td|th|form|label|input|button|select|datalist|optgroup|option|textarea|keygen|output|progress|meter|fieldset|legend|script|noscript|template|canvas|math|svg|eUndefined|EE)*{
    $$ = aniNiveles($1);
};

html : ihtml ahtml* cIzq doc (fhtml|eCE|errork) {
    $$ = ramas('html',$2,$4,(@$.first_line-1),$5);
};

ahtml : atrGlobales | atrGlobalAria | manifest | atrError ;

head : ihead ahead* cIzq doc (fhead|eCE|errork) {
    $$ = ramas('head',$2,$4,(@$.first_line-1),$5);
};

ahead : atrGlobales | atrGlobalAria | atrError ;

title : ititle atitle* cIzq doc (ftitle|eCE|errork){
    $$ = ramas('title',$2,$4,(@$.first_line-1),$5);
};

atitle : atrGlobales | atrGlobalAria | atrError;

base : ibase abase* (cIzq|cIzqE){
    $$ = ramas('base',$2,null,(@$.first_line-1),null);
};

abase : atrGlobales | atrGlobalAria | href | target | atrError;

link : ilink alink* (cIzq|cIzqE){
    $$ = ramas('link',$2,null,(@$.first_line-1),null);
};

alink : atrGlobales | atrGlobalAria |href | crossorigin |rel | media| hreflang | type | sizes  | role | atrError;

meta : imeta ameta* (cIzq|cIzqE){
    $$ = ramas('meta',$2,null,(@$.first_line-1),null);
};

ameta : atrGlobales | atrGlobalAria | name | httpEquiv | content | charset | atrError;

style : istyle astyle* cIzq doc (fstyle|eCE|errork){
    $$ = ramas('style',$2,$4,(@$.first_line-1),$5);
};

astyle : atrGlobales | atrGlobalAria | media | type  |atrError;

body : ibody abody* cIzq doc (fbody|eCE|errork) {
    $$ = ramas('body',$2,$4,(@$.first_line-1),$5);
};

abody : atrGlobales | atrGlobalAria | onafterprint | onbeforeprint | onbeforeunload | onhashchange | onmessage | onoffline | ononline | onpagehide | onpageshow | onpopstate | onstorage | onunload | ariaExpanded | role | atrError ;


article : iarticle aarticle* cIzq doc (farticle|eCE|errork){
    $$ = ramas('article',$2,$4,(@$.first_line-1),$5);
};

aarticle : atrGlobales | atrGlobalAria | ariaExpanded | role  | atrError;

section : isection asection* cIzq doc (fsection|eCE|errork){
    $$ = ramas('section',$2,$4,(@$.first_line-1),$5);
};

asection : atrGlobales | atrGlobalAria | ariaExpanded | ariaOrientation | role | atrError;

nav : inav anav* cIzq doc (fnav|eCE|errork){
    $$ = ramas('nav',$2,$4,(@$.first_line-1),$5);
};

anav : atrGlobales | atrGlobalAria | ariaExpanded | role | atrError;

aside : iaside aaside* cIzq doc (faside|eCE|errork){
    $$ = ramas('aside',$2,$4,(@$.first_line-1),$5);
};

aaside : atrGlobales | atrGlobalAria | ariaExpanded | role | atrError;

h1 : ih1 ah1* cIzq doc (fh1|eCE|errork){
    $$ = ramas('h1',$2,$4,(@$.first_line-1),$5);
};

ah1 : atrGlobales | atrGlobalAria | ariaExpanded | ariaLevel | ariaSelected | role | atrError;

h2 : ih2 ah2* cIzq doc (fh2|eCE|errork){
    $$ = ramas('h2',$2,$4,(@$.first_line-1),$5);
};

ah2 : atrGlobales | atrGlobalAria | ariaExpanded | ariaLevel | ariaSelected | role | atrError;

h3 : ih3 ah3* cIzq doc (fh3|eCE|errork){
    $$ = ramas('h3',$2,$4,(@$.first_line-1),$5);
};

ah3 : atrGlobales | atrGlobalAria | ariaExpanded | ariaLevel | ariaSelected | role | atrError;

h4 : ih4 ah4* cIzq doc (fh4|eCE|errork){
    $$ = ramas('h4',$2,$4,(@$.first_line-1),$5);
};

ah4 : atrGlobales | atrGlobalAria | ariaExpanded | ariaLevel | ariaSelected | role | atrError;

h5 : ih5 ah5* cIzq doc (fh5|eCE|errork){
    $$ = ramas('h5',$2,$4,(@$.first_line-1),$5);
};

ah5 : atrGlobales | atrGlobalAria | ariaExpanded | ariaLevel | ariaSelected | role | atrError;

h6 : ih6 ah6* cIzq doc (fh6|eCE|errork){
    $$ = ramas('h6',$2,$4,(@$.first_line-1),$5);
};

ah6 : atrGlobales | atrGlobalAria | ariaExpanded | ariaLevel | ariaSelected | role | atrError;

header : iheader aheader* cIzq doc (fheader|eCE|errork){
    $$ = ramas('header',$2,$4,(@$.first_line-1),$5);
};

aheader : atrGlobales | atrGlobalAria | ariaExpanded | role | atrError;

footer : ifooter afooter* cIzq doc (ffooter|eCE|errork){
    $$ = ramas('footer',$2,$4,(@$.first_line-1),$5);
};

afooter : atrGlobales | atrGlobalAria | ariaExpanded | role | atrError;

address : iaddress aaddress* cIzq doc (faddress|eCE|errork){
    $$ = ramas('address',$2,$4,(@$.first_line-1),$5);
};

aaddress : atrGlobales | atrGlobalAria | ariaExpanded | role | atrError;

p : ip ap* cIzq doc (fp|eCE|errork){
    $$ = ramas('p',$2,$4,(@$.first_line-1),$5);
};

ap : atrGlobales | atrGlobalAria | role | atrError;

hr : ihr ahr* (cIzq|cIzqE)
{
    $$ = ramas('hr',$2,null,(@$.first_line-1),null);
};

ahr : atrGlobales | atrGlobalAria  | ariaExpanded | ariaValuetext | role | atrError;

pre : ipre apre* cIzq doc (fpre|eCE|errork) {
    $$ = ramas('pre',$2,$4,(@$.first_line-1),$5);
};

apre : atrGlobales | atrGlobalAria  | role | atrError;

blockquote : iblockquote ablockquote* cIzq doc (fblockquote|eCE|errork) {
    $$ = ramas('blockquote',$2,$4,(@$.first_line-1),$5);
};

ablockquote : atrGlobales | atrGlobalAria | aacite | role | atrError;

ol : iol aol* cIzq doc (fol|eCE|errork) {
    $$ = ramas('ol',$2,$4,(@$.first_line-1),$5);
};

aol : atrGlobales | atrGlobalAria | type | reversed | start | ariaMultiselectable | ariaRequired | ariaActivedescendant | role | atrError;

ul : iul aul* cIzq doc (ful|eCE|errork) {
    $$ = ramas('ul',$2,$4,(@$.first_line-1),$5);
};

aul : atrGlobales | atrGlobalAria | ariaMultiselectable | ariaRequired | ariaActivedescendant | role | atrError;

li : ili ali* cIzq doc (fli|eCE|errork) {
    $$ = ramas('li',$2,$4,(@$.first_line-1),$5);
};

ali : atrGlobales | atrGlobalAria | value | ariaMultiselectable | ariaRequired | ariaActivedescendant | role | atrError;


dl : idl adl* cIzq doc (fdl|eCE|errork) {
    $$ = ramas('dl',$2,$4,(@$.first_line-1),$5);
};

adl : atrGlobales | atrGlobalAria | role | atrError;

dt : idt adt* cIzq doc (fdt|eCE|errork) {
    $$ = ramas('dt',$2,$4,(@$.first_line-1),$5);
};

adt : atrGlobales | atrGlobalAria | role | atrError;

dd : idd add* cIzq doc (fdd|eCE|errork) {
    $$ = ramas('dd',$2,$4,(@$.first_line-1),$5);
};

add : atrGlobales | atrGlobalAria | role | atrError;

figure : ifigure afigure* cIzq doc (ffigure|eCE|errork) {
    $$ = ramas('figure',$2,$4,(@$.first_line-1),$5);
};

afigure : atrGlobales | atrGlobalAria | role | atrError;

figcaption : ifigcaption afigcaption* cIzq doc (ffigcaption|eCE|errork) {
    $$ = ramas('figcaption',$2,$4,(@$.first_line-1),$5);
};

afigcaption : atrGlobales | atrGlobalAria | role | atrError;

div : idiv adiv* cIzq doc (fdiv|eCE|errork) {
    $$ = ramas('div',$2,$4,(@$.first_line-1),$5);
};

adiv : atrGlobales | atrGlobalAria | role | atrError;

main : imain amain* cIzq doc (fmain|eCE|errork) {
    $$ = ramas('main',$2,$4,(@$.first_line-1),$5);
};

amain : atrGlobales | atrGlobalAria | ariaExpanded | role | atrError;

a : ia aa* cIzq doc (fa|eCE|errork){
    $$ = ramas('a',$2,$4,(@$.first_line-1),$5);
};

aa : atrGlobales | atrGlobalAria | href | target | rel | hreflang | type | ariaExpanded | ariaChecked | ariaActivedescendant |ariaSelected |ariaMultiselectable | ariaLevel |ariaRequired | ariaReadOnly | role | atrError;

em : iem aem* cIzq doc (fem|eCE|errork){
    $$ = ramas('em',$2,$4,(@$.first_line-1),$5);
};

aem : atrGlobales | atrGlobalAria | role | atrError;

strong : istrong astrong* cIzq doc (fstrong|eCE|errork){
    $$ = ramas('strong',$2,$4,(@$.first_line-1),$5);
};

astrong : atrGlobales | atrGlobalAria | role | atrError;

small : ismall asmall* cIzq doc (fsmall|eCE|errork){
    $$ = ramas('small',$2,$4,(@$.first_line-1),$5);
};

asmall : atrGlobales | atrGlobalAria | role | atrError;

s : is as* cIzq doc (fs|eCE|errork){
    $$ = ramas('s',$2,$4,(@$.first_line-1),$5);
};

as : atrGlobales | atrGlobalAria | role | atrError;

cite : icite acite* cIzq doc (fcite|eCE|errork){
    $$ = ramas('cite',$2,$4,(@$.first_line-1),$5);
};

acite : atrGlobales | atrGlobalAria | role | atrError;

q : iq aq* cIzq doc (fq|eCE|errork){
    $$ = ramas('q',$2,$4,(@$.first_line-1),$5);
};

aq : atrGlobales | atrGlobalAria | aacite | role | atrError;

dfn : idfn adfn* cIzq doc (fdfn|eCE|errork){
    $$ = ramas('dfn',$2,$4,(@$.first_line-1),$5);
};

adfn : atrGlobales | atrGlobalAria | role | atrError;

abbr : iabbr aabbr* cIzq doc (fabbr|eCE|errork){
    $$ = ramas('abbr',$2,$4,(@$.first_line-1),$5);
};

aabbr : atrGlobales | atrGlobalAria | role | atrError;

data : idata adata* cIzq doc (fdata|eCE|errork){
    $$ = ramas('data',$2,$4,(@$.first_line-1),$5);
};

adata : atrGlobales | atrGlobalAria | value | role | atrError;

time : itime atime* cIzq doc (ftime|eCE|errork){
    $$ = ramas('time',$2,$4,(@$.first_line-1),$5);
};

atime : atrGlobales | atrGlobalAria | datetime  | role | atrError;

code : icode acode* cIzq doc (fcode|eCE|errork){
    $$ = ramas('code',$2,$4,(@$.first_line-1),$5);
};

acode : atrGlobales | atrGlobalAria | role | atrError;

var : ivar avar* cIzq doc (fvar|eCE|errork){
    $$ = ramas('var',$2,$4,(@$.first_line-1),$5);
};

avar : atrGlobales | atrGlobalAria | role | atrError;

samp : isamp asamp* cIzq doc (fsamp|eCE|errork){
    $$ = ramas('samp',$2,$4,(@$.first_line-1),$5);
};

asamp : atrGlobales | atrGlobalAria | role | atrError;

kbd : ikbd akbd* cIzq doc (fkbd|eCE|errork){
    $$ = ramas('kbd',$2,$4,(@$.first_line-1),$5);
};

akbd : atrGlobales | atrGlobalAria | role | atrError;

sub : isub asub* cIzq doc (fsub|eCE|errork){
    $$ = ramas('sub',$2,$4,(@$.first_line-1),$5);
};

asub : atrGlobales | atrGlobalAria | role | atrError;

sup : isup asup* cIzq doc (fsup|eCE|errork){
    $$ = ramas('sup',$2,$4,(@$.first_line-1),$5);
};

asup : atrGlobales | atrGlobalAria | role | atrError;

i : ii ai* cIzq doc (fi|eCE|errork){
    $$ = ramas('i',$2,$4,(@$.first_line-1),$5);
};

ai : atrGlobales | atrGlobalAria | role | atrError;

b : ib ab* cIzq doc (fb|eCE|errork){
    $$ = ramas('b',$2,$4,(@$.first_line-1),$5);
};

ab : atrGlobales | atrGlobalAria | role | atrError;

u : iu au* cIzq doc (fu|eCE|errork){
    $$ = ramas('u',$2,$4,(@$.first_line-1),$5);
};

au : atrGlobales | atrGlobalAria | role | atrError;

mark : imark amark* cIzq doc (fmark|eCE|errork){
    $$ = ramas('mark',$2,$4,(@$.first_line-1),$5);
};

amark : atrGlobales | atrGlobalAria | role | atrError;

ruby : iruby aruby* cIzq doc (fruby|eCE|errork){
    $$ = ramas('ruby',$2,$4,(@$.first_line-1),$5);
};

aruby : atrGlobales | atrGlobalAria | role | atrError;

rb : irb arb* cIzq doc (frb|eCE|errork){
    $$ = ramas('rb',$2,$4,(@$.first_line-1),$5);
};

arb : atrGlobales | atrGlobalAria | role | atrError;

rt : irt art* cIzq doc (frt|eCE|errork){
    $$ = ramas('rt',$2,$4,(@$.first_line-1),$5);
};

art : atrGlobales | atrGlobalAria | role | atrError;

rtc : irtc artc* cIzq doc (frtc|eCE|errork){
    $$ = ramas('rtc',$2,$4,(@$.first_line-1),$5);
};

artc : atrGlobales | atrGlobalAria | role | atrError;

rp : irp arp* cIzq doc (frp|eCE|errork){
    $$ = ramas('rp',$2,$4,(@$.first_line-1),$5);
};

arp : atrGlobales | atrGlobalAria | role | atrError;

bdi : ibdi abdi* cIzq doc (fbdi|eCE|errork){
    $$ = ramas('bdi',$2,$4,(@$.first_line-1),$5);
};

abdi : atrGlobales | atrGlobalAria | role | atrError;

bdo : ibdo abdo* cIzq doc (fbdo|eCE|errork){
    $$ = ramas('bdo',$2,$4,(@$.first_line-1),$5);
};

abdo : atrGlobales | atrGlobalAria | role | atrError;

span : ispan aspan* cIzq doc (fspan|eCE|errork){
    $$ = ramas('span',$2,$4,(@$.first_line-1),$5);
};

aspan : atrGlobales | atrGlobalAria | role | atrError;

br : ibr abr* (cIzq|cIzqE){
    $$ = ramas('br',$2,null,(@$.first_line-1),null);
};

abr : atrGlobales | atrGlobalAria | role | atrError;

wbr : iwbr awbr* (cIzq|cIzqE){
    $$ = ramas('iwbr',$2,null,(@$.first_line-1),null);
};

awbr : atrGlobales | atrGlobalAria | role | atrError;

ins : iins ains* cIzq doc (fins|eCE|errork){
    $$ = ramas('ins',$2,$4,(@$.first_line-1),$5);
};

ains : atrGlobales | atrGlobalAria | aacite | datetime | role | atrError;

del : idel adel* cIzq doc (fdel|eCE|errork){
    $$ = ramas('del',$2,$4,(@$.first_line-1),$5);
};

adel : atrGlobales | atrGlobalAria | aacite | datetime | role | atrError;

img : iimg aimg* (cIzq|cIzqE){
    $$ = ramas('img',$2,null,(@$.first_line-1),null);
};

aimg : atrGlobales | atrGlobalAria  | alt | src | crossorigin | usemap | ismap | width | height | ariaExpanded | role | atrError;

iframe : iiframe aiframe* cIzq doc (fiframe|eCE|errork){
    $$ = ramas('iframe',$2,$4,(@$.first_line-1),$5);
};

aiframe : atrGlobales | atrGlobalAria | src | srcdoc | name | sandbox | width | height | ariaExpanded | role | atrError;

embed : iembed aembed* (cIzq|cIzqE){
    $$ = ramas('embed',$2,null,(@$.first_line-1),null);
};

aembed : atrGlobales | atrGlobalAria | src | type | width | height | ariaExpanded | role | atrError;

object : iobject aobject* cIzq doc (fobject|eCE|errork){
    $$ = ramas('object',$2,$4,(@$.first_line-1),$5);
};

aobject : atrGlobales | atrGlobalAria | data | type | typemustmatch | name | usemap | aaform | width | height | ariaExpanded | role | atrError;

param : iparam aparam* (cIzq|cIzqE){
    $$ = ramas('param',$2,null,(@$.first_line-1),null);
};

aparam : atrGlobales | atrGlobalAria | name | value | role | atrError;

video : ivideo avideo* cIzq doc (fvideo|eCE|errork){
    $$ = ramas('video',$2,$4,(@$.first_line-1),$5);
};

avideo : atrGlobales | atrGlobalAria | src | crossorigin | poster | preload | autoplay | mediagroup |loop | muted | controls | width | height |ariaExpanded | role | atrError;

audio : iaudio aaudio* cIzq doc (faudio|eCE|errork){
    $$ = ramas('audio',$2,$4,(@$.first_line-1),$5);
};

aaudio : atrGlobales | atrGlobalAria | src | crossorigin | preload | autoplay | mediagroup |loop | muted | controls | ariaExpanded | role | atrError;

source : isource asource* (cIzq|cIzqE){
    $$ = ramas('source',$2,null,(@$.first_line-1),null);
};

asource : atrGlobales | atrGlobalAria | src | type |atrError;

track : itrack atrack* (cIzq|cIzqE){
    $$ = ramas('track',$2,null,(@$.first_line-1),null);
};

atrack : atrGlobales | atrGlobalAria | kind | src | srclang | label | default | atrError;

map : imap amap* cIzq doc (fmap|eCE|errork){
    $$ = ramas('map',$2,$4,(@$.first_line-1),$5);
};

amap : atrGlobales | atrGlobalAria | name | atrError;

area : iarea aarea* (cIzq|cIzqE){
    $$ = ramas('area',$2,null,(@$.first_line-1),null);
};

aarea : atrGlobales | atrGlobalAria | alt | coords | download | href | hreflang | rel | shape | target | type | ariaExpanded | role | atrError;


table : itable atable* cIzq doc (ftable|eCE|errork){
    $$ = ramas('table',$2,$4,(@$.first_line-1),$5);
};

atable : atrGlobales | atrGlobalAria | border | sortable | role | atrError;

caption : icaption acaption* cIzq doc (fcaption|eCE|errork){
    $$ = ramas('caption',$2,$4,(@$.first_line-1),$5);
};

acaption : atrGlobales | atrGlobalAria | role | atrError;

colgroup : icolgroup acolgroup* cIzq doc (fcolgroup|eCE|errork){
    $$ = ramas('colgroup',$2,$4,(@$.first_line-1),$5);
};

acolgroup : atrGlobales | atrGlobalAria | span  | role | atrError;

col : icol acol* (cIzq|cIzqE){
    $$ = ramas('col',$2,null,(@$.first_line-1),null);
};

acol : atrGlobales | atrGlobalAria | aaspan  | atrError;

tbody : itbody atbody* cIzq doc (ftbody|eCE|errork){
    $$ = ramas('tbody',$2,$4,(@$.first_line-1),$5);
};

atbody : atrGlobales | atrGlobalAria | role | atrError;

thead : ithead athead* cIzq doc (fthead|eCE|errork){
    $$ = ramas('thead',$2,$4,(@$.first_line-1),$5);
};

athead : atrGlobales | atrGlobalAria | role | atrError;

tfoot : itfoot atfoot* cIzq doc (ftfoot|eCE|errork){
    $$ = ramas('tfoot',$2,$4,(@$.first_line-1),$5);
};

atfoot : atrGlobales | atrGlobalAria | role | atrError;

tr : itr atr* cIzq doc (ftr|eCE|errork){
    $$ = ramas('tr',$2,$4,(@$.first_line-1),$5);
};

atr : atrGlobales | atrGlobalAria | role | atrError;

td : itd atd* cIzq doc (ftd|eCE|errork){
    $$ = ramas('td',$2,$4,(@$.first_line-1),$5);
};

atd : atrGlobales | atrGlobalAria | colspan | rowspan | headers | role | atrError;

th : ith ath* cIzq doc (fth|eCE|errork){
    $$ = ramas('th',$2,$4,(@$.first_line-1),$5);
};

ath : atrGlobales | atrGlobalAria | colspan | rowspan | headers | scope | aaabbr | sorted | role | atrError;

form : iform aform* cIzq doc (fform|eCE|errork){
    $$ = ramas('form',$2,$4,(@$.first_line-1),$5);
};

aform : atrGlobales | atrGlobalAria | name | target | acceptCharset| action| autocomplete| enctype| method| novalidate | role | atrError;

label : ilabel alabel* cIzq doc (flabel|eCE|errork){
    $$ = ramas('label',$2,$4,(@$.first_line-1),$5);
};

alabel : atrGlobales | atrGlobalAria | aaform | for | atrError;

input : iinput ainput* (cIzq|cIzqE){
    $$ = ramas('input',$2,null,(@$.first_line-1),null);
};

ainput : atrGlobales | atrGlobalAria | accept | autofocus| checked| dirname| disabled| formaction| formenctype| formmethod| formnovalidate | formtarget| inputmode| list| max| maxlength| min| minlength| multiple| pattern| placeholder| readonly| required| sizes| step | autocomplete | aaform | height | name | src  | value | width | type | alt | role | atrError;

button : ibutton abutton* cIzq doc (fbutton|eCE|errork){
    $$ = ramas('button',$2,$4,(@$.first_line-1),$5);
};

abutton : atrGlobales | atrGlobalAria | autofocus | disabled | aaform | formaction | formenctype | formmethod | formnovalidate | formtarget | menu | name | type | value | ariaExpanded | ariaPressed | ariaPosinset | ariaSetsize|  role | atrError;

select : iselect aselect* cIzq doc (fselect|eCE|errork){
    $$ = ramas('select',$2,$4,(@$.first_line-1),$5);
};

aselect : atrGlobales | atrGlobalAria | autofocus | disabled | aaform | multiple | name | required | size | ariaExpanded | ariaActivedescendant | ariaMultiselectable | ariaRequired | role | atrError;

datalist : idatalist adatalist* cIzq doc (fdatalist|eCE|errork){
    $$ = ramas('datalist',$2,$4,(@$.first_line-1),$5);
};

adatalist : atrGlobales | atrGlobalAria | ariaExpanded | ariaActivedescendant | ariaMultiselectable | ariaRequired | role | atrError;

optgroup : ioptgroup aoptgroup* cIzq doc (foptgroup|eCE|errork){
    $$ = ramas('optgroup',$2,$4,(@$.first_line-1),$5);
};

aoptgroup : atrGlobales | atrGlobalAria | disabled | label |atrError;

option : ioption aoption* cIzq doc (foption|eCE|errork){
    $$ = ramas('option',$2,$4,(@$.first_line-1),$5);
};

aoption : atrGlobales | atrGlobalAria | disabled | label | selected | value | ariaExpanded | ariaActivedescendant  | ariaValuetext | role | atrError;

textarea : itextarea atextarea* cIzq doc (ftextarea|eCE|errork){
    $$ = ramas('textarea',$2,$4,(@$.first_line-1),$5);
};

atextarea : atrGlobales | atrGlobalAria | autocomplete | autofocus | cols | dirname | disabled | aaform | inputmode | maxlength | minlength | name | placeholder | readonly | required | rows | wrap | ariaExpanded | ariaReadOnly | ariaAutocomplete | ariaMultiline |  role |atrError;

keygen : ikeygen akeygen* (cIzq|cIzqE){
    $$ = ramas('keygen',$2,null,(@$.first_line-1),null);
};

akeygen : atrGlobales | atrGlobalAria | autofocus | challenge | disabled | aaform | keytype | name | role | atrError;

output : ioutput aoutput* cIzq doc (foutput|eCE|errork){
    $$ = ramas('output',$2,$4,(@$.first_line-1),$5);
};

aoutput : atrGlobales | atrGlobalAria | for | aaform | name | ariaExpanded | role | atrError;

progress : iprogress aprogress* cIzq doc (fprogress|eCE|errork){
    $$ = ramas('progress',$2,$4,(@$.first_line-1),$5);
};

aprogress : atrGlobales | atrGlobalAria | value | max | ariaValuemax | ariaValuemin | ariaValuenow | ariaValuetext| role | atrError;

meter : imeter ameter* cIzq doc (fmeter|eCE|errork){
    $$ = ramas('meter',$2,$4,(@$.first_line-1),$5);
};

ameter : atrGlobales | atrGlobalAria | value | min | max | low | high | optimus | atrError;

fieldset : ifieldset afieldset* cIzq doc (ffieldset|eCE|errork){
    $$ = ramas('fieldset',$2,$4,(@$.first_line-1),$5);
};

afieldset : atrGlobales | atrGlobalAria | disabled | aaform | name | ariaExpanded | ariaActivedescendant | role | atrError;

legend : ilegend alegend* cIzq doc (flegend|eCE|errork){
    $$ = ramas('legend',$2,$4,(@$.first_line-1),$5);
};

alegend : atrGlobales | atrGlobalAria | role | atrError;

script : iscript ascript* cIzq doc (fscript|eCE|errork){
    $$ = ramas('script',$2,$4,(@$.first_line-1),$5);
};

ascript : atrGlobales | atrGlobalAria | src | type | charset | asyng | defer | crossorigin | atrError;

noscript : inoscript anoscript* cIzq doc (fnoscript|eCE|errork){
    $$ = ramas('noscript',$2,$4,(@$.first_line-1),$5);
};

anoscript : atrGlobales | atrGlobalAria | atrError;

template : itemplate atemplate* cIzq doc (ftemplate|eCE|errork){
    $$ = ramas('template',$2,$4,(@$.first_line-1),$5);
};

atemplate : atrGlobales | atrGlobalAria | atrError;

canvas : icanvas acanvas* cIzq doc (fcanvas|eCE|errork){
    $$ = ramas('canvas',$2,$4,(@$.first_line-1),$5);
};

acanvas : atrGlobales | atrGlobalAria | width | height |  role | atrError;

math : imath cIzq doc (fmath|eCE|errork){
    $$ = ramas('math','',$4,(@$.first_line-1),$5);
};

svg : isvg asvg* cIzq doc (fsvg|eCE|errork){
    $$ = ramas('svg','',$4,(@$.first_line-1),$5);
};

atrGlobales : accesskey | class | contenteditable | hidden | id | lang | spellcheck | aastyle | tabindex | aatitle | translate | dir | dataAST | atrEvent;

atrEvent : onabort | onblur | oncancel | oncanplay | onchange | onclick | oncuechange | ondblclick | ondurationchange | onemptied | onended | onerror | onfocus | oninput | oninvalid | onkeydown | onkeypress | onkeyup | onload | onloadeddata | onloadedmetadata | onloadstart | onmousedown | onmouseenter | onmouseleave | onmousemove | onmouseout | onmouseover | onmouseup | onmousewheel | onpause | onplay | onplaying | onprogress | onratechange | onreset | onresize | onscroll | onseeked | onseeking | onselect | onshow | onstalled | onsubmit | onsuspend | ontimeupdate | ontoggle | onvolumechange | onwaiting;

atrGlobalAria : ariaDescribedby| ariaLabelledby| ariaDropeffect| ariaHaspopup| ariaControl| ariaDisable| ariaGrabbed| ariaInvalid| ariaHidden| ariaAtomic | ariaFlowto| ariaLabel| ariaLive| ariaOwns| ariaBusy| ariaRelevant;

dataAST : atr_dataAST PD {
    $$ = atributos($1,$2);
};

role : atr_role PD {
    $$ = atributos($1,$2);
};

asyng : atr_async PD {
    $$ = atributos($1,$2);
} | atr_async {
    $$ = atributos($1,"true");
} ;

defer : atr_defer PD {
    $$ = atributos($1,$2);
} | atr_defer {
    $$ = atributos($1,"true");
};

high : atr_high PD{
    $$ = atributos($1,$2);
};

optimus : atr_optimum PD{
    $$ = atributos($1,$2);
};

low : atr_low PD {
    $$ = atributos($1,$2);
};

ariaValuemax : atr_ariaValuemax PD{
    $$ = atributos($1,$2);
};

ariaValuemin : atr_ariaValuemin PD{
    $$ = atributos($1,$2);
};

ariaValuenow : atr_ariaValuenow PD{
    $$ = atributos($1,$2);
};

keyrype : atr_keytype PD {
    $$ = atributos($1,$2);
};

challenge : atr_challenge PD {
    $$ = atributos($1,$2);
};

ariaAutocomplete : atr_ariaAutocomplete PD{
    $$ = atributos($1,$2);
};

ariaMultiline : atr_ariaMultiline PD{
    $$ = atributos($1,$2);
};

rows : atr_rows PD {
    $$ = atributos($1,$2);
};

cols : atr_cols PD {
    $$ = atributos($1,$2);
};

selected : atr_selected PD {
    $$ = atributos($1,$2);
} | atr_selected {
    $$ = atributos($1,"true");
};

ariaPressed : atr_ariaPressed PD{
    $$ = atributos($1,$2);
};

ariaPosinset : atr_ariaPosinset PD{
    $$ = atributos($1,$2);
};

ariaSetsize : atr_ariaSetsize PD{
    $$ = atributos($1,$2);
};

menu : atr_menu PD{
    $$ = atributos($1,$2);
};

accept : atr_accept PD{
    $$ = atributos($1,$2);
};

autofocus : atr_autofocus PD{
    $$ = atributos($1,$2);
} | atr_autofocus {
    $$ = atributos($1,"true");
};

checked : atr_checked PD{
    $$ = atributos($1,$2);
} | atr_checked{
    $$ = atributos($1,"true");
};

dirname : atr_dirname PD{
    $$ = atributos($1,$2);
};

disabled : atr_disabled PD{
    $$ = atributos($1,$2);
} | atr_disabled{
    $$ = atributos($1,"true");
};

formaction : atr_formation PD{
    $$ = atributos($1,$2);
};

formenctype : atr_formenctype PD{
    $$ = atributos($1,$2);
};

formmethod : atr_formmethod PD{
    $$ = atributos($1,$2);
};

formnovalidate : atr_formnovalidate PD{
    $$ = atributos($1,$2);
} | atr_formnovalidate {
    $$ = atributos($1,"true");
};

formtarget : atr_formtarget PD{
    $$ = atributos($1,$2);
};

inputmode : atr_inputmode PD{
    $$ = atributos($1,$2);
};

list : atr_list PD{
    $$ = atributos($1,$2);
};

max : atr_max PD{
    $$ = atributos($1,$2);
};

maxlength : atr_maxlength PD{
    $$ = atributos($1,$2);
};

min : atr_min PD{
    $$ = atributos($1,$2);
};

minlength : atr_minlength PD{
    $$ = atributos($1,$2);
};

multiple : atr_multiple PD{
    $$ = atributos($1,$2);
} | atr_multiple {
    $$ = atributos($1,"true");
};

pattern : atr_pattern PD{
    $$ = atributos($1,$2);
};

placeholder : atr_placeholder PD{
    $$ = atributos($1,$2);
};

readonly : atr_readonly PD{
    $$ = atributos($1,$2);
} | atr_readonly {
    $$ = atributos($1,"true");
};

required : atr_required PD{
    $$ = atributos($1,$2);
} | atr_required{
    $$ = atributos($1,"true");
};

size : atr_size PD{
    $$ = atributos($1,$2);
};

step : atr_step PD{
    $$ = atributos($1,$2);
};

aaform : atr_form PD{
    $$ = atributos($1,$2);
};

for : atr_for PD{
    $$ = atributos($1,$2);
};

acceptCharset : atr_acceptCharset PD{
    $$ = atributos($1,$2);
};

action : atr_action PD{
    $$ = atributos($1,$2);
};

autocomplete : atr_autocomplete PD{
    $$ = atributos($1,$2);
};

enctype : atr_enctype PD{
    $$ = atributos($1,$2);
};

method : atr_method PD{
    $$ = atributos($1,$2);
};

novalidate : atr_novalidate PD{
    $$ = atributos($1,$2);
} | atr_novalidate {
    $$ = atributos($1,"true");
};

scope : atr_scope PD{
    $$ = atributos($1,$2);
};

aaabbr : atr_abbr PD{
    $$ = atributos($1,$2);
};

sorted : atr_sorted PD{
    $$ = atributos($1,$2);
};

colspan : atr_colspan PD{
    $$ = atributos($1,$2);
};

rowspan : atr_rowspan PD{
    $$ = atributos($1,$2);
};

headers : atr_headers PD{
    $$ = atributos($1,$2);
};

aaspan : atr_span PD{
    $$ = atributos($1,$2);
};

border : atr_border PD{
    $$ = atributos($1,$2);
};

sortable : atr_sortable PD{
    $$ = atributos($1,$2);
};

label : atr_label PD {
    $$ = atributos($1,$2);
};

srclang : atr_srclang PD{
    $$ = atributos($1,$2);
};

coords : atr_coords PD{
    $$ = atributos($1,$2);
};

shape : atr_shape PD{
    $$ = atributos($1,$2);
};

kind : atr_kind PD{
    $$ = atributos($1,$2);
};

default : atr_default PD{
    $$ = atributos($1,$2);
} | atr_default{
    $$ = atributos($1,"true");
};

poster : atr_poster PD{
    $$ = atributos($1,$2);
};

preload : atr_preload PD{
    $$ = atributos($1,$2);
};

autoplay : atr_autoplay PD{
    $$ = atributos($1,$2);
} | atr_autoplay {
    $$ = atributos($1,"true");
};

mediagroup : atr_mediagroup PD{
    $$ = atributos($1,$2);
};

loop : atr_loop PD{
    $$ = atributos($1,$2);
} | atr_loop{
    $$ = atributos($1,"true");
};

muted : atr_muted PD{
    $$ = atributos($1,$2);
} | atr_muted {
    $$ = atributos($1,"true");
};

controls : atr_controls PD{
    $$ = atributos($1,$2);
} | atr_controls{
    $$ = atributos($1,"true");
};

typemustmatch : atr_typemustmatch PD{
    $$ = atributos($1,$2);
} | atr_typemustmatch {
    $$ = atributos($1,"true");
};

data : atr_data PD {
    $$ = atributos($1,$2);
};

srcdoc : atr_srcdoc PD {
    $$ = atributos($1,$2);
};

sandbox : atr_sandbox PD {
    $$ = atributos($1,$2);
};

alt : atr_alt PD {
    $$ = atributos($1,$2);
};

src : atr_src PD {
    $$ = atributos($1,$2);
};

usemap : atr_usermap PD {
    $$ = atributos($1,$2);
};

ismap : atr_ismap PD{
    $$ = atributos($1,$2);
} | atr_ismap {
    $$ = atributos($1,"true");
};

width : atr_width PD{
    $$ = atributos($1,$2);
};

height : atr_height PD {
    $$ = atributos($1,$2);
};

datetime : atr_datetime PD{
    $$ = atributos($1,$2);
};

ariaReadOnly : atr_ariaReadonly PD {
    $$ = atributos($1,$2);
};
ariaChecked : atr_ariaChecked PD {
    $$ = atributos($1,$2);
};

download : atr_download PD {
    $$ = atributos($1,$2);
};

value : atr_value PD {
    $$ = atributos($1,$2);
};

ariaMultiselectable : atr_ariaMultiselectable PD{
    $$ = atributos($1,$2);
};

ariaRequired : atr_ariaRequired PD{
    $$ = atributos($1,$2);
};

ariaActivedescendant : atr_ariaActivedescendant PD{
    $$ = atributos($1,$2);
};

reversed : atr_reserved PD {
    $$ = atributos($1,$2);
} | atr_reserved {
    $$ = atributos($1,"true");
};

start : atr_start PD {
    $$ = atributos($1,$2);
};

aacite : atr_cite PD {
    $$ = atributos($1,$2);
};

ariaValuetext : atr_ariaValuetext PD{
    $$ = atributos($1,$2);
};

ariaSelected : atr_ariaSelected PD {
    $$ = atributos($1,$2);
};

ariaLevel : atr_ariaLevel PD {
    $$ = atributos($1,$2);
};

ariaOrientation : atr_ariaOrientation PD{
    $$ = atributos($1,$2);
};

ariaExpanded : atr_ariaExpanded PD{
    $$ = atributos($1,$2);
};

onafterprint : atr_onafterprint PD {
    $$ = atributos($1,$2);
};
onbeforeprint : atr_onbeforeprint PD {
    $$ = atributos($1,$2);
};
onbeforeunload : atr_onbeforeunload PD {
    $$ = atributos($1,$2);
};
onhashchange : atr_onhashchange PD {
    $$ = atributos($1,$2);
};
onmessage : atr_onmessage PD {
    $$ = atributos($1,$2);
};
onoffline : atr_onoffline PD {
    $$ = atributos($1,$2);
};
ononline : atr_ononline PD {
    $$ = atributos($1,$2);
};
onpagehide : atr_onpagehide PD {
    $$ = atributos($1,$2);
};
onpageshow : atr_onpageshow PD {
    $$ = atributos($1,$2);
};
onpopstate : atr_onpopstate PD {
    $$ = atributos($1,$2);
};
onstorage : atr_onstorage PD {
    $$ = atributos($1,$2);
};
onunload : atr_onunload PD {
    $$ = atributos($1,$2);
};

name : atr_name PD{
    $$ = atributos($1,$2); 
};

httpEquiv : atr_httpEquiv PD{
    $$ = atributos($1,$2); 
};

content : atr_content PD{
    $$ = atributos($1,$2); 
};

charset : atr_charset PD{
    $$ = atributos($1,$2); 
};

crossorigin : atr_crossorigin PD{
    $$ = atributos($1,$2); 
};

rel : atr_rel PD{
    $$ = atributos($1,$2); 
};

media : atr_media PD{
    $$ = atributos($1,$2); 
};

hreflang : atr_hreflang PD{
    $$ = atributos($1,$2); 
};

type : atr_type PD{
    $$ = atributos($1,$2); 
};

sizes : atr_sizes PD{
    $$ = atributos($1,$2); 
};

href : atr_href PD {
    $$ = atributos($1,$2); 
};

target : atr_target PD {
    $$ = atributos($1,$2); 
};

manifest : atr_manifest PD {
    $$ = atributos($1,$2); 
};

accesskey : atr_accesskey PD {
    $$ = atributos($1,$2); 
};

class : atr_class PD {
    $$ = atributos($1,$2); 
};

contenteditable : atr_contenteditable PD {
    $$ = atributos($1,$2); 
};

hidden : atr_hidden PD {
    $$ = atributos($1,$2); 
} | atr_hidden {
    $$ = atributos($1,"true"); 
};

id : atr_id PD {
    $$ = atributos($1,$2); 
};

lang : atr_lang PD  {
    $$ = atributos($1,$2); 
};

spellcheck : atr_spellcheck PD {
    $$ = atributos($1,$2); 
};

aastyle : atr_style PD {
    $$ = atributos($1,$2); 
};

tabindex : atr_tabindex PD {
    $$ = atributos($1,$2); 
};

aatitle : atr_title PD {
    $$ = atributos($1,$2); 
};

translate : atr_translate PD {
    $$ = atributos($1,$2); 
};

dir : atr_dir PD {
    $$ = atributos($1,$2); 
};

onabort : atr_onabort PD {
    $$ = atributos($1,$2); 
};

onblur : atr_onblur PD {
    $$ = atributos($1,$2); 
};

oncancel : atr_oncancel PD {
    $$ = atributos($1,$2); 
};

oncanplay : atr_oncanplay PD {
    $$ = atributos($1,$2); 
};

onchange : atr_onchange PD {
    $$ = atributos($1,$2); 
};

onclick : atr_onclick PD {
    $$ = atributos($1,$2); 
};

oncuechange : atr_oncuechange PD {
    $$ = atributos($1,$2); 
};

ondblclick : atr_ondblclick PD {
    $$ = atributos($1,$2); 
};

ondurationchange : atr_ondurationchange PD {
    $$ = atributos($1,$2); 
};

onemptied : atr_onemptied PD {
    $$ = atributos($1,$2); 
};

onended : atr_onended PD {
    $$ = atributos($1,$2); 
};

onerror : atr_onerror PD {
    $$ = atributos($1,$2); 
};

onfocus : atr_onfocus PD {
    $$ = atributos($1,$2); 
};

oninput : atr_oninput PD {
    $$ = atributos($1,$2); 
};

oninvalid : atr_oninvalid PD {
    $$ = atributos($1,$2); 
};

onkeydown : atr_onkeydown PD {
    $$ = atributos($1,$2); 
};

onkeypress : atr_onkeypress PD {
    $$ = atributos($1,$2); 
};

onkeyup : atr_onkeyup PD {
    $$ = atributos($1,$2); 
};

onload : atr_onload PD {
    $$ = atributos($1,$2); 
};

onloadeddata : atr_onloadeddata PD {
    $$ = atributos($1,$2); 
};

onloadedmetadata : atr_onloadedmetadata PD {
    $$ = atributos($1,$2); 
};

onloadstart : atr_onloadstart PD {
    $$ = atributos($1,$2); 
};

onmousedown : atr_onmousedown PD {
    $$ = atributos($1,$2); 
};

onmouseenter : atr_onmouseenter PD {
    $$ = atributos($1,$2); 
};

onmouseleave : atr_onmouseleave PD {
    $$ = atributos($1,$2); 
};

onmousemove : atr_onmousemove PD {
    $$ = atributos($1,$2); 
};

onmouseout : atr_onmouseout PD {
    $$ = atributos($1,$2); 
};

onmouseover : atr_onmouseover PD {
    $$ = atributos($1,$2); 
};

onmouseup : atr_onmouseup PD {
    $$ = atributos($1,$2); 
};

onmousewheel : atr_onmousewheel PD {
    $$ = atributos($1,$2); 
};

onpause : atr_onpause PD {
    $$ = atributos($1,$2); 
};

onplay : atr_onplay PD {
    $$ = atributos($1,$2); 
};

onplaying : atr_onplaying PD {
    $$ = atributos($1,$2); 
};

onprogress : atr_onprogress PD {
    $$ = atributos($1,$2); 
};

onratechange : atr_onratechange PD {
    $$ = atributos($1,$2); 
};

onreset : atr_onreset PD {
    $$ = atributos($1,$2); 
};

onresize : atr_onresize PD {
    $$ = atributos($1,$2); 
};

onscroll : atr_onscroll PD {
    $$ = atributos($1,$2); 
};

onseeked : atr_onseeked PD {
    $$ = atributos($1,$2); 
};

onseeking : atr_onseeking PD {
    $$ = atributos($1,$2); 
};

onselect : atr_onselect PD {
    $$ = atributos($1,$2); 
};

onshow : atr_onshow PD {
    $$ = atributos($1,$2); 
};

onstalled : atr_onstalled PD {
    $$ = atributos($1,$2); 
};

onsubmit : atr_onsubmit PD {
    $$ = atributos($1,$2); 
};

onsuspend : atr_onsuspend PD {
    $$ = atributos($1,$2); 
};

ontimeupdate : atr_ontimeupdate PD {
    $$ = atributos($1,$2); 
};

ontoggle : atr_ontoggle PD {
    $$ = atributos($1,$2); 
};

onvolumechange : atr_onvolumechange PD {
    $$ = atributos($1,$2); 
};

onwaiting : atr_onwaiting PD {
    $$ = atributos($1,$2); 
};

ariaDescribedby : atr_ariaDescribedby PD {
    $$ = atributos($1,$2);
};
ariaLabelledby : atr_ariaLabelledby PD {
    $$ = atributos($1,$2);
};

ariaDropeffect : atr_ariaDropeffect PD {
    $$ = atributos($1,$2);
};
ariaHaspopup : atr_ariaHaspopup PD {
    $$ = atributos($1,$2);
};

ariaControl : atr_ariaControl PD {
    $$ = atributos($1,$2);
};

ariaDisable : atr_ariaDisable PD {
    $$ = atributos($1,$2);
};

ariaGrabbed : atr_ariaGrabbed PD {
    $$ = atributos($1,$2);
};

ariaInvalid : atr_ariaInvalid PD {
    $$ = atributos($1,$2);
};

ariaHidden : atr_ariaHidden PD {
    $$ = atributos($1,$2);
};

ariaAtomic : atr_ariaAtomic PD {
    $$ = atributos($1,$2);
};

ariaFlowto : atr_ariaFlowto PD {
    $$ = atributos($1,$2);
};

ariaLabel : atr_ariaLabel PD {
    $$ = atributos($1,$2);
};

ariaLive : atr_ariaLive PD {
    $$ = atributos($1,$2);
};

ariaOwns : atr_ariaOwns PD {
    $$ = atributos($1,$2);
};

ariaBusy : atr_ariaBusy PD {
    $$ = atributos($1,$2);
};

ariaRelevant : atr_ariaRelevant PD{
    $$ = atributos($1,$2);
};

PD : partDe{
   // the format of valid values for attributes / se válida el formato de los valores para los atributos
    var val = yytext;
    var stop = false;
    var eq2 = val.split(" ").join("");
    var eq ="";
    var j = 0;
    var lq = "";
    for(var i=0; i<eq2.length; i++){
        if(eq2[i] !== "=" && !stop){
            continue;
        }else{
            eq = eq + eq2[i];
            stop = true;
        }
    }

    if(eq[0] !== "="){
       advertencia.push("Falta = en linea "+(this._$.first_line-1)+" en "+yytext);
    }else{
        while(eq[j] === "=")
        {
            j++;
        }
        if(j>1){
            advertencia.push("No debe haber más de un testigo de asignación en la linea "+(this._$.first_line-1)+" en "+yytext);
        }
    }
    
    for(var i=j; i<eq.length; i++)
        lq = lq + eq[i];
    
    if(( lq[0] === "\"" && lq[lq.length-1] === "\'") || ( lq[0] === "\'" && lq[lq.length-1] === "\"") && lq.length>1){
        advertencia.push("Par de comillas diferentes no permitidas en la linea "+(this._$.first_line-1)+" verifique que ambas comillas sean iguales en "+yytext);
        this.$="";
    }
    else{
        
        if(!(lq[0] === lq[lq.length-1] && lq.length > 1))
        {
            if((lq[0] === "\"" && lq[0] === "\'") || (lq[lq.length-1] === "\"" && lq[lq.length-1] === "\'") )
           		 advertencia.push("Debe cerrar ambas comillas en la linea "+(this._$.first_line-1)+" verifique que ambas comillas existan en "+yytext);
        }   
          

    }

    if((lq[0] === "\"" && lq[lq.length] === "\'") || ( lq[0] === "\'" && lq[lq.length] === "\"") &&  lq.length<=1){
        advertencia.push("Par de comillas diferentes no permitidas en la linea "+(this._$.first_line-1)+" verifique que ambas comillas sean iguales en "+yytext);
        this.$="";
    }
    else{
        
        if((lq[0] !== lq[lq.length] && lq.length <= 1))
        {
           
            advertencia.push("Debe cerrar ambas comillas en la linea "+(this._$.first_line-1)+" verifique que ambas comillas existan en "+yytext);
        }              

    }
    
    $$ = eq;    
};


atrError : atrUndefined partDe | atrUndefined | err;

eCE: atrError_cierre{ 
// add dollar dollar symbol after compiling / agregar dolar dolar simbolo después de compilar
var strnom = $$[$$.length-5].split("<");
    if(yytext==="</otro>"){
       advertencia.push("Etiqueta "+strnom[1]+" de cierre faltante en linea "+(this._$.first_line-1));  
        this.$= yytext+"-"+(this._$.first_line-1);
    }
    else{
        advertencia.push("Etiqueta "+strnom[1]+" de cierre o mal proporcionada en linea "+(this._$.first_line-1));
        this.$= yytext;   
    }
};

eUndefined : atrError_inicio atrs* cIzq doc feti{

    $$ = ramas('desconocida',$2,$4,(@$.first_line-1),$5);
    if(!revisarEtiqueta($1,(@$.first_line-1)))
    advertencia.push("Etiqueta de apertura no reconocida en linea "+(@$.first_line-1)+" en "+$1);
} | atrError_inicio atrs* cIzq{
    $$ = ramas('desconocida',$2,null,(@$.first_line-1),null);
    if(!revisarEtiqueta($1,(@$.first_line-1)))
    advertencia.push("Etiqueta de apertura no reconocida en linea "+(@$.first_line-1)+" en "+$1);
} ;

atrs : asyng | defer | high | optimus | low | ariaValuemax | ariaValuemin | ariaValuenow | keyrype | challenge | ariaAutocomplete | ariaMultiline | rows | cols | selected | ariaPressed | ariaPosinset | ariaSetsize | menu | accept | autofocus | checked | dirname | disabled | formaction | formenctype | formmethod | formnovalidate | formtarget | inputmode | list | max | maxlength | min | minlength | multiple | pattern | placeholder | readonly | required | size | step | aaform | for | acceptCharset | action | autocomplete | enctype | method | novalidate | scope | aaabbr | sorted | colspan | rowspan | headers | aaspan | border | sortable | label | srclang | coords | shape | kind | default | poster | preload | autoplay | mediagroup | loop | muted | controls | typemustmatch | data | srcdoc | sandbox | alt | src | usemap | ismap | width | height | datetime | ariaReadOnly  | download | value | ariaMultiselectable | ariaRequired | ariaActivedescendant | reversed | start | aacite | ariaValuetext | ariaSelected | ariaLevel | ariaOrientation | ariaExpanded | onafterprint | onbeforeprint | onbeforeunload | onhashchange | onmessage | onoffline | ononline | onpagehide | onpageshow | onpopstate | onstorage | onunload | name | httpEquiv | content | charset | crossorigin | rel | media | hreflang | type | sizes | href | target | manifest | accesskey | class | contenteditable | hidden | id | lang | spellcheck | aastyle | tabindex | aatitle | translate | dir | onabort | onblur | oncancel | oncanplay | onchange | onclick | oncuechange | ondblclick | ondurationchange | onemptied | onended | onerror | onfocus | oninput | oninvalid | onkeydown | onkeypress | onkeyup | onload | onloadeddata | onloadedmetadata | onloadstart | onmousedown | onmouseenter | onmouseleave | onmousemove | onmouseout | onmouseover | onmouseup | onmousewheel | onpause | onplay | onplaying | onprogress | onratechange | onreset | onresize | onscroll | onseeked | onseeking | onselect | onshow | onstalled | onsubmit | onsuspend | ontimeupdate | ontoggle | onvolumechange | onwaiting | ariaDescribedby | ariaLabelledby | ariaDropeffect | ariaHaspopup | ariaControl | ariaDisable | ariaGrabbed | ariaInvalid | ariaHidden | ariaAtomic | ariaFlowto | ariaLabel | ariaLive | ariaOwns | ariaBusy | ariaRelevant |ariaChecked;

feti : fhtml | fhead | ftitle | fstyle | fbody | farticle | fsection | fnav | faside | fh1 | fh2 | fh3 | fh4 | fh5 | fh6 | fheader | ffooter | faddress | fp | fpre | fblockquote | fol | ful | fli | fdl | fdt | fdd | ffigure | ffigcaption | fdiv | fmain | fa | fem | fstrong | fsmall | fs | fcite | fq | fdfn | fabbr | fdata | ftime | fcode | fvar | fsamp | fkbd | fsub | fsup | fi | fb | fu | fmark | fruby | frb | frt | frtc | frp | fbdi | fbdo | fspan | fins | fdel | fiframe | fobject | fvideo | faudio | fmap | ftable | fcaption | fcolgroup | ftbody | fthead | ftfoot | ftr | ftd | fth | fform | flabel | fbutton | fselect | fdatalist | foptgroup | foption | ftextarea | foutput | fprogress | fmeter | ffieldset | flegend | fscript | fnoscript | ftemplate | fcanvas | eCE;

atrUndefined : atrError_atributos {
// add dollar dollar symbol after compiling / agregar dolar dolar simbolo después de compilar
   var vAtr = advAtr($$);

    if(!revisarAtrib($$[$$.length-3],this.$,$$,(this._$.first_line-1)))
        advertencia.push("Atributo "+vAtr.atributo+" incorrecto o mal proporcionado para la etiqueta "+vAtr.etiqueta+" de la linea "+(this._$.first_line-1)+" para más información visite: <a href='"+vAtr.enlace+"'>"+vAtr.enlace+"</a>");
    
    this.$="";
}; 

EDOCTYPE : error{
     //  advertencia.push("Doctype no valido en la linea "+@$.first_line);
};
errork : error {

        return (this._$.first_line-1);

};

EE : error {

     return -1;
};

err: error {
	// add dollar dollar symbol after compiling / agregar dolar dolar simbolo después de compilar
    var vAtr = advAtr($$);

    if(!revisarAtrib($$[$$.length-3],this.$,$$,(this._$.first_line-1))){
        if(this.$.replace(/(([a-z0-9]*)(.*))/gmi,'$2') !=='')
            advertencia.push("Definicion de atributo incorrecta en la linea "+(this._$.first_line-1)+" para el elemento "+($$[$$.length-3].split('<').join(''))+"para más información visite: <a href='"+vAtr.enlace+"'>"+vAtr.enlace+"</a>");
    }
    this.$="";
};