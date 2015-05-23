'use strict'

describe 'Controller: SkillCtrl', ->

  # load the controller's module
  beforeEach module 'wildfireApp'
  SkillCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    SkillCtrl = $controller 'SkillCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
