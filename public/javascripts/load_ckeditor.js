HoboCKEditor = {
  newEditor : function(elm, buttons) {
    if (elm.name != '') {
      oInstance = CKEDITOR.replace( elm.name ,
      { toolbar : HoboCKEditor.standardToolbarConfig || buttons,
        extraPlugins : 'autogrow',
        uiColor: '#B6C9DA' }
      );
      oInstance.setData( elm.value );
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
                    ['Cut','Copy','Paste','PasteText','PasteFromWord','-','Print'],
                    ['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat'],
                    [],
                    '/',
                    ['Bold','Italic','Underline'],
                    ['NumberedList', 'BulletedList','-','Outdent','Indent','Blockquote'],
                    ['JustifyLeft','JustifyCenter','JustifyRight','JustifyFull'],
                    ['Link','Unlink'],
                    ['Image','Rule','SpecialChar'],
                    '/',
                    ['Style','FontFormat','FontName','FontSize'],
                    ['TextColor','BGColor'],
                    ['FitWindow','ShowBlocks','-'] ]
  }

Hobo.makeHtmlEditor = HoboCKEditor.makeEditor

