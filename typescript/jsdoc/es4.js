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

// Extra

// type cast syntax borrowed from Closure
// Without type cast, `one` would have an inferred literal type `1`. 
const one = genericFunction(/** @type {number} */(1))
// However, there is no `as const` assertion yet.
// https://github.com/Microsoft/TypeScript/issues/30445

/** @typedef {{x: number, y: number}} Pointer */
/** @type {Pointer} */
const typeAlias = {x: 0, y: 0}

/** 
 * @enum {function(number): number}
 */
const immutableObjectLiteral = {
    /** @type {function(number)} */
    succ: n => n + 1,
    /** @type {function(number)} */
    pred: n => n - 1
}