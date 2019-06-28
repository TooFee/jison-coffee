import {
  lexRuleKey
  funcBody
  a
} from './utils'

import lexRules from './lexRules'
import operators from './operators'
import bnf from './bnf'

jisonConf = (conf) =>
  lex:
    rules: lexRules conf.lex.rules
  operators: operators conf.operators
  bnf: bnf conf.bnf

export {
  funcBody
  a
}

export default jisonConf
