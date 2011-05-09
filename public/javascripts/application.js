// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

//Event.addBehavior({
//    "form.tcl select.tcl_tcap:change": function(ev) {
//         Hobo.ajaxRequest(window.location.href, ['level-menu'], {
//             params: Form.serializeElements([this]),
//             method: 'get',
//             spinnerNextTo: this,
//             message: 'Please wait...'
//         });
//     }
//});

var last_added;
var last_removed;
Program.addBehavior({
  '.funding07_sources:rapid:add' : function(ev) {
    last_added = ev.memo.element;
  },
  '.funding07_sources:rapid:remove' : function(ev) {
    if(!confirm("really?")) ev.stop();
  }
});
