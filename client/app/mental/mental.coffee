'use strict'

angular.module 'wildfireApp'
.config ($stateProvider) ->
  $stateProvider.state 'mental',
    url: '/mental/:id'
    templateUrl: 'app/mental/mental.html'
    controller: 'MentalCtrl'
