'use strict';

var express = require('express');
var controller = require('./tricktionary.controller');

var router = express.Router();

router.get('/', controller.tricktionary);

module.exports = router;
