'use strict'

describe 'Controller: MentalCtrl', ->

  # load the controller's module
  beforeEach module 'wildfireApp'
  MentalCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MentalCtrl = $controller 'MentalCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
