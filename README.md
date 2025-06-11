# nietzsche
[![Build Status](https://secure.travis-ci.org/frhd/nietzsche.png)](http://travis-ci.org/frhd/nietzsche) [![npm version](https://badge.fury.io/js/nietzsche.svg)](https://badge.fury.io/js/nietzsche) [![Dependency Status](https://gemnasium.com/badges/github.com/frhd/nietzsche.svg)](https://gemnasium.com/github.com/frhd/nietzsche) [![Join the chat at https://gitter.im/frhd/nietzsche](https://badges.gitter.im/frhd/nietzsche.svg)](https://gitter.im/frhd/nietzsche?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

> "When you gaze long into npm, npm also gazes into you."

A philosophical Node.js module that transcends the boundaries of functionality and embraces the void.

## The Abyss of Installation

[![NPM](https://nodei.co/npm/nietzsche.png?downloads=true&downloadRank=true&stars=true)](https://nodei.co/npm/nietzsche/)

```bash
$ npm install nietzsche
```

## The Will to Code

```js
const nietzsche = require('nietzsche');

// Embrace the void
nietzsche.doNothing();

// Question your existence
try {
  nietzsche.existentialCrisis();
} catch (crisis) {
  console.log(crisis.message); // "Existential Crisis: Why do I exist?"
}

// Check divine status
console.log(nietzsche.godIsDead()); // true (except on Sundays)

// Assert dominance over your codebase
nietzsche.willToPower(); // All functions now return "Power!"

// Discover your true self
console.log(nietzsche.becomeWhoYouAre()); // "a JavaScript function pretending to be a philosopher"

// Experience eternal recursion
console.log(nietzsche.eternalReturn()); // "Even eternity has its limits..."

// Transform into the Übermensch
console.log(nietzsche.ubermensch('hello')); // "HELLO!!!"
console.log(nietzsche.ubermensch(42)); // 378000
```

## API: Beyond Good and Evil

### `doNothing()`
The original void. Does absolutely nothing, as promised.

### `existentialCrisis()`
Throws an existential error with a random philosophical question. Use when your code needs more meaning.

### `godIsDead()`
Returns `true` on most days, `false` on Sundays. Because even Nietzsche respects the Sabbath.

### `willToPower()`
Overwrites all other functions to return "Power!". Use with caution - there's no going back.

### `becomeWhoYouAre()`
Returns a randomly selected programming-themed identity crisis.

### `eternalReturn(depth)`
Recursively calls itself until reaching the limits of eternity (42 iterations).

### `ubermensch(input)`
Transforms any input into its superior form:
- Strings → UPPERCASE!!!
- Numbers → Multiplied by 9000
- Arrays → Recursively transformed
- Objects → Keys uppercased, values transformed
- null/undefined → "TRANSCENDED"

## Thus Spoke the Tests

```bash
$ npm test 
```

## Philosophy

This module is a testament to the absurdity of modern software development. In a world where packages exist for [left-padding strings](https://www.npmjs.com/package/left-pad) and [checking if a number is odd](https://www.npmjs.com/package/is-odd), we present a module that boldly does nothing - and then questions why it exists.

Remember: "That which does not kill your Node process makes it stronger."

## Dev - Test

```bash
$ npm test 
```


## License 

(The MIT License)

Copyright (c) 2016 frhd &lt;farhadino@gmail.com&gt;

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
