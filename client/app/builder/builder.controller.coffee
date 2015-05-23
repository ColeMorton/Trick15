'use strict'

angular.module 'wildfireApp'

.constant "STANCE",
  FRONTSIDE : 1
  BACKSIDE : 2

.factory "ComboClass", ->
  ComboClass = ->
    @tricks = []
    @rotation = 0
    @stance = null
    return

  ComboClass::setStanceFrontside = ->
    @stance = 1
    @tricks = []

  ComboClass::setStanceBackside = ->
    @stance = 2
    @tricks = []

  ComboClass::addRotation = (trick) ->
    @rotation += parseInt trick.name if trick.type == "Rotation"
    @rotation += 180 if trick.name == "Shuriken" || trick.name == "Katana" || trick.name == "Skip"

  ComboClass::removeRotation = (trick) ->
    @rotation -= parseInt trick.name if trick.type == "Rotation"
    @rotation -= 180 if trick.name == "Shuriken" || trick.name == "Katana"

  ComboClass::addTrick = (trick) ->
    @addRotation trick
    @tricks.push trick

  ComboClass::removeTrick = (index) ->
    return false if @isEmpty()
    @removeRotation @tricks[index]
    @tricks.splice index, 1

  ComboClass::isFrontside = ->
    return @rotation == 0 || @rotation % 360 == 0 if @stance == 1
    return @rotation % 360 == 180 if @stance == 2

  ComboClass::isBackside = ->
    return @rotation == 0 || @rotation % 360 == 0 if @stance == 2
    return @rotation % 360 == 180 if @stance == 1

  ComboClass::initialStance = ->
    return "FS" if @stance == 1
    return "BS" if @stance == 2
    null

  ComboClass::currentStance = ->
    return 1 if @isFrontside()
    return 2 if @isBackside()

  ComboClass::isEmpty = ->
    @tricks.length == 0

  ComboClass::tricksTotal = ->
    @tricks.length

  ComboClass::lastTrick = ->
    return null if @isEmpty()
    @tricks[@tricksTotal() - 1]

  ComboClass::acceptsInitial = ->
    return true if @isEmpty()
    @lastTrick().type == "Kick" ||
    @lastTrick().type == "Rotation"

  ComboClass::acceptsRotation = ->
    return true if @isEmpty()
    @lastTrick().type == "Initial" ||
    @lastTrick().type == "Kick" ||
    @lastTrick().type == "Hyper"

  ComboClass::acceptsKick = ->
    return false if @isEmpty()
    @lastTrick().type == "Rotation"

  ComboClass::acceptsTransition = ->
    return false if @isEmpty()
    @lastTrick().type == "Rotation"

  return ComboClass

.controller 'BuilderCtrl', ($scope, $http, ComboClass) ->
  $scope.combo = new ComboClass
  $scope.combo.setStanceFrontside()
  $scope.specific = null

  $http.get('/api/tricktionary').success (tricktionary) ->
    console.log tricktionary
    $scope.kicks = _.where tricktionary, { type: "Kick" }
    $scope.initials = _.where tricktionary, { type: "Initial" }
    $scope.transitions = _.where tricktionary, { type: "Transition" }
    $scope.rotations = _.where tricktionary, { type: "Rotation" }
    $scope.hypers = _.where tricktionary, { type: "Hyper" }

  $scope.removeTrick = (index) ->
    $scope.combo.removeTrick index

  $scope.trickSelected = (trick) ->
    $scope.combo.addTrick trick

  $scope.addKick = ->
    $scope.specific = "Kick"

  $scope.initialStance = ->
    $scope.combo.initialStance()

  $scope.currentStance = ->
    return "Frontside" if $scope.combo.isFrontside()
    return "Backside" if $scope.combo.isBackside()

  $scope.showSelectStance = ->
    $scope.combo.isEmpty()

  $scope.showSelectSpecific = ->
    $scope.specific?

  $scope.setStanceFrontside = ->
    $scope.combo.setStanceFrontside()

  $scope.setStanceBackside = ->
    $scope.combo.setStanceBackside()

  $scope.showCombo = ->
    !$scope.combo.isEmpty()

  $scope.showInitials = ->
    $scope.combo.acceptsInitial() || $scope.specific == "Initial"

  $scope.showKicks = ->
    $scope.combo.acceptsKick() || $scope.specific == "Kick"

  $scope.showTransitions = ->
    $scope.combo.acceptsTransition() || $scope.specific == "Transition"

  $scope.showRotations = ->
    $scope.combo.acceptsRotation() || $scope.specific == "Rotation"

  $scope.showHypers = ->
    !$scope.specific? || $scope.specific == "Hyper"

  $scope.showTrick = (trick) ->
    !trick.requiresStance || trick.requiresStance == $scope.combo.currentStance()
