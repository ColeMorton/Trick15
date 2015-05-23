'use strict'

describe 'Controller: StyleCtrl', ->

  # load the controller's module
  beforeEach module 'wildfireApp'
  StyleCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    StyleCtrl = $controller 'StyleCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
