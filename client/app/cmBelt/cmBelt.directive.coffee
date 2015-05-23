'use strict'

angular.module 'wildfireApp'
.directive 'cmBelt', ->
  templateUrl: 'app/cmBelt/cmBelt.html'
  restrict: 'E'
  scope: {
    color: "@"
  }
  link: (scope, element, attrs) ->
