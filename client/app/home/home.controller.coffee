'use strict'

angular.module 'wildfireApp'
.controller 'HomeCtrl', ($scope, $http, $stateParams, fitnessService) ->
  $scope.message = 'Hello'
  $scope.console = 'I am the console \nNew Line'

  $scope.fitness = { rateOfDecrease: '30 minutes' }

  $http.get('/api/trickers/' + $stateParams.id).success (tricker) ->
    $scope.tricker = tricker

    $scope.fitness = new fitnessService tricker

  $http.get('/api/tricks/ofTricker/' + $stateParams.id).success (tricks) ->
    $scope.tricks = tricks

  $scope.$on "event:secondTick", -> $scope.fitness.secondTick()
