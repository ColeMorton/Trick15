'use strict'

angular.module 'wildfireApp'
.controller 'TrickersCtrl', ($scope, $http) ->
  $scope.trickers = []

  $http.get('/api/trickers').success (trickers) ->
    console.log trickers
    $scope.trickers = trickers

  $http.get('/api/tricks').success (tricks) ->
    console.log tricks
    $scope.tricks = tricks
