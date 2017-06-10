# xmllondon-2017
Examples for my XML London 2017 talk

[Slides from the talk](http://www.kosek.cz/xml/2017xmllondon/)

[Paper](http://xmllondon.com/2017/xmllondon-2017-proceedings.pdf#page=56)

## Files

* [svg-path-2-w3c.ebnf](svg-path-2-w3c.ebnf) -- Original path grammar from SVG2 specification

* [svg-path.ebnf](svg-path.ebnf) -- Grammar for SVG paths modified to be processable by REx
  Please note that even original grammar contains bugs -- spaces are not allowed between commands and decimal
  and scientific numbers are not supported.

* [svg-path-alt.ebnf](svg-path-alt.ebnf) -- Grammar for SVG paths modified to be processable by REx and with
  special instruction to generate directly Schematron schema.

* [uk-date.ebnf](uk-date.ebnf) -- Simple grammar for UK dates

* [svg-path.xslt](svg-path.xslt) and [uk-date.xslt](uk-date.xslt) -- XSLT parsers generated from grammar

* [svg-validate-path.sch](svg-validate-path.sch) -- Schematron schema showing how to invoke checking against grammar

* [svg-validate-path-constraints.sch](svg-validate-path-constraints.sch) -- Schematron schema showing how to invoke checking against grammar and then querying result of parsing

* [validate-uk-date.sch](validate-uk-date.sch) -- Schematron schema showing how to invoke checking against grammar






