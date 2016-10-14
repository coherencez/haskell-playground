const requireH = require('require-haskell')
const haskellFunction = requireH('/haskell.hs')

console.log(haskellFunction)

// haskellFunction('hello', 'from', 'node', (err, result) => {
// 	console.log(err || result)
// })