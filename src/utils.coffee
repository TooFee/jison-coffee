lexRuleKey = (re) =>
  re.toString()[1..-2]

funcBody = (fun) =>
  re = /(?<={).*?(?=}$)/
  fun.toString()
  .replace /\n/g, ''
  .match re
  .reduce(
    (r, c) => c
    ''
  )
  .trim()

a = (...args) => args

export {
  lexRuleKey
  funcBody
  a
}
