'use strict'

angular.module 'wildfireApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'builder',
    url: '/builder'
    templateUrl: 'app/builder/builder.html'
    controller: 'BuilderCtrl'
