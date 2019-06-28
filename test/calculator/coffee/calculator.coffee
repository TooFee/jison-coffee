import { Parser } from 'jison'
import prettier from 'prettier'

import grammar from './grammar'

parser = new Parser grammar
parserSource = parser.generate()

console.log(
  prettier.format parserSource
  , parser: "babel"
)
