$(function() {
  $("#note_category_filter").focus();
  $("#note_category_filter").on('keyup change', function() {
    $("h5.note_category_title").each(function() {
      var noteCategory, categorySearch;

      categorySearch = $('#note_category_filter').val().toLowerCase() ? $('#note_category_filter').val().toLowerCase() : "";
      noteCategory = $(this).data("name").toString().toLowerCase();

      if (noteCategory.match(categorySearch)) {
        $(this).show();
      } else {
        $(this).hide();
      }
    });
  });
});