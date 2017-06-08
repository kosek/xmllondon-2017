<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  
  <sch:extends href="svg-path.sch"/>
  
  <sch:ns uri="http://example.com/parser/svg-path" prefix="p"/>
  <sch:ns uri="http://www.w3.org/2000/svg" prefix="svg"/>
  
  <sch:pattern>
    <sch:title>Validation of SVG paths</sch:title>
    <sch:rule context="svg:path">
      <sch:report test="p:parse-svg_path(@d)/self::ERROR">
        SVG path is incorrect. Error found:
        <sch:value-of select="p:parse-svg_path(@d)"/>
      </sch:report>
    </sch:rule>
  </sch:pattern>
  
</sch:schema>