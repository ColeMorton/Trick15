'use strict'

angular.module 'wildfireApp'
.config ($stateProvider) ->
  $stateProvider.state 'trickers',
    url: '/trickers'
    templateUrl: 'app/trickers/trickers.html'
    controller: 'TrickersCtrl'
