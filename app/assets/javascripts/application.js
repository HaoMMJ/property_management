// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require bootstrap-datepicker

function objectifyForm(formArray) {//serialize data function
  var returnArray = {};
  for (var i = 0; i < formArray.length; i++){
    returnArray[formArray[i]['name']] = formArray[i]['value'];
  }
  return returnArray;
}

// Disable function
jQuery.fn.extend({
  disable: function(state) {
    return this.each(function() {
        this.disabled = state;
    });
  }
});

function windowOpen(caller, url, name, options, tab){
  if (!options) {
    var height = 620;
    var width = 1024;
    options = 'height=' + height + ',width=' + width;
  }
  if (window.popup == false) {
    options = "menubar=1,toolbar=1,status=1," + options
  }
  options = "scrollbars=1,resizable=1,"+ options;
  var w = window.emptyTab;
  if (w != null) {
    w.location.href = url;
  } else {
    w = window.open(url, '', options);
  }
  window.childWindow = w;
  var window_id = (new Date().getTime()) * 1000 + Math.floor(Math.random() * 1000);
  if (w) {
    w.name = window_id;
  }
  window.caller_for[window_id] = caller;
  window.emptyTab = null;
}

window.caller_for = {};
window.callback_for = {};

function findMiniSearchContainer($this) {
  var container = $this.closest(".MiniSearchContainer");
  return container;
}

function onMiniSearchButtonClick(self) {
  var opener_id = self.attr('opener_id');
  var items = self.attr('items');

  updateMiniSearchOpener(window, opener_id, items);
}

function updateMiniSearchOpener(win, opener_id, items) {
  var parent = win.opener;
  // var parentjQ = parent.$;
  // var caller = parent.caller_for[win.name];
  // var container = findMiniSearchContainer(parentjQ(caller));
  var callback = parent.document["callback_for_" + opener_id];
  if( callback ){
    callback(items);
  }
}

$(function () {
  $(".MiniSearchSelectButton").click(function(){
    onMiniSearchButtonClick($(this));
    window.close();
  });
});
