'use strict';

var _ = require('lodash');
var Tricktionary = require('./tricktionary.model');

// Get tricktionary
exports.tricktionary = function(req, res) {
  Tricktionary.find(function (err, tricktionary) {
    if(err) { return handleError(res, err); }
    return res.json(200, tricktionary);
  });
};

function handleError(res, err) {
  return res.send(500, err);
}
