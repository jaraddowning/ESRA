// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

//Event.addBehavior({
//    "select.tcl_tcap:change": function(ev) {
//         Hobo.ajaxRequest(window.location.href, ['alevel-part'], {
//             params: Form.serialize(this.up('form')),
//             method: 'get',
//             spinnerNextTo: this,
//             message: 'Please wait...'
//         });
//     }
//});

var last_added;
var last_removed;
Event.addBehavior({
  '.disaster_declarations:rapid:add' : function(ev) {
    last_added = ev.memo.element;
  },
  '.disaster_declarations:rapid:remove' : function(ev) {
    if(!confirm("really?")) ev.stop();
  }
});
