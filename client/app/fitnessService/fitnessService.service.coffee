'use strict'

angular.module 'wildfireApp'
.service 'fitnessService', ($timeout) ->
  class Fitness

    FITNESS_DEGEN_TIME = 14400
    MINUTE = 60000
    SECOND = 1000
    MAX_FITNESS_ADDITION = 15
    MIN_FITNESS = 80

    constructor: (@tricker) ->
      # console.log "Fitness"
      # console.log @tricker

      # @tricker.addFitness = addFitness
      # @tricker.removeFitness = removeFitness
      # @tricker.getInjury = getInjury

      # subtractOfflineFitness @tricker

    secondTick: ->
      console.log "tick......."
