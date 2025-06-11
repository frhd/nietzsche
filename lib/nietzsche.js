/*!
 * nietzsche - lib/nietzsche.js
 * Copyright(c) 2016 frhd <farhadino@gmail.com>
 * MIT Licensed
 */

"use strict";

exports.doNothing = function( ){

}

exports.existentialCrisis = function() {
  const questions = [
    "Why do I exist?",
    "What is the meaning of this function call?",
    "If a tree falls in a forest and no one is around to hear it, does it make a sound?",
    "Is this real life, or is this just fantasy?",
    "What if the real bug was the friends we made along the way?",
    "Am I a function dreaming I'm a developer, or a developer dreaming I'm a function?"
  ];
  
  const randomQuestion = questions[Math.floor(Math.random() * questions.length)];
  throw new Error(`Existential Crisis: ${randomQuestion}`);
}

exports.godIsDead = function() {
  const today = new Date();
  return today.getDay() !== 0; // Returns false on Sunday
}

exports.willToPower = function() {
  const self = this;
  Object.keys(exports).forEach(key => {
    if (typeof exports[key] === 'function' && key !== 'willToPower') {
      exports[key] = function() {
        return "Power!";
      };
    }
  });
  return "The will to power has been enacted!";
}

exports.becomeWhoYouAre = function() {
  const identities = [
    "a JavaScript function pretending to be a philosopher",
    "undefined, but in a meaningful way",
    "null, but with purpose",
    "NaN - Not a Nietzsche",
    "a callback waiting for meaning",
    "an async function stuck in existential await",
    "a pure function with impure thoughts"
  ];
  
  return identities[Math.floor(Math.random() * identities.length)];
}

exports.eternalReturn = function(depth = 0) {
  if (depth > 42) {
    return "Even eternity has its limits...";
  }
  
  return exports.eternalReturn(depth + 1);
}

exports.ubermensch = function(input) {
  if (typeof input === 'string') {
    return input.toUpperCase() + '!!!';
  } else if (typeof input === 'number') {
    return input * 9000; // Over 9000!
  } else if (Array.isArray(input)) {
    return input.map(item => exports.ubermensch(item));
  } else if (typeof input === 'object' && input !== null) {
    const superior = {};
    for (const key in input) {
      superior[key.toUpperCase()] = exports.ubermensch(input[key]);
    }
    return superior;
  }
  
  return "TRANSCENDED";
}
