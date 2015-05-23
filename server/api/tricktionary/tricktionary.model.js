'use strict';

var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

var TricktionarySchema = new Schema({
  name: String,
  type: String,
  shorthand: String,
  requiresStance: Number,
},
{
    toObject: { virtuals: true },
    toJSON: { virtuals: true }
});

TricktionarySchema.virtual('shortest').get(function () {
  return this.shorthand || this.name
});

module.exports = mongoose.model('Tricktionary', TricktionarySchema);
