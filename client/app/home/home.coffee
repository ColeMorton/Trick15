'use strict'

angular.module 'wildfireApp'
.config ($stateProvider) ->
  $stateProvider.state 'home',
    url: '/home/:id'
    templateUrl: 'app/home/home.html'
    controller: 'HomeCtrl'
