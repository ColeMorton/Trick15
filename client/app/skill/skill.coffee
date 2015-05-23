'use strict'

angular.module 'wildfireApp'
.config ($stateProvider) ->
  $stateProvider.state 'skill',
    url: '/skill/:id'
    templateUrl: 'app/skill/skill.html'
    controller: 'SkillCtrl'
