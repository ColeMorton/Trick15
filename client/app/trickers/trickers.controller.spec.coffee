'use strict'

describe 'Controller: TrickersCtrl', ->

  # load the controller's module
  beforeEach module 'wildfireApp'
  TrickersCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    TrickersCtrl = $controller 'TrickersCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
