require.config({
    paths: {
        jquery: '../bower_components/jquery/jquery',
        bootstrapAffix: '../bower_components/sass-bootstrap/js/affix',
        bootstrapAlert: '../bower_components/sass-bootstrap/js/alert',
        bootstrapButton: '../bower_components/sass-bootstrap/js/button',
        bootstrapCarousel: '../bower_components/sass-bootstrap/js/carousel',
        bootstrapCollapse: '../bower_components/sass-bootstrap/js/collapse',
        bootstrapDropdown: '../bower_components/sass-bootstrap/js/dropdown',
        bootstrapPopover: '../bower_components/sass-bootstrap/js/popover',
        bootstrapScrollspy: '../bower_components/sass-bootstrap/js/scrollspy',
        bootstrapTab: '../bower_components/sass-bootstrap/js/tab',
        bootstrapTooltip: '../bower_components/sass-bootstrap/js/tooltip',
        bootstrapTransition: '../bower_components/sass-bootstrap/js/transition',
        async: '../bower_components/requirejs-plugins/src/async'
    },
    shim: {
        bootstrapAffix: {
            deps: ['jquery']
        },
        bootstrapAlert: {
            deps: ['jquery']
        },
        bootstrapButton: {
            deps: ['jquery']
        },
        bootstrapCarousel: {
            deps: ['jquery']
        },
        bootstrapCollapse: {
            deps: ['jquery']
        },
        bootstrapDropdown: {
            deps: ['jquery']
        },
        bootstrapPopover: {
            deps: ['jquery']
        },
        bootstrapScrollspy: {
            deps: ['jquery']
        },
        bootstrapTab: {
            deps: ['jquery']
        },
        bootstrapTooltip: {
            deps: ['jquery']
        },
        bootstrapTransition: {
            deps: ['jquery']
        },
        tinymap: {
            deps: ['jquery']
            // deps: ['jquery', ','async!http://maps.google.com/maps/api/js?sensor=false']
        }
    }
});

require([
    'jquery',
    'app',
    'bootstrapTab', 
    'bootstrapDropdown',
    'video',
    'tinymap'
    ], function ($, app) {
    'use strict';

    if($('#map').length>0){
        $('#map').tinyMap({
          center: {x: 22.274719000000001, y: 114.17359 },
          zoom: 18,
          mapTypeControl: false,
          navigationControl: false,
          // zoomControl: false,
          marker: [
            {addr: ['22.274719000000001', '114.17359'], text: '皇后大道東248號'}
          ]
        });
    }
    
    // use app here
    console.log(app);
    console.log('Running jQuery %s', $().jquery);
});
