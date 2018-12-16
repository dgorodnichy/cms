document.addEventListener('turbolinks:load', function() {
  $('#sections').on('cocoon:after-insert', function(event, insertedItem) {
    var hiddenField = $(insertedItem).find('.content-field')
    var trixEditor = $(insertedItem).find('trix-editor')
    var randomHex = Math.random().toString(36).substring(2, 7);
    hiddenField.attr('id', randomHex)
    trixEditor.attr('input', randomHex)
    // var confirmation = confirm("Are you sure?");
    // if( confirmation === false ){
    //   event.preventDefault();
    // }
  });
});
