nietzsche = require '../lib/nietzsche.js'
should = require('should');

describe 'nietzsche', ->
  
  beforeEach ->
    # Reload the module to reset any state changes
    delete require.cache[require.resolve('../lib/nietzsche.js')]
    nietzsche = require '../lib/nietzsche.js'

  it 'should be undefined', ->
    should.not.exist( nietzsche.doNothing() )

  describe 'existentialCrisis', ->
    it 'should throw an existential error', ->
      (-> nietzsche.existentialCrisis()).should.throw(/Existential Crisis:/)
    
    it 'should contain a philosophical question', ->
      try
        nietzsche.existentialCrisis()
      catch error
        error.message.should.match(/\?$/)

  describe 'godIsDead', ->
    it 'should return a boolean', ->
      nietzsche.godIsDead().should.be.type('boolean')
    
    it 'should return false on Sunday', ->
      # Mock Sunday
      originalGetDay = Date.prototype.getDay
      Date.prototype.getDay = -> 0
      nietzsche.godIsDead().should.be.false()
      Date.prototype.getDay = originalGetDay

  describe 'willToPower', ->
    it 'should return a success message', ->
      nietzsche.willToPower().should.equal('The will to power has been enacted!')
    
    it 'should make all other functions return "Power!"', ->
      # Create a fresh instance for this test
      delete require.cache[require.resolve('../lib/nietzsche.js')]
      isolatedNietzsche = require '../lib/nietzsche.js'
      
      isolatedNietzsche.willToPower()
      isolatedNietzsche.doNothing().should.equal('Power!')
      isolatedNietzsche.existentialCrisis().should.equal('Power!')
      isolatedNietzsche.godIsDead().should.equal('Power!')

  describe 'becomeWhoYouAre', ->
    it 'should return a string identity', ->
      identity = nietzsche.becomeWhoYouAre()
      identity.should.be.type('string')
      identity.length.should.be.above(0)
    
    it 'should return one of the predefined identities', ->
      identities = []
      for i in [0...20]
        identities.push(nietzsche.becomeWhoYouAre())
      
      # Check that we get some variety
      unique = [...new Set(identities)]
      unique.length.should.be.above(1)

  describe 'eternalReturn', ->
    it 'should eventually return a string', ->
      result = nietzsche.eternalReturn()
      result.should.equal('Even eternity has its limits...')
    
    it 'should handle recursion depth', ->
      result = nietzsche.eternalReturn(40)
      result.should.equal('Even eternity has its limits...')

  describe 'ubermensch', ->
    it 'should transform strings to uppercase with exclamation', ->
      nietzsche.ubermensch('hello').should.equal('HELLO!!!')
    
    it 'should multiply numbers by 9000', ->
      nietzsche.ubermensch(2).should.equal(18000)
    
    it 'should transform arrays recursively', ->
      result = nietzsche.ubermensch(['hello', 42])
      result.should.deepEqual(['HELLO!!!', 378000])
    
    it 'should transform objects with uppercase keys', ->
      result = nietzsche.ubermensch({name: 'friedrich', age: 44})
      result.should.deepEqual({NAME: 'FRIEDRICH!!!', AGE: 396000})
    
    it 'should return TRANSCENDED for null', ->
      nietzsche.ubermensch(null).should.equal('TRANSCENDED')
    
    it 'should return TRANSCENDED for undefined', ->
      nietzsche.ubermensch(undefined).should.equal('TRANSCENDED')