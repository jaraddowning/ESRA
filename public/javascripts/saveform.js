jQuery(function($) {
  $("form").autosave({
    callbacks: {
      trigger: ["change", function() {
        var self = this;

        $("[name=save]").click(function() {
          self.save();
        });
      }]
    }
  });
});
