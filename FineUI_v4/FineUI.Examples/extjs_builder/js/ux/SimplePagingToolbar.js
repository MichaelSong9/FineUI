

Ext.define('Ext.ux.SimplePagingToolbar', {
    extend: 'Ext.toolbar.Paging',

    // Override parent
    initComponent: function () {
        var me = this;

        me.store = Ext.Object.merge({}, me.store, {
            getCount: function () {
                return me.x_recordCount;
            },
            currentPage: me.x_pageIndex + 1
        });

        me.callParent();
    },

    // Override parent
    getPagingItems: function() {
        var items = this.callParent();
        // Remove refresh and separator items.
        return items.slice(0, items.length - 2);
    },

    // Override parent
    getPageData: function () {
        return {
            total: this.x_recordCount,
            currentPage: this.x_pageIndex + 1,
            pageCount: this.x_pageCount <= 0 ? 1 : this.x_pageCount,
            fromRecord: this.x_startRowIndex,
            toRecord: this.x_endRowIndex
        };
    },

    x_update: function (configs) {
        Ext.Object.merge(this, configs);
        this.store.currentPage = this.x_pageIndex + 1;
        this.onLoad();
    }

});
