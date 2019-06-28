export default (confOperators) =>

  return [] if (
    Object.keys confOperators
  ).length is 0

  result = [
    'left'
    'right'
  ].reduce (r, c) =>
    [
      r...
      (
        confOperators[c].reduce (_r, _c) =>
          [
            _r...
            [
              c
              (
                if Array.isArray _c
                then _c
                else [_c]
              )...
            ]
          ]
        , [] if confOperators[c]?
      )...
    ]
  , []

  if result.length is 0
  then []
  else result
