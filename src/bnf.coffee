import { funcBody } from './utils'

export default (bnfConf) =>

  (
    Object.keys bnfConf
  ).reduce (result, bnfKey) =>
    {
      result...
      [bnfKey]: bnfConf[bnfKey].reduce (r, c) =>
        [
          r...
          c.reduce (_r, _c, _i) =>
            [
              _r...
              if typeof _c is 'function'

                str = funcBody _c
                .replace 'return', ''

                str =
                  unless _i is 0
                  then str.replace(
                    'var $$;'
                    ''
                  )
                  else str.replace(
                    ';'
                    ''
                  )

                str = str.trim()

              else _c
            ]
          , []
        ]
      , []
    }
  , {}
