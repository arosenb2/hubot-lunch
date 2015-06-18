chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'lunch', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/lunch')(@robot)

  it 'registers a hear listener', ->
    expect(@robot.hear).to.have.been.calledWithMatch sinon.match (val) ->
      val.test /lunch/
