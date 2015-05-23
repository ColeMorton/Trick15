'use strict'

angular.module 'wildfireApp'
.config ($stateProvider) ->
  $stateProvider.state 'style',
    url: '/style/:id'
    templateUrl: 'app/style/style.html'
    controller: 'StyleCtrl'
