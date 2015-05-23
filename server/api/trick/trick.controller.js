'use strict';

var _ = require('lodash');
var Trick = require('./trick.model');

// Get list of tricks
exports.index = function(req, res) {
  Trick.find(function (err, tricks) {
    if(err) { return handleError(res, err); }
    return res.json(200, tricks);
  });
};

// Get list of tricks
exports.ofTricker = function(req, res) {
  Trick.find( { tricker_id: req.params.id } ).find(function (err, tricks) {
    if(err) { return handleError(res, err); }
    return res.json(200, tricks);
  });
};

// Get a single trick
exports.show = function(req, res) {
  Trick.findById(req.params.id, function (err, trick) {
    if(err) { return handleError(res, err); }
    if(!trick) { return res.send(404); }
    return res.json(trick);
  });
};

// Creates a new trick in the DB.
exports.create = function(req, res) {
  Trick.create(req.body, function(err, trick) {
    if(err) { return handleError(res, err); }
    return res.json(201, trick);
  });
};

// Updates an existing trick in the DB.
exports.update = function(req, res) {
  if(req.body._id) { delete req.body._id; }
  Trick.findById(req.params.id, function (err, trick) {
    if (err) { return handleError(res, err); }
    if(!trick) { return res.send(404); }
    var updated = _.merge(trick, req.body);
    updated.save(function (err) {
      if (err) { return handleError(res, err); }
      return res.json(200, trick);
    });
  });
};

// Deletes a trick from the DB.
exports.destroy = function(req, res) {
  Trick.findById(req.params.id, function (err, trick) {
    if(err) { return handleError(res, err); }
    if(!trick) { return res.send(404); }
    trick.remove(function(err) {
      if(err) { return handleError(res, err); }
      return res.send(204);
    });
  });
};

function handleError(res, err) {
  return res.send(500, err);
}
