'use strict'

angular.module 'wildfireApp'
.controller 'StyleCtrl', ($scope) ->

  $http.get('/api/tricks/' + $stateParams.id).success (trick) ->
    $scope.trick = trick
    $scope.console = trick
