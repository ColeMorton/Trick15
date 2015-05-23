'use strict'

angular.module 'wildfireApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'btford.socket-io',
  'ui.router',
  'ng-context-menu'
]
.config ($stateProvider, $urlRouterProvider, $locationProvider) ->
  $urlRouterProvider
  .otherwise '/'

  $locationProvider.html5Mode true

.run ($rootScope, $timeout) ->
  SECOND = 1000
  mySecondTicker = null

  secondTicker = ->
    $rootScope.$broadcast "event:secondTick"
    mySecondTicker = $timeout(secondTicker, SECOND)

  secondTicker()

