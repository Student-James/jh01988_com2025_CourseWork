// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//
//= require bootstrap-sprockets
//= require jquery3
//=require jquery_ujs
//= require activestorage
//= require turbolinks
//= require_tree .

function ValidateAlbum(){
  $('#album').validate({
    rules: {
      'album[artist]': {required: true},
      'album[title]': {required: true},
    },
    messages: {
      'album[artist]': {required: 'Every artist must have a name'},
      'album[title]': {required: 'Every album must have a title'},
    }
  });
}

function ValidateTrack(){
  $('#track').validate({
    rules: {
      'track[title]': {required: true},
    },
    messages: {
      'track[title]': {required: 'Every song must have a title'},
    }
  });
}

function ValidateReview(){
  $('#review').validate({
    rules: {
      'review[title]': {required: true},
      'review[reviewbody]': {required: true},
    },
    messages: {
      'review[title]': {required: 'Every review must have a title'},
      'review[reviewbody]': {required: 'You need to write a review'},

    }
  });
}

$(document).on(function(){
  if(document.getElementById('album')){
    ValidateAlbum();
  }
  if(document.getElementById('track')){
    ValidateAlbum();
  }
  if(document.getElementById('review')){
    ValidateReview();
  }
});

function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
