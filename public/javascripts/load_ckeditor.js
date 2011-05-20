HoboCKEditor = {
  newEditor : function(elm, buttons) {
    if (elm.name != '') {
      oInstance = CKEDITOR.replace( elm.name ,
      { toolbar : HoboCKEditor.standardToolbarConfig || buttons,
        extraPlugins : 'autogrow' }
      );
      oInstance.setData( elm.value );
      extraPlugins : 'autogrow'
      oInstance.resetDirty();
    }
    return oInstance;
},
makeEditor : function(elm) {
    if (!elm.disabled && !elm.readOnly){
      HoboCKEditor.newEditor(elm);
    }
  },
standardToolbarConfig: [ ['DocProps','-','Preview','-'],
                    ['Cut','Copy','Paste','PasteText','PasteFromWord','-','Print','SpellChecker'],
                    ['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat'],
                    [],
                    '/',
                    ['Bold','Italic','Underline'],
                    ['NumberedList', 'BulletedList','-','Outdent','Indent','Blockquote'],
                    ['JustifyLeft','JustifyCenter','JustifyRight','JustifyFull'],
                    ['Link','Unlink'],
                    ['Image','Rule','SpecialChar','PageBreak'],
                    '/',
                    ['Style','FontFormat','FontName','FontSize'],
                    ['TextColor','BGColor'],
                    ['FitWindow','ShowBlocks','-'] ]
  }

Hobo.makeHtmlEditor = HoboCKEditor.makeEditor

