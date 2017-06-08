<?xml version="1.0" encoding="UTF-8"?>
<!-- This file was generated on Thu Jun 8, 2017 15:05 (UTC+01) by REx v5.44 which is Copyright (c) 1979-2017 by Gunther Rademacher <grd@gmx.net> -->
<!-- REx command line: -tree -xslt -backtrack -name http://example.com/parser/svg-path svg-path.ebnf -->

<xsl:stylesheet version="2.0"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:p="http://example.com/parser/svg-path">
  <!--~
   ! The index of the lexer state for accessing the combined
   ! (i.e. level > 1) lookahead code.
  -->
  <xsl:variable name="p:lk" as="xs:integer" select="1"/>

  <!--~
   ! The index of the lexer state for accessing the position in the
   ! input string of the begin of the token that has been consumed.
  -->
  <xsl:variable name="p:b0" as="xs:integer" select="2"/>

  <!--~
   ! The index of the lexer state for accessing the position in the
   ! input string of the end of the token that has been consumed.
  -->
  <xsl:variable name="p:e0" as="xs:integer" select="3"/>

  <!--~
   ! The index of the lexer state for accessing the code of the
   ! level-1-lookahead token.
  -->
  <xsl:variable name="p:l1" as="xs:integer" select="4"/>

  <!--~
   ! The index of the lexer state for accessing the position in the
   ! input string of the begin of the level-1-lookahead token.
  -->
  <xsl:variable name="p:b1" as="xs:integer" select="5"/>

  <!--~
   ! The index of the lexer state for accessing the position in the
   ! input string of the end of the level-1-lookahead token.
  -->
  <xsl:variable name="p:e1" as="xs:integer" select="6"/>

  <!--~
   ! The index of the lexer state for accessing the code of the
   ! level-2-lookahead token.
  -->
  <xsl:variable name="p:l2" as="xs:integer" select="7"/>

  <!--~
   ! The index of the lexer state for accessing the position in the
   ! input string of the begin of the level-2-lookahead token.
  -->
  <xsl:variable name="p:b2" as="xs:integer" select="8"/>

  <!--~
   ! The index of the lexer state for accessing the position in the
   ! input string of the end of the level-2-lookahead token.
  -->
  <xsl:variable name="p:e2" as="xs:integer" select="9"/>

  <!--~
   ! The index of the lexer state for accessing the code of the
   ! level-3-lookahead token.
  -->
  <xsl:variable name="p:l3" as="xs:integer" select="10"/>

  <!--~
   ! The index of the lexer state for accessing the position in the
   ! input string of the begin of the level-3-lookahead token.
  -->
  <xsl:variable name="p:b3" as="xs:integer" select="11"/>

  <!--~
   ! The index of the lexer state for accessing the position in the
   ! input string of the end of the level-3-lookahead token.
  -->
  <xsl:variable name="p:e3" as="xs:integer" select="12"/>

  <!--~
   ! The index of the lexer state for accessing the token code that
   ! was expected when an error was found.
  -->
  <xsl:variable name="p:error" as="xs:integer" select="13"/>

  <!--~
   ! The index of the lexer state for accessing the memoization
   ! of backtracking results.
  -->
  <xsl:variable name="p:memo" as="xs:integer" select="14"/>

  <!--~
   ! The index of the lexer state that points to the first entry
   ! used for collecting action results.
  -->
  <xsl:variable name="p:result" as="xs:integer" select="15"/>

  <!--~
   ! The codepoint to charclass mapping for 7 bit codepoints.
  -->
  <xsl:variable name="p:MAP0" as="xs:integer+" select="
    28, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 2, 0, 0, 4, 4, 5, 5,
    5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 6, 7, 8, 0, 0, 0, 0, 9, 0, 0, 0, 10, 11, 0, 0, 0, 12, 0, 13, 14, 0, 15, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 17, 18, 19, 0,
    0, 0, 0, 20, 0, 0, 0, 21, 22, 0, 0, 0, 23, 0, 24, 25, 0, 26, 0, 0, 0, 27, 0, 0, 0, 0, 0
  "/>

  <!--~
   ! The codepoint to charclass mapping for codepoints below the surrogate block.
  -->
  <xsl:variable name="p:MAP1" as="xs:integer+" select="
    54, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58,
    58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 90, 136, 167, 198, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104,
    104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 28, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 2, 0, 0, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0,
    0, 0, 0, 6, 7, 8, 0, 0, 0, 0, 9, 0, 0, 0, 10, 11, 0, 0, 0, 12, 0, 13, 14, 0, 15, 0, 0, 0, 16, 0, 0, 0, 0, 0, 17, 18, 19, 0, 0, 0, 0, 20, 0, 0, 0, 21, 22, 0,
    0, 0, 23, 0, 24, 25, 0, 26, 0, 0, 0, 27, 0, 0, 0, 0, 0
  "/>

  <!--~
   ! The token-set-id to DFA-initial-state mapping.
  -->
  <xsl:variable name="p:INITIAL" as="xs:integer+" select="
    64, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18
  "/>

  <!--~
   ! The DFA transition table.
  -->
  <xsl:variable name="p:TRANSITION" as="xs:integer+" select="
    243, 243, 243, 243, 243, 243, 243, 243, 266, 235, 232, 248, 238, 243, 243, 243, 244, 242, 252, 241, 241, 243, 243, 243, 276, 261, 277, 243, 264, 243, 243,
    243, 272, 270, 255, 274, 256, 243, 243, 243, 257, 255, 255, 274, 256, 243, 243, 243, 243, 243, 243, 285, 287, 243, 243, 243, 243, 243, 243, 289, 291, 243,
    243, 243, 243, 243, 243, 293, 295, 243, 243, 243, 243, 243, 243, 297, 299, 243, 243, 243, 243, 243, 243, 301, 303, 243, 243, 243, 243, 243, 243, 281, 283,
    243, 243, 243, 243, 243, 243, 305, 307, 243, 243, 243, 243, 243, 243, 309, 311, 243, 243, 243, 243, 243, 243, 313, 315, 243, 243, 243, 243, 243, 243, 317,
    319, 243, 243, 243, 243, 243, 362, 359, 361, 243, 243, 243, 243, 243, 243, 321, 323, 243, 243, 243, 243, 243, 243, 325, 327, 243, 243, 243, 243, 243, 243,
    329, 331, 243, 243, 243, 243, 243, 243, 333, 335, 243, 243, 243, 243, 243, 243, 337, 339, 243, 243, 243, 243, 243, 243, 366, 368, 243, 243, 243, 243, 243,
    243, 341, 343, 243, 243, 243, 243, 243, 243, 345, 347, 243, 243, 243, 243, 243, 243, 349, 351, 243, 243, 243, 243, 243, 243, 353, 355, 243, 243, 243, 243,
    243, 375, 372, 374, 243, 243, 243, 243, 243, 243, 379, 381, 243, 243, 243, 0, 227, 256, 227, 227, 256, 227, 227, 243, 0, 128, 0, 0, 0, 0, 128, 256, 256, 0,
    256, 0, 128, 128, 0, 161, 161, 0, 0, 161, 243, 243, 0, 243, 243, 0, 0, 227, 0, 0, 161, 161, 192, 0, 161, 0, 0, 243, 0, 243, 448, 0, 448, 448, 0, 0, 288,
    288, 0, 0, 320, 320, 0, 0, 352, 352, 0, 0, 384, 384, 0, 0, 416, 416, 0, 0, 480, 480, 0, 0, 512, 512, 0, 0, 544, 544, 0, 0, 576, 576, 0, 0, 640, 640, 0, 0,
    672, 672, 0, 0, 704, 704, 0, 0, 736, 736, 0, 0, 768, 768, 0, 0, 832, 832, 0, 0, 864, 864, 0, 0, 896, 896, 0, 0, 928, 928, 0, 0, 0, 608, 608, 608, 0, 0, 608,
    800, 0, 800, 800, 0, 0, 0, 960, 960, 960, 0, 0, 960, 96, 0, 96, 96, 0, 0
  "/>

  <!--~
   ! The DFA-state to expected-token-set mapping.
  -->
  <xsl:variable name="p:EXPECTED" as="xs:integer+" select="
    16, 32, 64, 24, 72, 80, 144, 96, 537133056, 88, 152, 537133120, 16785540, 537133208, 1073741572, 1073741700, 1073741652, 1073741660, 64
  "/>

  <!--~
   ! The token-string table.
  -->
  <xsl:variable name="p:TOKEN" as="xs:string+" select="
    '(0)',
    'END',
    'eof',
    'sign',
    'number',
    'flag',
    'comma_wsp',
    'wsp',
    &quot;'A'&quot;,
    &quot;'B'&quot;,
    &quot;'C'&quot;,
    &quot;'H'&quot;,
    &quot;'L'&quot;,
    &quot;'M'&quot;,
    &quot;'Q'&quot;,
    &quot;'S'&quot;,
    &quot;'T'&quot;,
    &quot;'V'&quot;,
    &quot;'Z'&quot;,
    &quot;'a'&quot;,
    &quot;'b'&quot;,
    &quot;'c'&quot;,
    &quot;'h'&quot;,
    &quot;'l'&quot;,
    &quot;'m'&quot;,
    &quot;'q'&quot;,
    &quot;'s'&quot;,
    &quot;'t'&quot;,
    &quot;'v'&quot;,
    &quot;'z'&quot;
  "/>

  <!--~
   ! Match next token in input string, starting at given index, using
   ! the DFA entry state for the set of tokens that are expected in
   ! the current context.
   !
   ! @param $input the input string.
   ! @param $begin the index where to start in input string.
   ! @param $token-set the expected token set id.
   ! @return a sequence of three: the token code of the result token,
   ! with input string begin and end positions. If there is no valid
   ! token, return the negative id of the DFA state that failed, along
   ! with begin and end positions of the longest viable prefix.
  -->
  <xsl:function name="p:match" as="xs:integer+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="begin" as="xs:integer"/>
    <xsl:param name="token-set" as="xs:integer"/>

    <xsl:variable name="result" select="$p:INITIAL[1 + $token-set]"/>
    <xsl:sequence select="p:transition($input, $begin, $begin, $begin, $result, $result mod 32, 0)"/>
  </xsl:function>

  <!--~
   ! The DFA state transition function. If we are in a valid DFA state, save
   ! it's result annotation, consume one input codepoint, calculate the next
   ! state, and use tail recursion to do the same again. Otherwise, return
   ! any valid result or a negative DFA state id in case of an error.
   !
   ! @param $input the input string.
   ! @param $begin the begin index of the current token in the input string.
   ! @param $current the index of the current position in the input string.
   ! @param $end the end index of the result in the input string.
   ! @param $result the result code.
   ! @param $current-state the current DFA state.
   ! @param $previous-state the  previous DFA state.
   ! @return a sequence of three: the token code of the result token,
   ! with input string begin and end positions. If there is no valid
   ! token, return the negative id of the DFA state that failed, along
   ! with begin and end positions of the longest viable prefix.
  -->
  <xsl:function name="p:transition">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="begin" as="xs:integer"/>
    <xsl:param name="current" as="xs:integer"/>
    <xsl:param name="end" as="xs:integer"/>
    <xsl:param name="result" as="xs:integer"/>
    <xsl:param name="current-state" as="xs:integer"/>
    <xsl:param name="previous-state" as="xs:integer"/>

    <xsl:choose>
      <xsl:when test="$current-state eq 0">
        <xsl:variable name="result" select="$result idiv 32"/>
        <xsl:variable name="end" select="if ($end gt string-length($input)) then string-length($input) + 1 else $end"/>
        <xsl:sequence select="
          if ($result ne 0) then
          (
            $result - 1,
            $begin,
            $end
          )
          else
          (
            - $previous-state,
            $begin,
            $current - 1
          )
        "/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="c0" select="(string-to-codepoints(substring($input, $current, 1)), 0)[1]"/>
        <xsl:variable name="c1" as="xs:integer">
          <xsl:choose>
            <xsl:when test="$c0 &lt; 128">
              <xsl:sequence select="$p:MAP0[1 + $c0]"/>
            </xsl:when>
            <xsl:when test="$c0 &lt; 55296">
              <xsl:variable name="c1" select="$c0 idiv 32"/>
              <xsl:variable name="c2" select="$c1 idiv 32"/>
              <xsl:sequence select="$p:MAP1[1 + $c0 mod 32 + $p:MAP1[1 + $c1 mod 32 + $p:MAP1[1 + $c2]]]"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:sequence select="0"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:variable>
        <xsl:variable name="current" select="$current + 1"/>
        <xsl:variable name="i0" select="32 * $c1 + $current-state - 1"/>
        <xsl:variable name="i1" select="$i0 idiv 4"/>
        <xsl:variable name="next-state" select="$p:TRANSITION[$i0 mod 4 + $p:TRANSITION[$i1 + 1] + 1]"/>
        <xsl:sequence select="
          if ($next-state &gt; 31) then
            p:transition($input, $begin, $current, $current, $next-state, $next-state mod 32, $current-state)
          else
            p:transition($input, $begin, $current, $end, $result, $next-state, $current-state)
        "/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

  <!--~
   ! Recursively translate one 32-bit chunk of an expected token bitset
   ! to the corresponding sequence of token strings.
   !
   ! @param $result the result of previous recursion levels.
   ! @param $chunk the 32-bit chunk of the expected token bitset.
   ! @param $base-token-code the token code of bit 0 in the current chunk.
   ! @return the set of token strings.
  -->
  <xsl:function name="p:token">
    <xsl:param name="result" as="xs:string*"/>
    <xsl:param name="chunk" as="xs:integer"/>
    <xsl:param name="base-token-code" as="xs:integer"/>

    <xsl:sequence select="
      if ($chunk = 0) then
        $result
      else
        p:token
        (
          ($result, if ($chunk mod 2 != 0) then $p:TOKEN[$base-token-code] else ()),
          if ($chunk &lt; 0) then $chunk idiv 2 + 2147483648 else $chunk idiv 2,
          $base-token-code + 1
        )
    "/>
  </xsl:function>

  <!--~
   ! Calculate expected token set for a given DFA state as a sequence
   ! of strings.
   !
   ! @param $state the DFA state.
   ! @return the set of token strings
  -->
  <xsl:function name="p:expected-token-set" as="xs:string*">
    <xsl:param name="state" as="xs:integer"/>

    <xsl:if test="$state > 0">
      <xsl:for-each select="0 to 0">
        <xsl:variable name="i0" select=". * 19 + $state - 1"/>
        <xsl:sequence select="p:token((), $p:EXPECTED[$i0 + 1], . * 32 + 1)"/>
      </xsl:for-each>
    </xsl:if>
  </xsl:function>

  <!--~
   ! Parse bearing_argument_sequence.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-bearing_argument_sequence" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" select="p:lookahead1(1, $input, $state)"/>           <!-- number -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:l1] eq 4">                                        <!-- number -->
          <xsl:variable name="state" select="p:lookahead2(17, $input, $state)"/>    <!-- eof | number | comma_wsp | 'A' | 'B' | 'C' | 'H' | 'L' | 'M' | 'Q' |
                                                                                         'S' | 'T' | 'V' | 'Z' | 'a' | 'b' | 'c' | 'h' | 'l' | 'm' | 'q' | 's' |
                                                                                         't' | 'v' | 'z' -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state[$p:l1], subsequence($state, $p:lk + 1)"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:lk] = 132                                           (: number number :)
                     or $state[$p:lk] = 196">                                       <!-- number comma_wsp -->
          <xsl:variable name="state" select="p:consume(4, $input, $state)"/>        <!-- number -->
          <xsl:variable name="state" select="p:lookahead1(6, $input, $state)"/>     <!-- number | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:error]">
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:when test="$state[$p:l1] = 6">                                   <!-- comma_wsp -->
                <xsl:variable name="state" select="p:consume(6, $input, $state)"/>  <!-- comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:variable name="state" select="p:parse-bearing_argument_sequence($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:consume(4, $input, $state)"/>        <!-- number -->
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'bearing_argument_sequence', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Parse the 1st loop of production bearing (zero or more). Use
   ! tail recursion for iteratively updating the lexer state.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-bearing-1">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:choose>
      <xsl:when test="$state[$p:error]">
        <xsl:sequence select="$state"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="state" select="p:lookahead1(7, $input, $state)"/>       <!-- number | wsp -->
        <xsl:choose>
          <xsl:when test="$state[$p:l1] != 7">                                      <!-- wsp -->
            <xsl:sequence select="$state"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:variable name="state" select="p:consume(7, $input, $state)"/>      <!-- wsp -->
            <xsl:sequence select="p:parse-bearing-1($input, $state)"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

  <!--~
   ! Parse bearing.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-bearing" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 9">                                         <!-- 'B' -->
          <xsl:variable name="state" select="p:consume(9, $input, $state)"/>        <!-- 'B' -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:consume(20, $input, $state)"/>       <!-- 'b' -->
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:parse-bearing-1($input, $state)"/>
    <xsl:variable name="state" select="p:parse-bearing_argument_sequence($input, $state)"/>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'bearing', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Parse elliptical_arc_closing_argument.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-elliptical_arc_closing_argument" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" select="p:lookahead1(1, $input, $state)"/>           <!-- number -->
    <xsl:variable name="state" select="p:consume(4, $input, $state)"/>              <!-- number -->
    <xsl:variable name="state" select="p:lookahead1(6, $input, $state)"/>           <!-- number | comma_wsp -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 6">                                         <!-- comma_wsp -->
          <xsl:variable name="state" select="p:consume(6, $input, $state)"/>        <!-- comma_wsp -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:lookahead1(1, $input, $state)"/>           <!-- number -->
    <xsl:variable name="state" select="p:consume(4, $input, $state)"/>              <!-- number -->
    <xsl:variable name="state" select="p:lookahead1(6, $input, $state)"/>           <!-- number | comma_wsp -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 6">                                         <!-- comma_wsp -->
          <xsl:variable name="state" select="p:consume(6, $input, $state)"/>        <!-- comma_wsp -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:lookahead1(1, $input, $state)"/>           <!-- number -->
    <xsl:variable name="state" select="p:consume(4, $input, $state)"/>              <!-- number -->
    <xsl:variable name="state" select="p:lookahead1(3, $input, $state)"/>           <!-- comma_wsp -->
    <xsl:variable name="state" select="p:consume(6, $input, $state)"/>              <!-- comma_wsp -->
    <xsl:variable name="state" select="p:lookahead1(2, $input, $state)"/>           <!-- flag -->
    <xsl:variable name="state" select="p:consume(5, $input, $state)"/>              <!-- flag -->
    <xsl:variable name="state" select="p:lookahead1(8, $input, $state)"/>           <!-- flag | comma_wsp -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 6">                                         <!-- comma_wsp -->
          <xsl:variable name="state" select="p:consume(6, $input, $state)"/>        <!-- comma_wsp -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:lookahead1(2, $input, $state)"/>           <!-- flag -->
    <xsl:variable name="state" select="p:consume(5, $input, $state)"/>              <!-- flag -->
    <xsl:variable name="state" select="p:lookahead1(12, $input, $state)"/>          <!-- comma_wsp | 'Z' | 'z' -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 6">                                         <!-- comma_wsp -->
          <xsl:variable name="state" select="p:consume(6, $input, $state)"/>        <!-- comma_wsp -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:parse-closepath($input, $state)"/>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'elliptical_arc_closing_argument', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Parse elliptical_arc_argument.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-elliptical_arc_argument" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" select="p:consume(4, $input, $state)"/>              <!-- number -->
    <xsl:variable name="state" select="p:lookahead1(6, $input, $state)"/>           <!-- number | comma_wsp -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 6">                                         <!-- comma_wsp -->
          <xsl:variable name="state" select="p:consume(6, $input, $state)"/>        <!-- comma_wsp -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:lookahead1(1, $input, $state)"/>           <!-- number -->
    <xsl:variable name="state" select="p:consume(4, $input, $state)"/>              <!-- number -->
    <xsl:variable name="state" select="p:lookahead1(6, $input, $state)"/>           <!-- number | comma_wsp -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 6">                                         <!-- comma_wsp -->
          <xsl:variable name="state" select="p:consume(6, $input, $state)"/>        <!-- comma_wsp -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:lookahead1(1, $input, $state)"/>           <!-- number -->
    <xsl:variable name="state" select="p:consume(4, $input, $state)"/>              <!-- number -->
    <xsl:variable name="state" select="p:lookahead1(3, $input, $state)"/>           <!-- comma_wsp -->
    <xsl:variable name="state" select="p:consume(6, $input, $state)"/>              <!-- comma_wsp -->
    <xsl:variable name="state" select="p:lookahead1(2, $input, $state)"/>           <!-- flag -->
    <xsl:variable name="state" select="p:consume(5, $input, $state)"/>              <!-- flag -->
    <xsl:variable name="state" select="p:lookahead1(8, $input, $state)"/>           <!-- flag | comma_wsp -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 6">                                         <!-- comma_wsp -->
          <xsl:variable name="state" select="p:consume(6, $input, $state)"/>        <!-- comma_wsp -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:lookahead1(2, $input, $state)"/>           <!-- flag -->
    <xsl:variable name="state" select="p:consume(5, $input, $state)"/>              <!-- flag -->
    <xsl:variable name="state" select="p:lookahead1(10, $input, $state)"/>          <!-- sign | number | comma_wsp -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 6">                                         <!-- comma_wsp -->
          <xsl:variable name="state" select="p:consume(6, $input, $state)"/>        <!-- comma_wsp -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:parse-coordinate_pair($input, $state)"/>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'elliptical_arc_argument', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Try parsing elliptical_arc_argument.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:try-elliptical_arc_argument" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="state" select="p:consumeT(4, $input, $state)"/>             <!-- number -->
    <xsl:variable name="state" select="p:lookahead1(6, $input, $state)"/>           <!-- number | comma_wsp -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 6">                                         <!-- comma_wsp -->
          <xsl:variable name="state" select="p:consumeT(6, $input, $state)"/>       <!-- comma_wsp -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:lookahead1(1, $input, $state)"/>           <!-- number -->
    <xsl:variable name="state" select="p:consumeT(4, $input, $state)"/>             <!-- number -->
    <xsl:variable name="state" select="p:lookahead1(6, $input, $state)"/>           <!-- number | comma_wsp -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 6">                                         <!-- comma_wsp -->
          <xsl:variable name="state" select="p:consumeT(6, $input, $state)"/>       <!-- comma_wsp -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:lookahead1(1, $input, $state)"/>           <!-- number -->
    <xsl:variable name="state" select="p:consumeT(4, $input, $state)"/>             <!-- number -->
    <xsl:variable name="state" select="p:lookahead1(3, $input, $state)"/>           <!-- comma_wsp -->
    <xsl:variable name="state" select="p:consumeT(6, $input, $state)"/>             <!-- comma_wsp -->
    <xsl:variable name="state" select="p:lookahead1(2, $input, $state)"/>           <!-- flag -->
    <xsl:variable name="state" select="p:consumeT(5, $input, $state)"/>             <!-- flag -->
    <xsl:variable name="state" select="p:lookahead1(8, $input, $state)"/>           <!-- flag | comma_wsp -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 6">                                         <!-- comma_wsp -->
          <xsl:variable name="state" select="p:consumeT(6, $input, $state)"/>       <!-- comma_wsp -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:lookahead1(2, $input, $state)"/>           <!-- flag -->
    <xsl:variable name="state" select="p:consumeT(5, $input, $state)"/>             <!-- flag -->
    <xsl:variable name="state" select="p:lookahead1(10, $input, $state)"/>          <!-- sign | number | comma_wsp -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 6">                                         <!-- comma_wsp -->
          <xsl:variable name="state" select="p:consumeT(6, $input, $state)"/>       <!-- comma_wsp -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:try-coordinate_pair($input, $state)"/>
    <xsl:sequence select="$state"/>
  </xsl:function>

  <!--~
   ! Parse elliptical_arc_argument_sequence.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-elliptical_arc_argument_sequence" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" select="p:lookahead1(1, $input, $state)"/>           <!-- number -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:l1] eq 4">                                        <!-- number -->
          <xsl:variable name="state" select="p:lookahead2(6, $input, $state)"/>     <!-- number | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] eq 132">                                <!-- number number -->
                <xsl:variable name="state" select="p:lookahead3(6, $input, $state)"/> <!-- number | comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:when test="$state[$p:lk] eq 196">                                <!-- number comma_wsp -->
                <xsl:variable name="state" select="p:lookahead3(1, $input, $state)"/> <!-- number -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state[$p:l1], subsequence($state, $p:lk + 1)"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:variable name="state" select="p:memoized($state, 9)"/>
      <xsl:choose>
        <xsl:when test="$state[$p:lk] != 0">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="backtrack" select="$state"/>
          <xsl:variable name="state" select="p:strip-result($state)"/>
          <xsl:variable name="state" select="p:try-elliptical_arc_argument($input, $state)"/>
          <xsl:choose>
            <xsl:when test="not($state[$p:error])">
              <xsl:sequence select="p:memoize($backtrack, $state, -1, 9)"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:sequence select="p:memoize($backtrack, $state, -2, 9)"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:lk] = -1">
          <xsl:variable name="state" select="p:parse-elliptical_arc_argument($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:parse-elliptical_arc_argument($input, $state)"/>
          <xsl:variable name="state" select="p:lookahead1(6, $input, $state)"/>     <!-- number | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:error]">
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:when test="$state[$p:l1] = 6">                                   <!-- comma_wsp -->
                <xsl:variable name="state" select="p:consume(6, $input, $state)"/>  <!-- comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:variable name="state" select="p:parse-elliptical_arc_argument_sequence($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'elliptical_arc_argument_sequence', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Try parsing elliptical_arc_argument_sequence.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:try-elliptical_arc_argument_sequence" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="state" select="p:lookahead1(1, $input, $state)"/>           <!-- number -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:l1] eq 4">                                        <!-- number -->
          <xsl:variable name="state" select="p:lookahead2(6, $input, $state)"/>     <!-- number | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] eq 132">                                <!-- number number -->
                <xsl:variable name="state" select="p:lookahead3(6, $input, $state)"/> <!-- number | comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:when test="$state[$p:lk] eq 196">                                <!-- number comma_wsp -->
                <xsl:variable name="state" select="p:lookahead3(1, $input, $state)"/> <!-- number -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state[$p:l1], subsequence($state, $p:lk + 1)"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:variable name="state" select="p:memoized($state, 9)"/>
      <xsl:choose>
        <xsl:when test="$state[$p:lk] != 0">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="backtrack" select="$state"/>
          <xsl:variable name="state" select="p:strip-result($state)"/>
          <xsl:variable name="state" select="p:try-elliptical_arc_argument($input, $state)"/>
          <xsl:choose>
            <xsl:when test="not($state[$p:error])">
              <xsl:sequence select="p:memoize($backtrack, $state, -1, 9)"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:sequence select="p:memoize($backtrack, $state, -2, 9)"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:lk] = -1">
          <xsl:variable name="state" select="p:try-elliptical_arc_argument($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:try-elliptical_arc_argument($input, $state)"/>
          <xsl:variable name="state" select="p:lookahead1(6, $input, $state)"/>     <!-- number | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:error]">
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:when test="$state[$p:l1] = 6">                                   <!-- comma_wsp -->
                <xsl:variable name="state" select="p:consumeT(6, $input, $state)"/> <!-- comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:variable name="state" select="p:try-elliptical_arc_argument_sequence($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:sequence select="$state"/>
  </xsl:function>

  <!--~
   ! Parse the 1st loop of production elliptical_arc (zero or more). Use
   ! tail recursion for iteratively updating the lexer state.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-elliptical_arc-1">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:choose>
      <xsl:when test="$state[$p:error]">
        <xsl:sequence select="$state"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="state" select="p:lookahead1(7, $input, $state)"/>       <!-- number | wsp -->
        <xsl:choose>
          <xsl:when test="$state[$p:l1] != 7">                                      <!-- wsp -->
            <xsl:sequence select="$state"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:variable name="state" select="p:consume(7, $input, $state)"/>      <!-- wsp -->
            <xsl:sequence select="p:parse-elliptical_arc-1($input, $state)"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

  <!--~
   ! Parse elliptical_arc.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-elliptical_arc" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 8">                                         <!-- 'A' -->
          <xsl:variable name="state" select="p:consume(8, $input, $state)"/>        <!-- 'A' -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:consume(19, $input, $state)"/>       <!-- 'a' -->
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:parse-elliptical_arc-1($input, $state)"/>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:l1] eq 4">                                        <!-- number -->
          <xsl:variable name="state" select="p:lookahead2(6, $input, $state)"/>     <!-- number | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] eq 132">                                <!-- number number -->
                <xsl:variable name="state" select="p:lookahead3(6, $input, $state)"/> <!-- number | comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:when test="$state[$p:lk] eq 196">                                <!-- number comma_wsp -->
                <xsl:variable name="state" select="p:lookahead3(1, $input, $state)"/> <!-- number -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state[$p:l1], subsequence($state, $p:lk + 1)"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:variable name="state" select="p:memoized($state, 7)"/>
      <xsl:choose>
        <xsl:when test="$state[$p:lk] != 0">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="backtrack" select="$state"/>
          <xsl:variable name="state" select="p:strip-result($state)"/>
          <xsl:variable name="state" select="p:try-elliptical_arc_argument_sequence($input, $state)"/>
          <xsl:choose>
            <xsl:when test="not($state[$p:error])">
              <xsl:sequence select="p:memoize($backtrack, $state, -1, 7)"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:sequence select="p:memoize($backtrack, $state, -2, 7)"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:lk] = -1">
          <xsl:variable name="state" select="p:parse-elliptical_arc_argument_sequence($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:l1] eq 4">                                  <!-- number -->
                <xsl:variable name="state" select="p:lookahead2(6, $input, $state)"/> <!-- number | comma_wsp -->
                <xsl:variable name="state" as="item()+">
                  <xsl:choose>
                    <xsl:when test="$state[$p:lk] eq 132">                          <!-- number number -->
                      <xsl:variable name="state" select="p:lookahead3(6, $input, $state)"/> <!-- number | comma_wsp -->
                      <xsl:sequence select="$state"/>
                    </xsl:when>
                    <xsl:when test="$state[$p:lk] eq 196">                          <!-- number comma_wsp -->
                      <xsl:variable name="state" select="p:lookahead3(1, $input, $state)"/> <!-- number -->
                      <xsl:sequence select="$state"/>
                    </xsl:when>
                    <xsl:otherwise>
                      <xsl:sequence select="$state"/>
                    </xsl:otherwise>
                  </xsl:choose>
                </xsl:variable>
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state[$p:l1], subsequence($state, $p:lk + 1)"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:variable name="state" as="item()+">
            <xsl:variable name="state" select="p:memoized($state, 8)"/>
            <xsl:choose>
              <xsl:when test="$state[$p:lk] != 0">
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:variable name="backtrack" select="$state"/>
                <xsl:variable name="state" select="p:strip-result($state)"/>
                <xsl:variable name="state" select="p:try-elliptical_arc_argument_sequence($input, $state)"/>
                <xsl:choose>
                  <xsl:when test="not($state[$p:error])">
                    <xsl:sequence select="p:memoize($backtrack, $state, -1, 8)"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:sequence select="p:memoize($backtrack, $state, -2, 8)"/>
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:error]">
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:when test="$state[$p:lk] = -1">
                <xsl:variable name="state" select="p:parse-elliptical_arc_argument_sequence($input, $state)"/>
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:variable name="state" select="p:parse-elliptical_arc_closing_argument($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'elliptical_arc', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Parse the 1st loop of production smooth_quadratic_bezier_curveto (zero or more). Use
   ! tail recursion for iteratively updating the lexer state.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-smooth_quadratic_bezier_curveto-1">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:choose>
      <xsl:when test="$state[$p:error]">
        <xsl:sequence select="$state"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="state" select="p:lookahead1(14, $input, $state)"/>      <!-- sign | number | wsp | 'Z' | 'z' -->
        <xsl:choose>
          <xsl:when test="$state[$p:l1] != 7">                                      <!-- wsp -->
            <xsl:sequence select="$state"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:variable name="state" select="p:consume(7, $input, $state)"/>      <!-- wsp -->
            <xsl:sequence select="p:parse-smooth_quadratic_bezier_curveto-1($input, $state)"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

  <!--~
   ! Parse smooth_quadratic_bezier_curveto.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-smooth_quadratic_bezier_curveto" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 16">                                        <!-- 'T' -->
          <xsl:variable name="state" select="p:consume(16, $input, $state)"/>       <!-- 'T' -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:consume(27, $input, $state)"/>       <!-- 't' -->
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:parse-smooth_quadratic_bezier_curveto-1($input, $state)"/>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 3                                             (: sign :)
                     or $state[$p:l1] = 4">                                         <!-- number -->
          <xsl:variable name="state" select="p:parse-coordinate_pair_sequence($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:parse-closepath($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'smooth_quadratic_bezier_curveto', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Parse quadratic_bezier_curveto_coordinate_sequence.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-quadratic_bezier_curveto_coordinate_sequence" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" select="p:lookahead1(4, $input, $state)"/>           <!-- sign | number -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:l1] eq 3">                                        <!-- sign -->
          <xsl:variable name="state" select="p:lookahead2(1, $input, $state)"/>     <!-- number -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] eq 131">                                <!-- sign number -->
                <xsl:variable name="state" select="p:lookahead3(5, $input, $state)"/> <!-- sign | comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] eq 4">                                        <!-- number -->
          <xsl:variable name="state" select="p:lookahead2(5, $input, $state)"/>     <!-- sign | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] = (100,                                   (: number sign :)
                                               196)">                               <!-- number comma_wsp -->
                <xsl:variable name="state" select="p:lookahead3(1, $input, $state)"/> <!-- number -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state[$p:l1], subsequence($state, $p:lk + 1)"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:variable name="state" select="p:memoized($state, 6)"/>
      <xsl:choose>
        <xsl:when test="$state[$p:lk] != 0">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="backtrack" select="$state"/>
          <xsl:variable name="state" select="p:strip-result($state)"/>
          <xsl:variable name="state" select="p:try-coordinate_pair_double($input, $state)"/>
          <xsl:choose>
            <xsl:when test="not($state[$p:error])">
              <xsl:sequence select="p:memoize($backtrack, $state, -1, 6)"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:sequence select="p:memoize($backtrack, $state, -2, 6)"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:lk] = -1">
          <xsl:variable name="state" select="p:parse-coordinate_pair_double($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:parse-coordinate_pair_double($input, $state)"/>
          <xsl:variable name="state" select="p:lookahead1(10, $input, $state)"/>    <!-- sign | number | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:error]">
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:when test="$state[$p:l1] = 6">                                   <!-- comma_wsp -->
                <xsl:variable name="state" select="p:consume(6, $input, $state)"/>  <!-- comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:variable name="state" select="p:parse-quadratic_bezier_curveto_coordinate_sequence($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'quadratic_bezier_curveto_coordinate_sequence', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Try parsing quadratic_bezier_curveto_coordinate_sequence.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:try-quadratic_bezier_curveto_coordinate_sequence" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="state" select="p:lookahead1(4, $input, $state)"/>           <!-- sign | number -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:l1] eq 3">                                        <!-- sign -->
          <xsl:variable name="state" select="p:lookahead2(1, $input, $state)"/>     <!-- number -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] eq 131">                                <!-- sign number -->
                <xsl:variable name="state" select="p:lookahead3(5, $input, $state)"/> <!-- sign | comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] eq 4">                                        <!-- number -->
          <xsl:variable name="state" select="p:lookahead2(5, $input, $state)"/>     <!-- sign | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] = (100,                                   (: number sign :)
                                               196)">                               <!-- number comma_wsp -->
                <xsl:variable name="state" select="p:lookahead3(1, $input, $state)"/> <!-- number -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state[$p:l1], subsequence($state, $p:lk + 1)"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:variable name="state" select="p:memoized($state, 6)"/>
      <xsl:choose>
        <xsl:when test="$state[$p:lk] != 0">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="backtrack" select="$state"/>
          <xsl:variable name="state" select="p:strip-result($state)"/>
          <xsl:variable name="state" select="p:try-coordinate_pair_double($input, $state)"/>
          <xsl:choose>
            <xsl:when test="not($state[$p:error])">
              <xsl:sequence select="p:memoize($backtrack, $state, -1, 6)"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:sequence select="p:memoize($backtrack, $state, -2, 6)"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:lk] = -1">
          <xsl:variable name="state" select="p:try-coordinate_pair_double($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:try-coordinate_pair_double($input, $state)"/>
          <xsl:variable name="state" select="p:lookahead1(10, $input, $state)"/>    <!-- sign | number | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:error]">
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:when test="$state[$p:l1] = 6">                                   <!-- comma_wsp -->
                <xsl:variable name="state" select="p:consumeT(6, $input, $state)"/> <!-- comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:variable name="state" select="p:try-quadratic_bezier_curveto_coordinate_sequence($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:sequence select="$state"/>
  </xsl:function>

  <!--~
   ! Parse the 1st loop of production quadratic_bezier_curveto (zero or more). Use
   ! tail recursion for iteratively updating the lexer state.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-quadratic_bezier_curveto-1">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:choose>
      <xsl:when test="$state[$p:error]">
        <xsl:sequence select="$state"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="state" select="p:lookahead1(14, $input, $state)"/>      <!-- sign | number | wsp | 'Z' | 'z' -->
        <xsl:choose>
          <xsl:when test="$state[$p:l1] != 7">                                      <!-- wsp -->
            <xsl:sequence select="$state"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:variable name="state" select="p:consume(7, $input, $state)"/>      <!-- wsp -->
            <xsl:sequence select="p:parse-quadratic_bezier_curveto-1($input, $state)"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

  <!--~
   ! Parse quadratic_bezier_curveto.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-quadratic_bezier_curveto" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 14">                                        <!-- 'Q' -->
          <xsl:variable name="state" select="p:consume(14, $input, $state)"/>       <!-- 'Q' -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:consume(25, $input, $state)"/>       <!-- 'q' -->
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:parse-quadratic_bezier_curveto-1($input, $state)"/>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:l1] eq 3">                                        <!-- sign -->
          <xsl:variable name="state" select="p:lookahead2(1, $input, $state)"/>     <!-- number -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] eq 131">                                <!-- sign number -->
                <xsl:variable name="state" select="p:lookahead3(5, $input, $state)"/> <!-- sign | comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] eq 4">                                        <!-- number -->
          <xsl:variable name="state" select="p:lookahead2(5, $input, $state)"/>     <!-- sign | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] = (100,                                   (: number sign :)
                                               196)">                               <!-- number comma_wsp -->
                <xsl:variable name="state" select="p:lookahead3(1, $input, $state)"/> <!-- number -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state[$p:l1], subsequence($state, $p:lk + 1)"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:lk] != 18                                           (: 'Z' :)
                    and $state[$p:lk] != 29">                                       <!-- 'z' -->
          <xsl:variable name="state" select="p:memoized($state, 5)"/>
          <xsl:choose>
            <xsl:when test="$state[$p:lk] != 0">
              <xsl:sequence select="$state"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:variable name="backtrack" select="$state"/>
              <xsl:variable name="state" select="p:strip-result($state)"/>
              <xsl:variable name="state" select="p:try-quadratic_bezier_curveto_coordinate_sequence($input, $state)"/>
              <xsl:choose>
                <xsl:when test="not($state[$p:error])">
                  <xsl:sequence select="p:memoize($backtrack, $state, -1, 5)"/>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:sequence select="p:memoize($backtrack, $state, -2, 5)"/>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:lk] = -1">
          <xsl:variable name="state" select="p:parse-quadratic_bezier_curveto_coordinate_sequence($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:error]">
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:when test="$state[$p:l1] = 3                                       (: sign :)
                           or $state[$p:l1] = 4">                                   <!-- number -->
                <xsl:variable name="state" select="p:parse-coordinate_pair_sequence($input, $state)"/>
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:variable name="state" select="p:parse-closepath($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'quadratic_bezier_curveto', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Parse coordinate_pair_double.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-coordinate_pair_double" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" select="p:parse-coordinate_pair($input, $state)"/>
    <xsl:variable name="state" select="p:lookahead1(10, $input, $state)"/>          <!-- sign | number | comma_wsp -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 6">                                         <!-- comma_wsp -->
          <xsl:variable name="state" select="p:consume(6, $input, $state)"/>        <!-- comma_wsp -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:parse-coordinate_pair($input, $state)"/>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'coordinate_pair_double', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Try parsing coordinate_pair_double.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:try-coordinate_pair_double" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="state" select="p:try-coordinate_pair($input, $state)"/>
    <xsl:variable name="state" select="p:lookahead1(10, $input, $state)"/>          <!-- sign | number | comma_wsp -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 6">                                         <!-- comma_wsp -->
          <xsl:variable name="state" select="p:consumeT(6, $input, $state)"/>       <!-- comma_wsp -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:try-coordinate_pair($input, $state)"/>
    <xsl:sequence select="$state"/>
  </xsl:function>

  <!--~
   ! Parse smooth_curveto_coordinate_sequence.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-smooth_curveto_coordinate_sequence" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" select="p:lookahead1(4, $input, $state)"/>           <!-- sign | number -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:l1] eq 3">                                        <!-- sign -->
          <xsl:variable name="state" select="p:lookahead2(1, $input, $state)"/>     <!-- number -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] eq 131">                                <!-- sign number -->
                <xsl:variable name="state" select="p:lookahead3(5, $input, $state)"/> <!-- sign | comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] eq 4">                                        <!-- number -->
          <xsl:variable name="state" select="p:lookahead2(5, $input, $state)"/>     <!-- sign | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] = (100,                                   (: number sign :)
                                               196)">                               <!-- number comma_wsp -->
                <xsl:variable name="state" select="p:lookahead3(1, $input, $state)"/> <!-- number -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state[$p:l1], subsequence($state, $p:lk + 1)"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:variable name="state" select="p:memoized($state, 4)"/>
      <xsl:choose>
        <xsl:when test="$state[$p:lk] != 0">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="backtrack" select="$state"/>
          <xsl:variable name="state" select="p:strip-result($state)"/>
          <xsl:variable name="state" select="p:try-coordinate_pair_double($input, $state)"/>
          <xsl:choose>
            <xsl:when test="not($state[$p:error])">
              <xsl:sequence select="p:memoize($backtrack, $state, -1, 4)"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:sequence select="p:memoize($backtrack, $state, -2, 4)"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:lk] = -1">
          <xsl:variable name="state" select="p:parse-coordinate_pair_double($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:parse-coordinate_pair_double($input, $state)"/>
          <xsl:variable name="state" select="p:lookahead1(10, $input, $state)"/>    <!-- sign | number | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:error]">
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:when test="$state[$p:l1] = 6">                                   <!-- comma_wsp -->
                <xsl:variable name="state" select="p:consume(6, $input, $state)"/>  <!-- comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:variable name="state" select="p:parse-smooth_curveto_coordinate_sequence($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'smooth_curveto_coordinate_sequence', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Try parsing smooth_curveto_coordinate_sequence.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:try-smooth_curveto_coordinate_sequence" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="state" select="p:lookahead1(4, $input, $state)"/>           <!-- sign | number -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:l1] eq 3">                                        <!-- sign -->
          <xsl:variable name="state" select="p:lookahead2(1, $input, $state)"/>     <!-- number -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] eq 131">                                <!-- sign number -->
                <xsl:variable name="state" select="p:lookahead3(5, $input, $state)"/> <!-- sign | comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] eq 4">                                        <!-- number -->
          <xsl:variable name="state" select="p:lookahead2(5, $input, $state)"/>     <!-- sign | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] = (100,                                   (: number sign :)
                                               196)">                               <!-- number comma_wsp -->
                <xsl:variable name="state" select="p:lookahead3(1, $input, $state)"/> <!-- number -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state[$p:l1], subsequence($state, $p:lk + 1)"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:variable name="state" select="p:memoized($state, 4)"/>
      <xsl:choose>
        <xsl:when test="$state[$p:lk] != 0">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="backtrack" select="$state"/>
          <xsl:variable name="state" select="p:strip-result($state)"/>
          <xsl:variable name="state" select="p:try-coordinate_pair_double($input, $state)"/>
          <xsl:choose>
            <xsl:when test="not($state[$p:error])">
              <xsl:sequence select="p:memoize($backtrack, $state, -1, 4)"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:sequence select="p:memoize($backtrack, $state, -2, 4)"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:lk] = -1">
          <xsl:variable name="state" select="p:try-coordinate_pair_double($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:try-coordinate_pair_double($input, $state)"/>
          <xsl:variable name="state" select="p:lookahead1(10, $input, $state)"/>    <!-- sign | number | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:error]">
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:when test="$state[$p:l1] = 6">                                   <!-- comma_wsp -->
                <xsl:variable name="state" select="p:consumeT(6, $input, $state)"/> <!-- comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:variable name="state" select="p:try-smooth_curveto_coordinate_sequence($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:sequence select="$state"/>
  </xsl:function>

  <!--~
   ! Parse the 1st loop of production smooth_curveto (zero or more). Use
   ! tail recursion for iteratively updating the lexer state.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-smooth_curveto-1">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:choose>
      <xsl:when test="$state[$p:error]">
        <xsl:sequence select="$state"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="state" select="p:lookahead1(14, $input, $state)"/>      <!-- sign | number | wsp | 'Z' | 'z' -->
        <xsl:choose>
          <xsl:when test="$state[$p:l1] != 7">                                      <!-- wsp -->
            <xsl:sequence select="$state"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:variable name="state" select="p:consume(7, $input, $state)"/>      <!-- wsp -->
            <xsl:sequence select="p:parse-smooth_curveto-1($input, $state)"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

  <!--~
   ! Parse smooth_curveto.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-smooth_curveto" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 15">                                        <!-- 'S' -->
          <xsl:variable name="state" select="p:consume(15, $input, $state)"/>       <!-- 'S' -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:consume(26, $input, $state)"/>       <!-- 's' -->
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:parse-smooth_curveto-1($input, $state)"/>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:l1] eq 3">                                        <!-- sign -->
          <xsl:variable name="state" select="p:lookahead2(1, $input, $state)"/>     <!-- number -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] eq 131">                                <!-- sign number -->
                <xsl:variable name="state" select="p:lookahead3(5, $input, $state)"/> <!-- sign | comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] eq 4">                                        <!-- number -->
          <xsl:variable name="state" select="p:lookahead2(5, $input, $state)"/>     <!-- sign | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] = (100,                                   (: number sign :)
                                               196)">                               <!-- number comma_wsp -->
                <xsl:variable name="state" select="p:lookahead3(1, $input, $state)"/> <!-- number -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state[$p:l1], subsequence($state, $p:lk + 1)"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:lk] != 18                                           (: 'Z' :)
                    and $state[$p:lk] != 29">                                       <!-- 'z' -->
          <xsl:variable name="state" select="p:memoized($state, 3)"/>
          <xsl:choose>
            <xsl:when test="$state[$p:lk] != 0">
              <xsl:sequence select="$state"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:variable name="backtrack" select="$state"/>
              <xsl:variable name="state" select="p:strip-result($state)"/>
              <xsl:variable name="state" select="p:try-smooth_curveto_coordinate_sequence($input, $state)"/>
              <xsl:choose>
                <xsl:when test="not($state[$p:error])">
                  <xsl:sequence select="p:memoize($backtrack, $state, -1, 3)"/>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:sequence select="p:memoize($backtrack, $state, -2, 3)"/>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:lk] = -1">
          <xsl:variable name="state" select="p:parse-smooth_curveto_coordinate_sequence($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:error]">
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:when test="$state[$p:l1] = 3                                       (: sign :)
                           or $state[$p:l1] = 4">                                   <!-- number -->
                <xsl:variable name="state" select="p:parse-coordinate_pair_sequence($input, $state)"/>
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:variable name="state" select="p:parse-closepath($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'smooth_curveto', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Parse coordinate_pair_triplet.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-coordinate_pair_triplet" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" select="p:parse-coordinate_pair($input, $state)"/>
    <xsl:variable name="state" select="p:lookahead1(10, $input, $state)"/>          <!-- sign | number | comma_wsp -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 6">                                         <!-- comma_wsp -->
          <xsl:variable name="state" select="p:consume(6, $input, $state)"/>        <!-- comma_wsp -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:parse-coordinate_pair($input, $state)"/>
    <xsl:variable name="state" select="p:lookahead1(10, $input, $state)"/>          <!-- sign | number | comma_wsp -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 6">                                         <!-- comma_wsp -->
          <xsl:variable name="state" select="p:consume(6, $input, $state)"/>        <!-- comma_wsp -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:parse-coordinate_pair($input, $state)"/>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'coordinate_pair_triplet', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Try parsing coordinate_pair_triplet.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:try-coordinate_pair_triplet" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="state" select="p:try-coordinate_pair($input, $state)"/>
    <xsl:variable name="state" select="p:lookahead1(10, $input, $state)"/>          <!-- sign | number | comma_wsp -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 6">                                         <!-- comma_wsp -->
          <xsl:variable name="state" select="p:consumeT(6, $input, $state)"/>       <!-- comma_wsp -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:try-coordinate_pair($input, $state)"/>
    <xsl:variable name="state" select="p:lookahead1(10, $input, $state)"/>          <!-- sign | number | comma_wsp -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 6">                                         <!-- comma_wsp -->
          <xsl:variable name="state" select="p:consumeT(6, $input, $state)"/>       <!-- comma_wsp -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:try-coordinate_pair($input, $state)"/>
    <xsl:sequence select="$state"/>
  </xsl:function>

  <!--~
   ! Parse curveto_coordinate_sequence.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-curveto_coordinate_sequence" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" select="p:lookahead1(4, $input, $state)"/>           <!-- sign | number -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:l1] eq 3">                                        <!-- sign -->
          <xsl:variable name="state" select="p:lookahead2(1, $input, $state)"/>     <!-- number -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] eq 131">                                <!-- sign number -->
                <xsl:variable name="state" select="p:lookahead3(5, $input, $state)"/> <!-- sign | comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] eq 4">                                        <!-- number -->
          <xsl:variable name="state" select="p:lookahead2(5, $input, $state)"/>     <!-- sign | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] = (100,                                   (: number sign :)
                                               196)">                               <!-- number comma_wsp -->
                <xsl:variable name="state" select="p:lookahead3(1, $input, $state)"/> <!-- number -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state[$p:l1], subsequence($state, $p:lk + 1)"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:variable name="state" select="p:memoized($state, 2)"/>
      <xsl:choose>
        <xsl:when test="$state[$p:lk] != 0">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="backtrack" select="$state"/>
          <xsl:variable name="state" select="p:strip-result($state)"/>
          <xsl:variable name="state" select="p:try-coordinate_pair_triplet($input, $state)"/>
          <xsl:choose>
            <xsl:when test="not($state[$p:error])">
              <xsl:sequence select="p:memoize($backtrack, $state, -1, 2)"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:sequence select="p:memoize($backtrack, $state, -2, 2)"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:lk] = -1">
          <xsl:variable name="state" select="p:parse-coordinate_pair_triplet($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:parse-coordinate_pair_triplet($input, $state)"/>
          <xsl:variable name="state" select="p:lookahead1(10, $input, $state)"/>    <!-- sign | number | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:error]">
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:when test="$state[$p:l1] = 6">                                   <!-- comma_wsp -->
                <xsl:variable name="state" select="p:consume(6, $input, $state)"/>  <!-- comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:variable name="state" select="p:parse-curveto_coordinate_sequence($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'curveto_coordinate_sequence', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Try parsing curveto_coordinate_sequence.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:try-curveto_coordinate_sequence" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="state" select="p:lookahead1(4, $input, $state)"/>           <!-- sign | number -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:l1] eq 3">                                        <!-- sign -->
          <xsl:variable name="state" select="p:lookahead2(1, $input, $state)"/>     <!-- number -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] eq 131">                                <!-- sign number -->
                <xsl:variable name="state" select="p:lookahead3(5, $input, $state)"/> <!-- sign | comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] eq 4">                                        <!-- number -->
          <xsl:variable name="state" select="p:lookahead2(5, $input, $state)"/>     <!-- sign | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] = (100,                                   (: number sign :)
                                               196)">                               <!-- number comma_wsp -->
                <xsl:variable name="state" select="p:lookahead3(1, $input, $state)"/> <!-- number -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state[$p:l1], subsequence($state, $p:lk + 1)"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:variable name="state" select="p:memoized($state, 2)"/>
      <xsl:choose>
        <xsl:when test="$state[$p:lk] != 0">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="backtrack" select="$state"/>
          <xsl:variable name="state" select="p:strip-result($state)"/>
          <xsl:variable name="state" select="p:try-coordinate_pair_triplet($input, $state)"/>
          <xsl:choose>
            <xsl:when test="not($state[$p:error])">
              <xsl:sequence select="p:memoize($backtrack, $state, -1, 2)"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:sequence select="p:memoize($backtrack, $state, -2, 2)"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:lk] = -1">
          <xsl:variable name="state" select="p:try-coordinate_pair_triplet($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:try-coordinate_pair_triplet($input, $state)"/>
          <xsl:variable name="state" select="p:lookahead1(10, $input, $state)"/>    <!-- sign | number | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:error]">
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:when test="$state[$p:l1] = 6">                                   <!-- comma_wsp -->
                <xsl:variable name="state" select="p:consumeT(6, $input, $state)"/> <!-- comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:variable name="state" select="p:try-curveto_coordinate_sequence($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:sequence select="$state"/>
  </xsl:function>

  <!--~
   ! Parse the 1st loop of production curveto (zero or more). Use
   ! tail recursion for iteratively updating the lexer state.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-curveto-1">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:choose>
      <xsl:when test="$state[$p:error]">
        <xsl:sequence select="$state"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="state" select="p:lookahead1(14, $input, $state)"/>      <!-- sign | number | wsp | 'Z' | 'z' -->
        <xsl:choose>
          <xsl:when test="$state[$p:l1] != 7">                                      <!-- wsp -->
            <xsl:sequence select="$state"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:variable name="state" select="p:consume(7, $input, $state)"/>      <!-- wsp -->
            <xsl:sequence select="p:parse-curveto-1($input, $state)"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

  <!--~
   ! Parse curveto.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-curveto" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 10">                                        <!-- 'C' -->
          <xsl:variable name="state" select="p:consume(10, $input, $state)"/>       <!-- 'C' -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:consume(21, $input, $state)"/>       <!-- 'c' -->
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:parse-curveto-1($input, $state)"/>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:l1] eq 3">                                        <!-- sign -->
          <xsl:variable name="state" select="p:lookahead2(1, $input, $state)"/>     <!-- number -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] eq 131">                                <!-- sign number -->
                <xsl:variable name="state" select="p:lookahead3(5, $input, $state)"/> <!-- sign | comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] eq 4">                                        <!-- number -->
          <xsl:variable name="state" select="p:lookahead2(5, $input, $state)"/>     <!-- sign | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] = (100,                                   (: number sign :)
                                               196)">                               <!-- number comma_wsp -->
                <xsl:variable name="state" select="p:lookahead3(1, $input, $state)"/> <!-- number -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state[$p:l1], subsequence($state, $p:lk + 1)"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:lk] != 18                                           (: 'Z' :)
                    and $state[$p:lk] != 29">                                       <!-- 'z' -->
          <xsl:variable name="state" select="p:memoized($state, 1)"/>
          <xsl:choose>
            <xsl:when test="$state[$p:lk] != 0">
              <xsl:sequence select="$state"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:variable name="backtrack" select="$state"/>
              <xsl:variable name="state" select="p:strip-result($state)"/>
              <xsl:variable name="state" select="p:try-curveto_coordinate_sequence($input, $state)"/>
              <xsl:choose>
                <xsl:when test="not($state[$p:error])">
                  <xsl:sequence select="p:memoize($backtrack, $state, -1, 1)"/>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:sequence select="p:memoize($backtrack, $state, -2, 1)"/>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:lk] = -1">
          <xsl:variable name="state" select="p:parse-curveto_coordinate_sequence($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:error]">
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:when test="$state[$p:l1] = 3                                       (: sign :)
                           or $state[$p:l1] = 4">                                   <!-- number -->
                <xsl:variable name="state" select="p:parse-coordinate_pair_sequence($input, $state)"/>
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:variable name="state" select="p:parse-closepath($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'curveto', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Parse the 1st loop of production vertical_lineto (zero or more). Use
   ! tail recursion for iteratively updating the lexer state.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-vertical_lineto-1">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:choose>
      <xsl:when test="$state[$p:error]">
        <xsl:sequence select="$state"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="state" select="p:lookahead1(11, $input, $state)"/>      <!-- sign | number | wsp -->
        <xsl:choose>
          <xsl:when test="$state[$p:l1] != 7">                                      <!-- wsp -->
            <xsl:sequence select="$state"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:variable name="state" select="p:consume(7, $input, $state)"/>      <!-- wsp -->
            <xsl:sequence select="p:parse-vertical_lineto-1($input, $state)"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

  <!--~
   ! Parse vertical_lineto.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-vertical_lineto" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 17">                                        <!-- 'V' -->
          <xsl:variable name="state" select="p:consume(17, $input, $state)"/>       <!-- 'V' -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:consume(28, $input, $state)"/>       <!-- 'v' -->
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:parse-vertical_lineto-1($input, $state)"/>
    <xsl:variable name="state" select="p:parse-coordinate_sequence($input, $state)"/>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'vertical_lineto', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Parse coordinate_sequence.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-coordinate_sequence" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" select="p:lookahead1(4, $input, $state)"/>           <!-- sign | number -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:l1] eq 3">                                        <!-- sign -->
          <xsl:variable name="state" select="p:lookahead2(1, $input, $state)"/>     <!-- number -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] eq 131">                                <!-- sign number -->
                <xsl:variable name="state" select="p:lookahead3(18, $input, $state)"/> <!-- eof | sign | number | comma_wsp | 'A' | 'B' | 'C' | 'H' | 'L' |
                                                                                            'M' | 'Q' | 'S' | 'T' | 'V' | 'Z' | 'a' | 'b' | 'c' | 'h' | 'l' |
                                                                                            'm' | 'q' | 's' | 't' | 'v' | 'z' -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] eq 4">                                        <!-- number -->
          <xsl:variable name="state" select="p:lookahead2(18, $input, $state)"/>    <!-- eof | sign | number | comma_wsp | 'A' | 'B' | 'C' | 'H' | 'L' | 'M' |
                                                                                         'Q' | 'S' | 'T' | 'V' | 'Z' | 'a' | 'b' | 'c' | 'h' | 'l' | 'm' | 'q' |
                                                                                         's' | 't' | 'v' | 'z' -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state[$p:l1], subsequence($state, $p:lk + 1)"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:lk] = 100                                           (: number sign :)
                     or $state[$p:lk] = 132                                           (: number number :)
                     or $state[$p:lk] = 196                                           (: number comma_wsp :)
                     or $state[$p:lk] = 3203                                          (: sign number sign :)
                     or $state[$p:lk] = 4227                                          (: sign number number :)
                     or $state[$p:lk] = 6275">                                      <!-- sign number comma_wsp -->
          <xsl:variable name="state" select="p:parse-coordinate($input, $state)"/>
          <xsl:variable name="state" select="p:lookahead1(10, $input, $state)"/>    <!-- sign | number | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:error]">
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:when test="$state[$p:l1] = 6">                                   <!-- comma_wsp -->
                <xsl:variable name="state" select="p:consume(6, $input, $state)"/>  <!-- comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:variable name="state" select="p:parse-coordinate_sequence($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:parse-coordinate($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'coordinate_sequence', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Parse the 1st loop of production horizontal_lineto (zero or more). Use
   ! tail recursion for iteratively updating the lexer state.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-horizontal_lineto-1">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:choose>
      <xsl:when test="$state[$p:error]">
        <xsl:sequence select="$state"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="state" select="p:lookahead1(11, $input, $state)"/>      <!-- sign | number | wsp -->
        <xsl:choose>
          <xsl:when test="$state[$p:l1] != 7">                                      <!-- wsp -->
            <xsl:sequence select="$state"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:variable name="state" select="p:consume(7, $input, $state)"/>      <!-- wsp -->
            <xsl:sequence select="p:parse-horizontal_lineto-1($input, $state)"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

  <!--~
   ! Parse horizontal_lineto.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-horizontal_lineto" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 11">                                        <!-- 'H' -->
          <xsl:variable name="state" select="p:consume(11, $input, $state)"/>       <!-- 'H' -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:consume(22, $input, $state)"/>       <!-- 'h' -->
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:parse-horizontal_lineto-1($input, $state)"/>
    <xsl:variable name="state" select="p:parse-coordinate_sequence($input, $state)"/>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'horizontal_lineto', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Parse the 1st loop of production lineto (zero or more). Use
   ! tail recursion for iteratively updating the lexer state.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-lineto-1">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:choose>
      <xsl:when test="$state[$p:error]">
        <xsl:sequence select="$state"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="state" select="p:lookahead1(14, $input, $state)"/>      <!-- sign | number | wsp | 'Z' | 'z' -->
        <xsl:choose>
          <xsl:when test="$state[$p:l1] != 7">                                      <!-- wsp -->
            <xsl:sequence select="$state"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:variable name="state" select="p:consume(7, $input, $state)"/>      <!-- wsp -->
            <xsl:sequence select="p:parse-lineto-1($input, $state)"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

  <!--~
   ! Parse lineto.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-lineto" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 12">                                        <!-- 'L' -->
          <xsl:variable name="state" select="p:consume(12, $input, $state)"/>       <!-- 'L' -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:consume(23, $input, $state)"/>       <!-- 'l' -->
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:parse-lineto-1($input, $state)"/>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 3                                             (: sign :)
                     or $state[$p:l1] = 4">                                         <!-- number -->
          <xsl:variable name="state" select="p:parse-coordinate_pair_sequence($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:parse-closepath($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'lineto', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Parse drawto_command.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-drawto_command" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 13                                            (: 'M' :)
                     or $state[$p:l1] = 24">                                        <!-- 'm' -->
          <xsl:variable name="state" select="p:parse-moveto($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 18                                            (: 'Z' :)
                     or $state[$p:l1] = 29">                                        <!-- 'z' -->
          <xsl:variable name="state" select="p:parse-closepath($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 12                                            (: 'L' :)
                     or $state[$p:l1] = 23">                                        <!-- 'l' -->
          <xsl:variable name="state" select="p:parse-lineto($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 11                                            (: 'H' :)
                     or $state[$p:l1] = 22">                                        <!-- 'h' -->
          <xsl:variable name="state" select="p:parse-horizontal_lineto($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 17                                            (: 'V' :)
                     or $state[$p:l1] = 28">                                        <!-- 'v' -->
          <xsl:variable name="state" select="p:parse-vertical_lineto($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 10                                            (: 'C' :)
                     or $state[$p:l1] = 21">                                        <!-- 'c' -->
          <xsl:variable name="state" select="p:parse-curveto($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 15                                            (: 'S' :)
                     or $state[$p:l1] = 26">                                        <!-- 's' -->
          <xsl:variable name="state" select="p:parse-smooth_curveto($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 14                                            (: 'Q' :)
                     or $state[$p:l1] = 25">                                        <!-- 'q' -->
          <xsl:variable name="state" select="p:parse-quadratic_bezier_curveto($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 16                                            (: 'T' :)
                     or $state[$p:l1] = 27">                                        <!-- 't' -->
          <xsl:variable name="state" select="p:parse-smooth_quadratic_bezier_curveto($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 8                                             (: 'A' :)
                     or $state[$p:l1] = 19">                                        <!-- 'a' -->
          <xsl:variable name="state" select="p:parse-elliptical_arc($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:parse-bearing($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'drawto_command', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Parse the 1st loop of production closepath (zero or more). Use
   ! tail recursion for iteratively updating the lexer state.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-closepath-1">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:choose>
      <xsl:when test="$state[$p:error]">
        <xsl:sequence select="$state"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="state" select="p:lookahead1(16, $input, $state)"/>      <!-- eof | wsp | 'A' | 'B' | 'C' | 'H' | 'L' | 'M' | 'Q' | 'S' | 'T' | 'V' |
                                                                                         'Z' | 'a' | 'b' | 'c' | 'h' | 'l' | 'm' | 'q' | 's' | 't' | 'v' |
                                                                                         'z' -->
        <xsl:choose>
          <xsl:when test="$state[$p:l1] != 7">                                      <!-- wsp -->
            <xsl:sequence select="$state"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:variable name="state" select="p:consume(7, $input, $state)"/>      <!-- wsp -->
            <xsl:sequence select="p:parse-closepath-1($input, $state)"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

  <!--~
   ! Try parsing the 1st loop of production closepath (zero or more). Use
   ! tail recursion for iteratively updating the lexer state.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:try-closepath-1">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:choose>
      <xsl:when test="$state[$p:error]">
        <xsl:sequence select="$state"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="state" select="p:lookahead1(16, $input, $state)"/>      <!-- eof | wsp | 'A' | 'B' | 'C' | 'H' | 'L' | 'M' | 'Q' | 'S' | 'T' | 'V' |
                                                                                         'Z' | 'a' | 'b' | 'c' | 'h' | 'l' | 'm' | 'q' | 's' | 't' | 'v' |
                                                                                         'z' -->
        <xsl:choose>
          <xsl:when test="$state[$p:l1] != 7">                                      <!-- wsp -->
            <xsl:sequence select="$state"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:variable name="state" select="p:consumeT(7, $input, $state)"/>     <!-- wsp -->
            <xsl:sequence select="p:try-closepath-1($input, $state)"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

  <!--~
   ! Parse closepath.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-closepath" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" select="p:lookahead1(9, $input, $state)"/>           <!-- 'Z' | 'z' -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 18">                                        <!-- 'Z' -->
          <xsl:variable name="state" select="p:consume(18, $input, $state)"/>       <!-- 'Z' -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:consume(29, $input, $state)"/>       <!-- 'z' -->
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:parse-closepath-1($input, $state)"/>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'closepath', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Try parsing closepath.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:try-closepath" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="state" select="p:lookahead1(9, $input, $state)"/>           <!-- 'Z' | 'z' -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 18">                                        <!-- 'Z' -->
          <xsl:variable name="state" select="p:consumeT(18, $input, $state)"/>      <!-- 'Z' -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:consumeT(29, $input, $state)"/>      <!-- 'z' -->
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:try-closepath-1($input, $state)"/>
    <xsl:sequence select="$state"/>
  </xsl:function>

  <!--~
   ! Parse unsigned-coordinate.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-unsigned-coordinate" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" select="p:lookahead1(1, $input, $state)"/>           <!-- number -->
    <xsl:variable name="state" select="p:consume(4, $input, $state)"/>              <!-- number -->
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'unsigned-coordinate', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Try parsing unsigned-coordinate.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:try-unsigned-coordinate" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="state" select="p:lookahead1(1, $input, $state)"/>           <!-- number -->
    <xsl:variable name="state" select="p:consumeT(4, $input, $state)"/>             <!-- number -->
    <xsl:sequence select="$state"/>
  </xsl:function>

  <!--~
   ! Parse signed-coordinate.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-signed-coordinate" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" select="p:consume(3, $input, $state)"/>              <!-- sign -->
    <xsl:variable name="state" select="p:lookahead1(1, $input, $state)"/>           <!-- number -->
    <xsl:variable name="state" select="p:consume(4, $input, $state)"/>              <!-- number -->
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'signed-coordinate', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Try parsing signed-coordinate.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:try-signed-coordinate" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="state" select="p:consumeT(3, $input, $state)"/>             <!-- sign -->
    <xsl:variable name="state" select="p:lookahead1(1, $input, $state)"/>           <!-- number -->
    <xsl:variable name="state" select="p:consumeT(4, $input, $state)"/>             <!-- number -->
    <xsl:sequence select="$state"/>
  </xsl:function>

  <!--~
   ! Parse coordinate.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-coordinate" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" select="p:lookahead1(4, $input, $state)"/>           <!-- sign | number -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 3">                                         <!-- sign -->
          <xsl:variable name="state" select="p:parse-signed-coordinate($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:parse-unsigned-coordinate($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'coordinate', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Try parsing coordinate.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:try-coordinate" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="state" select="p:lookahead1(4, $input, $state)"/>           <!-- sign | number -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 3">                                         <!-- sign -->
          <xsl:variable name="state" select="p:try-signed-coordinate($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:try-unsigned-coordinate($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:sequence select="$state"/>
  </xsl:function>

  <!--~
   ! Parse coordinate_pair.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-coordinate_pair" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" select="p:parse-coordinate($input, $state)"/>
    <xsl:variable name="state" select="p:lookahead1(5, $input, $state)"/>           <!-- sign | comma_wsp -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 6">                                         <!-- comma_wsp -->
          <xsl:variable name="state" select="p:consume(6, $input, $state)"/>        <!-- comma_wsp -->
          <xsl:variable name="state" select="p:parse-unsigned-coordinate($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:parse-signed-coordinate($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'coordinate_pair', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Try parsing coordinate_pair.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:try-coordinate_pair" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="state" select="p:try-coordinate($input, $state)"/>
    <xsl:variable name="state" select="p:lookahead1(5, $input, $state)"/>           <!-- sign | comma_wsp -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 6">                                         <!-- comma_wsp -->
          <xsl:variable name="state" select="p:consumeT(6, $input, $state)"/>       <!-- comma_wsp -->
          <xsl:variable name="state" select="p:try-unsigned-coordinate($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:try-signed-coordinate($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:sequence select="$state"/>
  </xsl:function>

  <!--~
   ! Parse coordinate_pair_sequence.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-coordinate_pair_sequence" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" select="p:lookahead1(4, $input, $state)"/>           <!-- sign | number -->
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:l1] eq 3">                                        <!-- sign -->
          <xsl:variable name="state" select="p:lookahead2(1, $input, $state)"/>     <!-- number -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] eq 131">                                <!-- sign number -->
                <xsl:variable name="state" select="p:lookahead3(5, $input, $state)"/> <!-- sign | comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] eq 4">                                        <!-- number -->
          <xsl:variable name="state" select="p:lookahead2(5, $input, $state)"/>     <!-- sign | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] = (100,                                   (: number sign :)
                                               196)">                               <!-- number comma_wsp -->
                <xsl:variable name="state" select="p:lookahead3(1, $input, $state)"/> <!-- number -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state[$p:l1], subsequence($state, $p:lk + 1)"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:variable name="state" select="p:memoized($state, 10)"/>
      <xsl:choose>
        <xsl:when test="$state[$p:lk] != 0">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="backtrack" select="$state"/>
          <xsl:variable name="state" select="p:strip-result($state)"/>
          <xsl:variable name="state" select="p:try-coordinate_pair($input, $state)"/>
          <xsl:choose>
            <xsl:when test="not($state[$p:error])">
              <xsl:sequence select="p:memoize($backtrack, $state, -1, 10)"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:sequence select="p:memoize($backtrack, $state, -2, 10)"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:lk] = -1">
          <xsl:variable name="state" select="p:parse-coordinate_pair($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:parse-coordinate_pair($input, $state)"/>
          <xsl:variable name="state" select="p:lookahead1(10, $input, $state)"/>    <!-- sign | number | comma_wsp -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:error]">
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:when test="$state[$p:l1] = 6">                                   <!-- comma_wsp -->
                <xsl:variable name="state" select="p:consume(6, $input, $state)"/>  <!-- comma_wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:variable name="state" select="p:parse-coordinate_pair_sequence($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'coordinate_pair_sequence', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Parse the 1st loop of production moveto (zero or more). Use
   ! tail recursion for iteratively updating the lexer state.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-moveto-1">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:choose>
      <xsl:when test="$state[$p:error]">
        <xsl:sequence select="$state"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="state" select="p:lookahead1(11, $input, $state)"/>      <!-- sign | number | wsp -->
        <xsl:choose>
          <xsl:when test="$state[$p:l1] != 7">                                      <!-- wsp -->
            <xsl:sequence select="$state"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:variable name="state" select="p:consume(7, $input, $state)"/>      <!-- wsp -->
            <xsl:sequence select="p:parse-moveto-1($input, $state)"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

  <!--~
   ! Parse the 2nd loop of production moveto (zero or more). Use
   ! tail recursion for iteratively updating the lexer state.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-moveto-2">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:choose>
      <xsl:when test="$state[$p:error]">
        <xsl:sequence select="$state"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="state" select="p:lookahead1(16, $input, $state)"/>      <!-- eof | wsp | 'A' | 'B' | 'C' | 'H' | 'L' | 'M' | 'Q' | 'S' | 'T' | 'V' |
                                                                                         'Z' | 'a' | 'b' | 'c' | 'h' | 'l' | 'm' | 'q' | 's' | 't' | 'v' |
                                                                                         'z' -->
        <xsl:choose>
          <xsl:when test="$state[$p:l1] != 7">                                      <!-- wsp -->
            <xsl:sequence select="$state"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:variable name="state" select="p:consume(7, $input, $state)"/>      <!-- wsp -->
            <xsl:sequence select="p:parse-moveto-2($input, $state)"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

  <!--~
   ! Parse moveto.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-moveto" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] = 13">                                        <!-- 'M' -->
          <xsl:variable name="state" select="p:consume(13, $input, $state)"/>       <!-- 'M' -->
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:variable name="state" select="p:consume(24, $input, $state)"/>       <!-- 'm' -->
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:parse-moveto-1($input, $state)"/>
    <xsl:variable name="state" select="p:parse-coordinate_pair_sequence($input, $state)"/>
    <xsl:variable name="state" select="p:parse-moveto-2($input, $state)"/>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:l1] = (18,                                          (: 'Z' :)
                                         29)">                                      <!-- 'z' -->
          <xsl:variable name="state" select="p:lookahead2(16, $input, $state)"/>    <!-- eof | wsp | 'A' | 'B' | 'C' | 'H' | 'L' | 'M' | 'Q' | 'S' | 'T' | 'V' |
                                                                                         'Z' | 'a' | 'b' | 'c' | 'h' | 'l' | 'm' | 'q' | 's' | 't' | 'v' |
                                                                                         'z' -->
          <xsl:variable name="state" as="item()+">
            <xsl:choose>
              <xsl:when test="$state[$p:lk] = (82,                                    (: 'Z' eof :)
                                               93)">                                <!-- 'z' eof -->
                <xsl:variable name="state" select="p:lookahead3(0, $input, $state)"/> <!-- END -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:when test="$state[$p:lk] = (242,                                   (: 'Z' wsp :)
                                               594,                                   (: 'Z' 'Z' :)
                                               946,                                   (: 'Z' 'z' :)
                                               253,                                   (: 'z' wsp :)
                                               605,                                   (: 'z' 'Z' :)
                                               957)">                               <!-- 'z' 'z' -->
                <xsl:variable name="state" select="p:lookahead3(16, $input, $state)"/> <!-- eof | wsp | 'A' | 'B' | 'C' | 'H' | 'L' | 'M' | 'Q' | 'S' | 'T' |
                                                                                            'V' | 'Z' | 'a' | 'b' | 'c' | 'h' | 'l' | 'm' | 'q' | 's' | 't' |
                                                                                            'v' | 'z' -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:when test="$state[$p:lk] = (274,                                   (: 'Z' 'A' :)
                                               306,                                   (: 'Z' 'B' :)
                                               626,                                   (: 'Z' 'a' :)
                                               658,                                   (: 'Z' 'b' :)
                                               285,                                   (: 'z' 'A' :)
                                               317,                                   (: 'z' 'B' :)
                                               637,                                   (: 'z' 'a' :)
                                               669)">                               <!-- 'z' 'b' -->
                <xsl:variable name="state" select="p:lookahead3(7, $input, $state)"/> <!-- number | wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:when test="$state[$p:lk] = (370,                                   (: 'Z' 'H' :)
                                               434,                                   (: 'Z' 'M' :)
                                               562,                                   (: 'Z' 'V' :)
                                               722,                                   (: 'Z' 'h' :)
                                               786,                                   (: 'Z' 'm' :)
                                               914,                                   (: 'Z' 'v' :)
                                               381,                                   (: 'z' 'H' :)
                                               445,                                   (: 'z' 'M' :)
                                               573,                                   (: 'z' 'V' :)
                                               733,                                   (: 'z' 'h' :)
                                               797,                                   (: 'z' 'm' :)
                                               925)">                               <!-- 'z' 'v' -->
                <xsl:variable name="state" select="p:lookahead3(11, $input, $state)"/> <!-- sign | number | wsp -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:when test="$state[$p:lk] = (338,                                   (: 'Z' 'C' :)
                                               402,                                   (: 'Z' 'L' :)
                                               466,                                   (: 'Z' 'Q' :)
                                               498,                                   (: 'Z' 'S' :)
                                               530,                                   (: 'Z' 'T' :)
                                               690,                                   (: 'Z' 'c' :)
                                               754,                                   (: 'Z' 'l' :)
                                               818,                                   (: 'Z' 'q' :)
                                               850,                                   (: 'Z' 's' :)
                                               882,                                   (: 'Z' 't' :)
                                               349,                                   (: 'z' 'C' :)
                                               413,                                   (: 'z' 'L' :)
                                               477,                                   (: 'z' 'Q' :)
                                               509,                                   (: 'z' 'S' :)
                                               541,                                   (: 'z' 'T' :)
                                               701,                                   (: 'z' 'c' :)
                                               765,                                   (: 'z' 'l' :)
                                               829,                                   (: 'z' 'q' :)
                                               861,                                   (: 'z' 's' :)
                                               893)">                               <!-- 'z' 't' -->
                <xsl:variable name="state" select="p:lookahead3(14, $input, $state)"/> <!-- sign | number | wsp | 'Z' | 'z' -->
                <xsl:sequence select="$state"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:sequence select="$state"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state[$p:l1], subsequence($state, $p:lk + 1)"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:lk] != 2                                            (: eof :)
                    and $state[$p:lk] != 8                                            (: 'A' :)
                    and $state[$p:lk] != 9                                            (: 'B' :)
                    and $state[$p:lk] != 10                                           (: 'C' :)
                    and $state[$p:lk] != 11                                           (: 'H' :)
                    and $state[$p:lk] != 12                                           (: 'L' :)
                    and $state[$p:lk] != 13                                           (: 'M' :)
                    and $state[$p:lk] != 14                                           (: 'Q' :)
                    and $state[$p:lk] != 15                                           (: 'S' :)
                    and $state[$p:lk] != 16                                           (: 'T' :)
                    and $state[$p:lk] != 17                                           (: 'V' :)
                    and $state[$p:lk] != 19                                           (: 'a' :)
                    and $state[$p:lk] != 20                                           (: 'b' :)
                    and $state[$p:lk] != 21                                           (: 'c' :)
                    and $state[$p:lk] != 22                                           (: 'h' :)
                    and $state[$p:lk] != 23                                           (: 'l' :)
                    and $state[$p:lk] != 24                                           (: 'm' :)
                    and $state[$p:lk] != 25                                           (: 'q' :)
                    and $state[$p:lk] != 26                                           (: 's' :)
                    and $state[$p:lk] != 27                                           (: 't' :)
                    and $state[$p:lk] != 28">                                       <!-- 'v' -->
          <xsl:variable name="state" select="p:memoized($state, 0)"/>
          <xsl:choose>
            <xsl:when test="$state[$p:lk] != 0">
              <xsl:sequence select="$state"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:variable name="backtrack" select="$state"/>
              <xsl:variable name="state" select="p:strip-result($state)"/>
              <xsl:variable name="state" select="p:try-closepath($input, $state)"/>
              <xsl:choose>
                <xsl:when test="not($state[$p:error])">
                  <xsl:sequence select="p:memoize($backtrack, $state, -1, 0)"/>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:sequence select="p:memoize($backtrack, $state, -2, 0)"/>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:lk] = -1">
          <xsl:variable name="state" select="p:parse-closepath($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'moveto', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Parse the 1st loop of production svg_path (zero or more). Use
   ! tail recursion for iteratively updating the lexer state.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-svg_path-1">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:choose>
      <xsl:when test="$state[$p:error]">
        <xsl:sequence select="$state"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="state" select="p:lookahead1(13, $input, $state)"/>      <!-- eof | wsp | 'M' | 'm' -->
        <xsl:choose>
          <xsl:when test="$state[$p:l1] != 7">                                      <!-- wsp -->
            <xsl:sequence select="$state"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:variable name="state" select="p:consume(7, $input, $state)"/>      <!-- wsp -->
            <xsl:sequence select="p:parse-svg_path-1($input, $state)"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

  <!--~
   ! Parse the 2nd loop of production svg_path (zero or more). Use
   ! tail recursion for iteratively updating the lexer state.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-svg_path-2">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:choose>
      <xsl:when test="$state[$p:error]">
        <xsl:sequence select="$state"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="state" select="p:lookahead1(15, $input, $state)"/>      <!-- eof | 'A' | 'B' | 'C' | 'H' | 'L' | 'M' | 'Q' | 'S' | 'T' | 'V' | 'Z' |
                                                                                         'a' | 'b' | 'c' | 'h' | 'l' | 'm' | 'q' | 's' | 't' | 'v' | 'z' -->
        <xsl:choose>
          <xsl:when test="$state[$p:l1] = 2">                                       <!-- eof -->
            <xsl:sequence select="$state"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:variable name="state" select="p:parse-drawto_command($input, $state)"/>
            <xsl:sequence select="p:parse-svg_path-2($input, $state)"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

  <!--~
   ! Parse svg_path.
   !
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:parse-svg_path" as="item()+">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="count" select="count($state)"/>
    <xsl:variable name="begin" select="$state[$p:e0]"/>
    <xsl:variable name="state" select="p:parse-svg_path-1($input, $state)"/>
    <xsl:variable name="state" as="item()+">
      <xsl:choose>
        <xsl:when test="$state[$p:error]">
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:when test="$state[$p:l1] != 2">                                        <!-- eof -->
          <xsl:variable name="state" select="p:parse-moveto($input, $state)"/>
          <xsl:variable name="state" select="p:parse-svg_path-2($input, $state)"/>
          <xsl:sequence select="$state"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:sequence select="$state"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="state" select="p:consume(2, $input, $state)"/>              <!-- eof -->
    <xsl:variable name="end" select="$state[$p:e0]"/>
    <xsl:sequence select="p:reduce($state, 'svg_path', $count, $begin, $end)"/>
  </xsl:function>

  <!--~
   ! Create a textual error message from a parsing error.
   !
   ! @param $input the input string.
   ! @param $error the parsing error descriptor.
   ! @return the error message.
  -->
  <xsl:function name="p:error-message" as="xs:string">
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="error" as="element(error)"/>

    <xsl:variable name="begin" select="xs:integer($error/@b)"/>
    <xsl:variable name="context" select="string-to-codepoints(substring($input, 1, $begin - 1))"/>
    <xsl:variable name="linefeeds" select="index-of($context, 10)"/>
    <xsl:variable name="line" select="count($linefeeds) + 1"/>
    <xsl:variable name="column" select="($begin - $linefeeds[last()], $begin)[1]"/>
    <xsl:variable name="expected" select="if ($error/@x) then () else p:expected-token-set($error/@s)"/>
    <xsl:sequence select="
      string-join
      (
        (
          if ($error/@o) then
            ('syntax error, found ', $p:TOKEN[$error/@o + 1])
          else
            'lexical analysis failed',
          '&#10;while expecting ',
          if ($error/@x) then
            $p:TOKEN[$error/@x + 1]
          else
          (
            '['[exists($expected[2])],
            string-join($expected, ', '),
            ']'[exists($expected[2])]
          ),
          '&#10;',
          if ($error/@o or $error/@e = $begin) then
            ()
          else
            ('after successfully scanning ', string($error/@e - $begin), ' characters beginning '),
          'at line ', string($line), ', column ', string($column), ':&#10;',
          '...', substring($input, $begin, 64), '...'
        ),
        ''
      )
    "/>
  </xsl:function>

  <!--~
   ! Consume one token, i.e. compare lookahead token 1 with expected
   ! token and in case of a match, shift lookahead tokens down such that
   ! l1 becomes the current token, and higher lookahead tokens move down.
   ! When lookahead token 1 does not match the expected token, raise an
   ! error by saving the expected token code in the error field of the
   ! lexer state.
   !
   ! @param $code the expected token.
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:consume" as="item()+">
    <xsl:param name="code" as="xs:integer"/>
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:choose>
      <xsl:when test="$state[$p:error]">
        <xsl:sequence select="$state"/>
      </xsl:when>
      <xsl:when test="$state[$p:l1] eq $code">
        <xsl:variable name="begin" select="$state[$p:e0]"/>
        <xsl:variable name="end" select="$state[$p:b1]"/>
        <xsl:variable name="whitespace">
          <xsl:if test="$begin ne $end">
            <xsl:value-of select="substring($input, $begin, $end - $begin)"/>
          </xsl:if>
        </xsl:variable>
        <xsl:variable name="token" select="$p:TOKEN[1 + $state[$p:l1]]"/>
        <xsl:variable name="name" select="if (starts-with($token, &quot;'&quot;)) then 'TOKEN' else $token"/>
        <xsl:variable name="begin" select="$state[$p:b1]"/>
        <xsl:variable name="end" select="$state[$p:e1]"/>
        <xsl:variable name="node">
          <xsl:element name="{$name}">
            <xsl:sequence select="substring($input, $begin, $end - $begin)"/>
          </xsl:element>
        </xsl:variable>
        <xsl:sequence select="
          subsequence($state, $p:l1, 9),
          0, 0, 0,
          subsequence($state, 13),
          $whitespace/node(),
          $node/node()
        "/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="error">
          <xsl:element name="error">
            <xsl:choose>
              <xsl:when test="$state[$p:e1] &lt; $state[$p:memo]/@e">
                <xsl:sequence select="$state[$p:memo]/@*"/>
              </xsl:when>
              <xsl:otherwise>
              <xsl:attribute name="b" select="$state[$p:b1]"/>
              <xsl:attribute name="e" select="$state[$p:e1]"/>
              <xsl:choose>
                <xsl:when test="$state[$p:l1] lt 0">
                  <xsl:attribute name="s" select="- $state[$p:l1]"/>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:attribute name="o" select="$state[$p:l1]"/>
                  <xsl:attribute name="x" select="$code"/>
                </xsl:otherwise>
              </xsl:choose>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:element>
        </xsl:variable>
        <xsl:sequence select="
          subsequence($state, 1, $p:error - 1),
          $error/node(),
          subsequence($state, $p:error + 1)
        "/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

  <!--~
   ! Consume one token, i.e. compare lookahead token 1 with expected
   ! token and in case of a match, shift lookahead tokens down such that
   ! l1 becomes the current token, and higher lookahead tokens move down.
   ! When lookahead token 1 does not match the expected token, raise an
   ! error by saving the expected token code in the error field of the
   ! lexer state. In contrast to p:consume, do not create any output.
   !
   ! @param $code the expected token.
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result.
   ! @return the updated state.
  -->
  <xsl:function name="p:consumeT" as="item()+">
    <xsl:param name="code" as="xs:integer"/>
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:choose>
      <xsl:when test="$state[$p:error]">
        <xsl:sequence select="$state"/>
      </xsl:when>
      <xsl:when test="$state[$p:l1] eq $code">
        <xsl:sequence select="
          subsequence($state, $p:l1, 9),
          0, 0, 0,
          subsequence($state, 13)
        "/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="error">
          <xsl:element name="error">
            <xsl:choose>
              <xsl:when test="$state[$p:e1] &lt; $state[$p:memo]/@e">
                <xsl:sequence select="$state[$p:memo]/@*"/>
              </xsl:when>
              <xsl:otherwise>
              <xsl:attribute name="b" select="$state[$p:b1]"/>
              <xsl:attribute name="e" select="$state[$p:e1]"/>
              <xsl:choose>
                <xsl:when test="$state[$p:l1] lt 0">
                  <xsl:attribute name="s" select="- $state[$p:l1]"/>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:attribute name="o" select="$state[$p:l1]"/>
                  <xsl:attribute name="x" select="$code"/>
                </xsl:otherwise>
              </xsl:choose>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:element>
        </xsl:variable>
        <xsl:sequence select="
          subsequence($state, 1, $p:error - 1),
          $error/node(),
          subsequence($state, $p:error + 1)
        "/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

  <!--~
   ! Lookahead one token on level 1.
   !
   ! @param $set the code of the DFA entry state for the set of valid tokens.
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result stack.
   ! @return the updated state.
  -->
  <xsl:function name="p:lookahead1" as="item()+">
    <xsl:param name="set" as="xs:integer"/>
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:choose>
      <xsl:when test="$state[$p:l1] ne 0">
        <xsl:sequence select="$state"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="match" select="
          p:match($input, $state[$p:e0], $set),
          0, 0, 0
        "/>
        <xsl:sequence select="
          $match[1],
          subsequence($state, $p:b0, 2),
          $match,
          subsequence($state, 10)
        "/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

  <!--~
   ! Lookahead one token on level 2.
   !
   ! @param $set the code of the DFA entry state for the set of valid tokens.
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result stack.
   ! @return the updated state.
  -->
  <xsl:function name="p:lookahead2" as="item()+">
    <xsl:param name="set" as="xs:integer"/>
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="match" select="
      if ($state[$p:l2] ne 0) then
        subsequence($state, $p:l2, 6)
      else
      (
        p:match($input, $state[$p:e1], $set),
        0, 0, 0
      )
    "/>
    <xsl:sequence select="
      $match[1] * 32 + $state[$p:l1],
      subsequence($state, $p:b0, 5),
      $match,
      subsequence($state, 13)
    "/>
  </xsl:function>

  <!--~
   ! Lookahead one token on level 3.
   !
   ! @param $set the code of the DFA entry state for the set of valid tokens.
   ! @param $input the input string.
   ! @param $state lexer state, error indicator, and result stack.
   ! @return the updated state.
  -->
  <xsl:function name="p:lookahead3" as="item()+">
    <xsl:param name="set" as="xs:integer"/>
    <xsl:param name="input" as="xs:string"/>
    <xsl:param name="state" as="item()+"/>

    <xsl:variable name="match" select="
      if ($state[$p:l3] ne 0) then
        subsequence($state, $p:l3, 3)
      else
        p:match($input, $state[$p:e2], $set)
    "/>
    <xsl:sequence select="
      $match[1] * 1024 + $state[$p:lk],
      subsequence($state, $p:b0, 8),
      $match,
      subsequence($state, 13)
    "/>
  </xsl:function>

  <!--~
   ! Reduce the result stack, creating a nonterminal element. Pop
   ! $count elements off the stack, wrap them in a new element
   ! named $name, and push the new element.
   !
   ! @param $state lexer state, error indicator, and result.
   ! @param $name the name of the result node.
   ! @param $count the number of child nodes.
   ! @param $begin the input index where the nonterminal begins.
   ! @param $end the input index where the nonterminal ends.
   ! @return the updated state.
  -->
  <xsl:function name="p:reduce" as="item()+">
    <xsl:param name="state" as="item()+"/>
    <xsl:param name="name" as="xs:string"/>
    <xsl:param name="count" as="xs:integer"/>
    <xsl:param name="begin" as="xs:integer"/>
    <xsl:param name="end" as="xs:integer"/>

    <xsl:variable name="node">
      <xsl:element name="{$name}">
        <xsl:sequence select="subsequence($state, $count + 1)"/>
      </xsl:element>
    </xsl:variable>
    <xsl:sequence select="subsequence($state, 1, $count), $node/node()"/>
  </xsl:function>

  <!--~
   ! Strip result from lexer state, in order to avoid carrying it while
   ! backtracking.
   !
   ! @param $state the lexer state after an alternative failed.
   ! @return the updated state.
  -->
  <xsl:function name="p:strip-result" as="item()+">
    <xsl:param name="state" as="item()+"/>

    <xsl:sequence select="subsequence($state, 1, $p:memo)"/>
  </xsl:function>

  <!--~
   ! Memoize the backtracking result that was computed at decision point
   ! $i for input position $state[$p:e0].
   !
   ! @param $backtrack the lexer state before backtracking started.
   ! @param $state the lexer state after successfully trying an alternative.
   ! @param $v the id of the successful alternative.
   ! @param $i the decision point id.
   ! @return the updated state.
  -->
  <xsl:function name="p:memoize" as="item()+">
    <xsl:param name="backtrack" as="item()+"/>
    <xsl:param name="state" as="item()+"/>
    <xsl:param name="v" as="xs:integer"/>
    <xsl:param name="i" as="xs:integer"/>

    <xsl:variable name="memo">
      <xsl:element name="memo">
        <xsl:variable name="errors" select="($state[$p:memo], $state[$p:error])[.]"/>
        <xsl:sequence select="$errors[@e = max($errors/xs:integer(@e))][last()]/@*, $state[$p:memo]/value"/>
        <xsl:element name="value">
          <xsl:attribute name="key" select="$backtrack[$p:e0] * 16 + $i"/>
          <xsl:sequence select="$v"/>
        </xsl:element>
      </xsl:element>
    </xsl:variable>
    <xsl:sequence select="
      $v,
      subsequence($backtrack, $p:b0, $p:memo - $p:b0),
      $memo/node(),
      subsequence($backtrack, $p:memo + 1)
    "/>
  </xsl:function>

  <!--~
   ! Retrieve memoized backtracking result for decision point $i
   ! and input position $state[$p:e0] into $state[$p:lk].
   !
   ! @param $state lexer state, error indicator, and result.
   ! @param $i the decision point id.
   ! @return the updated state.
  -->
  <xsl:function name="p:memoized" as="item()+">
    <xsl:param name="state" as="item()+"/>
    <xsl:param name="i" as="xs:integer"/>

    <xsl:variable name="value" select="data($state[$p:memo]/value[@key = $state[$p:e0] * 16 + $i])"/>
    <xsl:sequence select="
      if ($value) then $value else 0,
      subsequence($state, $p:lk + 1)
    "/>
  </xsl:function>

  <!--~
   ! Parse start symbol svg_path from given string.
   !
   ! @param $s the string to be parsed.
   ! @return the result as generated by parser actions.
  -->
  <xsl:function name="p:parse-svg_path" as="item()*">
    <xsl:param name="s" as="xs:string"/>

    <xsl:variable name="memo">
      <xsl:element name="memo"/>
    </xsl:variable>
    <xsl:variable name="state" select="0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, false(), $memo/node()"/>
    <xsl:variable name="state" select="p:parse-svg_path($s, $state)"/>
    <xsl:variable name="error" select="$state[$p:error]"/>
    <xsl:choose>
      <xsl:when test="$error">
        <xsl:variable name="ERROR">
          <xsl:element name="ERROR">
            <xsl:sequence select="$error/@*, p:error-message($s, $error)"/>
          </xsl:element>
        </xsl:variable>
        <xsl:sequence select="$ERROR/node()"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:sequence select="subsequence($state, $p:result)"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

</xsl:stylesheet>