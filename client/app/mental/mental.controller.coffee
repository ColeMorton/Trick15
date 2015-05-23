'use strict'

angular.module 'wildfireApp'
.controller 'MentalCtrl', ($scope, $stateParams, $http) ->

  $http.get('/api/tricks/' + $stateParams.id).success (trick) ->
    $scope.trick = trick
    $scope.console = trick
