'use strict'

angular.module 'wildfireApp'
.config ($stateProvider) ->
  $stateProvider.state 'trick',
    url: '/trick/:id'
    templateUrl: 'app/trick/trick.html'
    controller: 'TrickCtrl'
