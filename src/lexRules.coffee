import {
  lexRuleKey
  funcBody
} from './utils'

export default (rulesConf) =>

  return [] unless Array.isArray rulesConf

  rulesConf.reduce (r, c) =>
    [
      r...
      c.reduce (_r, _c, _i) =>
        cur =
          if _i is 0
          then lexRuleKey _c
          else
            switch typeof _c 
              when 'string'
              then _c
              when 'function'
              then funcBody _c
              else _c
        [
          _r...
          cur
        ]
      , [
      ]
    ]
  , []
