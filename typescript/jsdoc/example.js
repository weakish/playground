'use strict'
/* adapted from https://www.v2ex.com/t/626139 */

/**
 * @template {string} T
 * @typedef {{name: T, type: string}} Foo
 */
/*
 * @template {string} T
 * @param {Foo<T>[]} arr
 * @return {Record<T, {}>} result
 */
/**
 * @template {string} T
 * @type {(arr: Foo<T>[]) => Record<T, {}>}
 */
function transform(arr) {
    return arr.map(item => item.name)
        .reduce((o, k) => (o[k] = {}, o), /** @type {Record<T, {}>} */({}))
}

/**
 * @type {Foo<'tom'>}
 */
const a = { name: 'tom', type: 'confirm' }
/**
 * @type {Foo<'jack'>}
 */
const b = { name: 'jack', type: 'confirm' }
const example = transform([/** @type {Foo<'tom'>} */ (a), /** @type {Foo<'jack'>} */ (b)])

console.log(example)