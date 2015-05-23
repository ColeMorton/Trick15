'use strict'

angular.module 'wildfireApp'
.controller 'SkillCtrl', ($scope) ->

  $http.get('/api/tricks/' + $stateParams.id).success (trick) ->
    $scope.trick = trick
    $scope.console = trick
