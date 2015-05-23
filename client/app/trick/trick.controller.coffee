'use strict'

angular.module 'wildfireApp'
.controller 'TrickCtrl', ($scope, $http, $stateParams) ->

  $http.get('/api/tricks/' + $stateParams.id).success (trick) ->
    $scope.trick = trick

    $http.get('/api/trickers/' + trick.tricker_id).success (tricker) ->
      $scope.tricker = tricker

