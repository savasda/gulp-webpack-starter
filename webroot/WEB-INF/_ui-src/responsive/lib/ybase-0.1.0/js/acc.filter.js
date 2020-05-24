ACC.filter = {
    _autoload: [
        "filterOpen"
    ],

    filterOpen: function(){
        $(document).on('click', (event) => {
          if ($(event.target).closest('.filter').length === 0) {
            $('.filter').removeClass('filter_open');
          }
        });
        $(document).on('click', '.filter', function () {
          if ($(this).is('.filter_open') === true) {
            $('.filter').removeClass('filter_open');
          } else {
            $('.filter').removeClass('filter_open');
            $(this).addClass('filter_open');
          }
        });
      }
}