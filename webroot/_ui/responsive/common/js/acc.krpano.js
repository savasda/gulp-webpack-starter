

ACC.kpano = {

	_autoload: [
		"initPano"
  ],
  
  init: function(target, url) {
    if (target instanceof jQuery === false || target.length === 0) return false;

    if (typeof url !== 'string' || url === '') return false;

    this.destroy(target);
    const id = this.getID(target);
    krpanoJS.embedpano({
      swf: '/_ui/responsive/common/js/krpano/krpano.swf',
      xml: '/_ui/responsive/theme-custom/assets/libs/krpano/static/krpano/base.xml',
      target: "pano",
      // target: id,
      initvars:{sceneurl: url},
      html5: 'auto',
      mobilescale: 1.0,
    });

    return true;
  },

  getID: function(target) {
    if (target instanceof jQuery === false || target.length === 0) return false;

    const id = target.attr('id');

    if (typeof id === 'string' && id !== '') {
      return id;
    }

    return this.setID(target, this.generateID());
  },

  generateID: function() {
    return `_${Math.random().toString(36).substr(2, 9)}`;
  },

  setID: function(target, id) {
    if (target instanceof jQuery === false || target.length === 0) return false;

    if (typeof id !== 'string' || id === '') return false;

    target.attr('id', id);

    return id;
  },

  destroy: function(target) {
    if (target instanceof jQuery === false || target.length === 0) return false;

    target.html('');

    return true;
  },

  _bind_open_modal: function() {
    const that = this;

    $(document).on('click.krpano_modal', '[data-krpano-modal]', function () {
      const target = $(this);
      const value = target.data('krpano-modal');
      if (typeof value !== 'string' || value === '') return;
      var pano = $('#pano');
      pano.css({'height': '90vh'})
      that.init($('#pano'), value)
      $.magnificPopup.open({
        mainClass: 'view-360',
        items: {
          src: "#pano",
          type: 'inline'
        },
      });
    });
  },

	initPano: function (){
    const that = this;
    $('[data-krpano]').each(function () {
      const target = $(this);
      const value = target.data('krpano');
      that.init(target, value);
    });
    this._bind_open_modal();
	}
};

