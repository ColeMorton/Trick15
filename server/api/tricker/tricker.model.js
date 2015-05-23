'use strict';

var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

var TrickerSchema = new Schema({
  name: String,
  info: String,
  fitness: Number,
  active: Boolean
});

module.exports = mongoose.model('Tricker', TrickerSchema);
