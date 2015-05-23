'use strict'

describe 'Directive: cmBelt', ->

  # load the directive's module and view
  beforeEach module 'wildfireApp'
  beforeEach module 'app/cmBelt/cmBelt.html'
  element = undefined
  scope = undefined
  beforeEach inject ($rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<cm-belt></cm-belt>'
    element = $compile(element) scope
    scope.$apply()
    expect(element.text()).toBe 'this is the cmBelt directive'

