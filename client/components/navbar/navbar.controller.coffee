'use strict'

angular.module 'wildfireApp'
.controller 'NavbarCtrl', ($scope, $location) ->
  $scope.menu = [
    { title: 'Main', link: '/' },
    { title: 'Trickers', link: '/trickers' },
    { title: 'Builder', link: '/builder' },
  ]
  $scope.isCollapsed = true

  $scope.isActive = (route) ->
    route is $location.path()
