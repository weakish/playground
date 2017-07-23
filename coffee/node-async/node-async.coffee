fs = require('fs')

readFilePromised = (file) ->
  new Promise((fulfill, reject) ->
    fs.readFile file, (err, ret) ->
      if err?
        reject err
      else
        fulfill ret
    )

load_json = (json_file) ->
  readFilePromised(json_file).then(JSON.parse).catch (err) ->
    val = undefined
    if err.code == 'ENOENT'
      return null
    else if err instanceof SyntaxError
      val = val.replace(/^\s*\/\/.*$/, '')
      return JSON.parse(val)
    else
      throw err
    return

load_json('fixture.json').then (val) ->
  console.log val
