#!/usr/bin/env coffee

fs = require 'fs'

parse_commented_json = (json_string) ->
  json_string = json_string.replace /^\s*\/\/.+$/gm, ''
  JSON.parse json_string

readFilePromised = (file) ->
  new Promise (fulfill, reject) ->
    fs.readFile file, (err, ret) ->
      if err != null
        reject err
      else
        fulfill ret



load_json = (json_file) ->
  json_buffer = null
  readFilePromised(json_file)
  .then((ret) ->
    json_buffer = ret
  )
  # `.then(JSON.parse)` is a shortcut for `.then((ret) -> JSON.parse(ret))`
  .then(JSON.parse)
  .catch((err) ->
    if err.code == 'ENOENT'
      {}
    else if err instanceof SyntaxError
      parse_commented_json json_buffer.toString()
    else
      console.error "When loading #{json_file}: #{err}."
  )
  # .catch((err) ->
  #   console.error "When loading #{json_file}: #{err}."
  # )


load_json('fixture.json').then((val) -> console.log val)

load_json('nonexist.json').then((val) -> console.log val)

load_json('commented.json').then((val) -> console.log val)

load_json('invalid.json').then((val) -> console.log val)
