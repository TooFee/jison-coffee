import jisonConf, { a, funcBody} from '../../../src/index'

export default jisonConf
  lex:
    rules: [

      a /\s+/
      , "/* skip whitespace */"

      a /[0-9]+(?:\.[0-9]+)?\b/
      , => 'NUMBER'

      a /\*/
      , => '*'

      a /\//
      , => '/'

      a /-/
      , => '-'

      a /\+/
      , => '+'

      a /\^/
      , => '^'

      a /!/
      , => '!'

      a /%/
      , => '%'

      a /\(/
      , => '('

      a /\)/
      , => ')'

      a /PI\b/
      , => 'PI'

      a /E\b/
      , => 'E'

      a /$/
      , => 'EOF'

    ]
  operators:
    left: [
      a '+', '-'
      a '*', '/'
      a '^'
      'UMINUS'
    ]
    right: [
      '!'
      '%'
    ]
  bnf:
    expressions: [
      [
        "e EOF"
        funcBody =>
          if typeof console isnt 'undefined'
          then console.log $1
          else print $1
          $1
      ]
    ]
    e: [
      [
        => e + e
        => $$ = $1 + $3
      ]
      [
        => e - e
        => $$ = $1 - $3
      ]
      [
        => e * ej
        => $$ = $1 * $3
      ]
      [
        => e / e
        => $$ = $1 / $3
      ]
      [
        => e ^ e
        => $$ = Math.pow $1, $3
      ]
      [
        => - e
        => $$ = -$2
        prec: 'UMINUS'
      ]
      [
        '( e )'
        => $$ = $2
      ]
      [
        => NUMBER
        => $$ = Number yytext
      ]
      [
        => E
        => $$ = Math.E
      ]
      [
        => PI
        => $$ = Math.PI
      ]
    ]
