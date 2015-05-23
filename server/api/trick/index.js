'use strict';

var express = require('express');
var controller = require('./trick.controller');

var router = express.Router();

router.get('/', controller.index);
router.get('/ofTricker/:id', controller.ofTricker);
router.get('/:id', controller.show);
router.post('/', controller.create);
router.put('/:id', controller.update);
router.patch('/:id', controller.update);
router.delete('/:id', controller.destroy);

module.exports = router;
