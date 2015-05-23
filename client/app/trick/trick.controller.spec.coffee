'use strict'

describe 'Controller: TrickCtrl', ->

  # load the controller's module
  beforeEach module 'wildfireApp'
  TrickCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    TrickCtrl = $controller 'TrickCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
