$.tabs = function() {
    var _generateID = function() {
        return `_${Math.random().toString(36).substr(2, 9)}`;
    };

    var _setID = function(target,id) {
        target.getAttribute('id', id);
        return id;
    }

    var _getID = function(target) {
        const id = target.getAttribute('id');
        if (typeof id === 'string' && id !== '') {
            return id;
        }
        return _setID(target, _generateID());
    }

    var _createElem = function(tagName) {
        return document.createElement(tagName);
    }

    var _buildCharset = function(tabsHeader, tabsContent) {
        var wrapper = _createElem('div');
        wrapper.setAttribute('id', _getID(wrapper))
        var tabsHeaderWrapper = _createElem('div');
        var tabsContentWrapper = _createElem('div');
        wrapper.classList.add('tabs-wrapper');
        tabsHeaderWrapper.classList.add('tabs-header-wrapper');
        tabsHeaderWrapper.style.display = 'flex';
        tabsContentWrapper.classList.add('tabs-content-wrapper');
        
        if(tabsHeader.length) {
            tabsHeader.forEach(tab => {
                tabsHeaderWrapper.appendChild(tab);
            });
        }
        if (tabsContent.length) {
            tabsContent.forEach((content, index) => {
                tabsContentWrapper.appendChild(content);
            });
        }

        wrapper.appendChild(tabsHeaderWrapper);
        wrapper.appendChild(tabsContentWrapper);
        return wrapper;
    }

    var _buildTab = function(container) {
        var tabsCollection = container.getElementsByClassName('tab');
        var tabsContent = container.getElementsByClassName('tab_content');
        var _tabsCollection = Object.assign([], tabsCollection);
        var _tabsContent = Object.assign([], tabsContent);
        container.innerHTML = '';
        var _buildedTabs = _buildCharset(_tabsCollection, _tabsContent);
        container.appendChild(_buildedTabs);
        _inittabs(_getID(_buildedTabs));
    }

    var _createTabs = function(options) {
        Array.from(options).forEach(element => {
            _buildTab(element);
        });
    }

    var _inittabs = function(id) {
        $('#'+ id + ' .tab').click(function(target) {
            $('#'+ id + ' .tab').removeClass("active").eq($(this).index()).addClass("active");
            $('#'+ id + ' .tabs-content-wrapper .tab_content').hide().eq($(this).index()).fadeIn()
        }).eq(0).addClass("active");
    }

    return {
        init(options){
            _createTabs(options);
        }
    }

}