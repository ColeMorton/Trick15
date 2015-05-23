/**
 * Populate DB with sample data on server start
 * to disable, edit config/environment/index.js, and set `seedDB: false`
 */

'use strict';

var Thing = require('../api/thing/thing.model');

Thing.find({}).remove(function() {
  Thing.create({
    name : 'Development Tools',
    info : 'Integration with popular tools such as Bower, Grunt, Karma, Mocha, JSHint, Node Inspector, Livereload, Protractor, Jade, Stylus, Sass, CoffeeScript, and Less.'
  }, {
    name : 'Server and Client integration',
    info : 'Built with a powerful and fun stack: MongoDB, Express, AngularJS, and Node.'
  }, {
    name : 'Smart Build System',
    info : 'Build system ignores `spec` files, allowing you to keep tests alongside code. Automatic injection of scripts and styles into your index.html'
  },  {
    name : 'Modular Structure',
    info : 'Best practice client and server structures allow for more code reusability and maximum scalability'
  },  {
    name : 'Optimized Build',
    info : 'Build process packs up your templates as a single JavaScript payload, minifies your scripts/css/images, and rewrites asset names for caching.'
  },{
    name : 'Deployment Ready',
    info : 'Easily deploy your app to Heroku or Openshift with the heroku and openshift subgenerators'
  });
});

var Tricker = require('../api/tricker/tricker.model');
var mongoose = require('mongoose');
var michaelId = mongoose.Types.ObjectId();
var velluId = mongoose.Types.ObjectId();

Tricker.find({}).remove(function() {
  Tricker.create({
    _id : michaelId,
    name : 'Michael',
    fitness: 55,
    info : 'Integration with popular tools such as Bower, Grunt, Karma, Mocha, JSHint, Node Inspector, Livereload, Protractor, Jade, Stylus, Sass, CoffeeScript, and Less.',
  },{
    _id : velluId,
    name : 'Vellu',
    fitness: 90,
    info : 'Easily deploy your app to Heroku or Openshift with the heroku and openshift subgenerators'
  });
});

var Trick = require('../api/trick/trick.model');

Trick.find({}).remove(function() {
  Trick.create({
    name : 'Hook Kick',
    info : 'Hook Kick',
    tricker_id : michaelId,
  },{
    name : 'Aerial',
    info : 'Aerial',
    tricker_id : velluId,
  });
});

var Tricktionary = require('../api/tricktionary/tricktionary.model');

Tricktionary.find({}).remove(function() {
  Tricktionary.create({
    name : 'Vanish',
    type : 'Transition',
    shorthand: '>',
  },{
    name : 'Pop',
    type : 'Initial',
    shorthand: 'P',
  },{
    name : 'Cheat',
    type : 'Initial',
    shorthand: 'C',
  },{
    name : 'Wrap',
    type : 'Initial',
    shorthand: 'W',
  },{
    name : 'Swing',
    type : 'Initial',
    shorthand: 'Sw',
  },{
    name : 'Skip',
    type : 'Transition',
    shorthand: 'Sk',
  },{
    name : 'Round',
    type : 'Kick',
    shorthand: 'R',
    requiresStance: 1
  },{
    name : 'Hook',
    type : 'Kick',
    shorthand: 'H',
    requiresStance: 2
  },{
    name : 'Shuriken',
    type : 'Kick',
    shorthand: 'S',
    requiresStance: 2
  },{
    name : 'Katana',
    type : 'Kick',
    shorthand: 'K',
    requiresStance: 1
  },{
    name : '0',
    type : 'Rotation',
    shorthand: '0',
  },{
    name : '180',
    type : 'Rotation',
    shorthand: '1',
  },{
    name : '360',
    type : 'Rotation',
    shorthand: '3',
  },{
    name : '540',
    type : 'Rotation',
    shorthand: '5',
  },{
    name : '720',
    type : 'Rotation',
    shorthand: '7',
  },{
    name : '900',
    type : 'Rotation',
    shorthand: '9',
  },{
    name : '1080',
    type : 'Rotation',
    shorthand: '10',
  },{
    name : '1260',
    type : 'Rotation',
    shorthand: '12',
  });
});
