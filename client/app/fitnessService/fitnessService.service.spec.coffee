'use strict'

describe 'Service: fitnessService', ->

  # load the service's module
  beforeEach module 'wildfireApp'

  # instantiate service
  fitnessService = undefined
  beforeEach inject (_fitnessService_) ->
    fitnessService = _fitnessService_

  it 'should do something', ->
    expect(!!fitnessService).toBe true
