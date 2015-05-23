/**
 * Broadcast updates to client when the model changes
 */

'use strict';

var Trick = require('./trick.model');

exports.register = function(socket) {
  Trick.schema.post('save', function (doc) {
    onSave(socket, doc);
  });
  Trick.schema.post('remove', function (doc) {
    onRemove(socket, doc);
  });
}

function onSave(socket, doc, cb) {
  socket.emit('trick:save', doc);
}

function onRemove(socket, doc, cb) {
  socket.emit('trick:remove', doc);
}