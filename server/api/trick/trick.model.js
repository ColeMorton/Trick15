'use strict';

var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

var TrickSchema = new Schema({
  name: String,
  info: String,
  active: Boolean,
  tricker_id: String
});

module.exports = mongoose.model('Trick', TrickSchema);
