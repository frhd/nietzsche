nietzsche = require '../lib/nietzsche.js'
should = require('should');

describe 'nietzsche', ->

  it 'should be undefined', ->
    should.not.exist( nietzsche.doNothing() )