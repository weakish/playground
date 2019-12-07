// Adapted from es4 working draft
// https://github.com/bkero/es4/blob/master/spec/working-drafts/type-system.pdf

'use strict'

/** @type {null} */
const nil = null

/** @type {string?} */
let nullable = null

/** @type {function(number, number): number} */
const functionType = (x, y) => x + y

/**
 * function.<T>(T): T
 * @type {<T>(x: T) => T}
 */
const genericFunction = (x) => x

/**
 * @type {{k: string}}
 */
const objectType = {k: "structural"}

/**
 * (string, number)
 * @type {string  | number}
 */
let unionType = 0

/**
 * [number]
 * @type {number[]}
 */
const arrayType = [1, 2, 3]

/**
 * @type {[string, number]}
 */
const tupleType = ["one", 1]

