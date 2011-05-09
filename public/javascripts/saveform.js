jQuery(function(jQuery) {
  jQuery("form").autosave({
    callbacks: {
      trigger: ["change", function() {
        var self = this;

        jQuery("[name=save]").click(function() {
          self.save();
        });
      }]
    }
  });
});
