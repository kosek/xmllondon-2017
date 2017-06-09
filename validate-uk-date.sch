<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  
  <sch:extends href="uk-date.sch"/>
  
  <sch:ns uri="http://example.com/parser/uk-date" prefix="p"/>
  <sch:ns uri="http://www.w3.org/2001/XMLSchema" prefix="xs"/>
  
  <sch:pattern>
    <sch:title></sch:title>
    <sch:rule context="date">
      <sch:let name="parsed-date" value="p:parse-date(.)"/>
      
      <sch:let name="day" value="format-number(number($parsed-date/day/number), '00')"/>
      <sch:let name="month-string" value="string($parsed-date/month)"/>
      <sch:let name="month" value='format-number(
                                    index-of(("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"), $month-string),
                                    "00")'/>
      <sch:let name="year" value="string($parsed-date/year)"/>
      
      <sch:let name="iso-date" value="concat($year, '-', $month, '-', $day)"/>
      
      <sch:assert test="not($parsed-date/self::ERROR)">Invalid date format.
        Error found: <sch:value-of select="p:parse-date(.)"/></sch:assert>
      
      <sch:report test="not($parsed-date/self::ERROR) and not($iso-date castable as xs:date)">Wrong month or day. Can not be interpreted as proper ISO8601 date: <sch:value-of select="$iso-date"/></sch:report>
    </sch:rule>
  </sch:pattern>
  
  
</sch:schema>