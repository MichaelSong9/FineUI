
function onReady() {
    var btnExpandAll = Ext.getCmp(IDS.btnExpandAll);
    var btnCollapseAll = Ext.getCmp(IDS.btnCollapseAll);
    var mainMenu = Ext.getCmp(IDS.mainMenu);
    var mainTabStrip = Ext.getCmp(IDS.mainTabStrip);
    var windowSourceCode = Ext.getCmp(IDS.windowSourceCode);

    function getExpandedPanel() {
        var panel = null;
        mainMenu.items.each(function (item) {
            if (!item.collapsed) {
                panel = item;
            }
        });
        return panel;
    }

    btnExpandAll.on('click', function () {
        if (IDS.menuType == "menu") {
            mainMenu.expandAll();
        } else {
            var expandedPanel = getExpandedPanel();
            if (expandedPanel) {
                expandedPanel.items.itemAt(0).expandAll();
            }
        }
    });

    btnCollapseAll.on('click', function () {
        if (IDS.menuType == "menu") {
            mainMenu.collapseAll();
        } else {
            var expandedPanel = getExpandedPanel();
            if (expandedPanel) {
                expandedPanel.items.itemAt(0).collapseAll();
            }
        }
    });

    function createToolbar() {

        // Get iframe node from toolbarl button
        function getCurrentIframeNode(button) {
            // Note: button.ownerCt is toobar, button.ownerCt.ownerCt is current actived tab.
            return Ext.DomQuery.selectNode('iframe', button.ownerCt.ownerCt.el.dom);
        }

        // Dynamic create toolbar buttons
        var sourcecodeButton = new Ext.Button({
            text: "Source Code",
            type: "button",
            cls: "x-btn-text-icon",
            icon: "./res.axd?icon=PageWhiteCode",
            listeners: {
                click: function (button, e) {
                    windowSourceCode.box_show('./source.aspx?files=' + getCurrentIframeNode(button).attributes['src'].value, 'Source Code');
                    e.stopEvent();
                }
            }
        });

        var openNewWindowButton = new Ext.Button({
            text: 'Open in New Tab',
            type: "button",
            cls: "x-btn-text-icon",
            icon: "./res.axd?icon=TabGo",
            listeners: {
                click: function (button, e) {
                    window.open(getCurrentIframeNode(button).src, "_blank");
                    e.stopEvent();
                }
            }
        });

        var refreshButton = new Ext.Button({
            text: 'Refresh',
            type: "button",
            cls: "x-btn-text-icon",
            icon: "./res.axd?icon=Reload",
            listeners: {
                click: function (button, e) {
                    getCurrentIframeNode(button).contentWindow.location.reload(); //.replace(href);
                    e.stopEvent();
                }
            }
        });

        return new Ext.Toolbar({
            items: ['->', sourcecodeButton, '-', refreshButton, '-', openNewWindowButton]
        });
    }


    // Initialize Tree and TabStrip interaction, and the update of Browser address bar.
    X.util.initTreeTabStrip(mainMenu, mainTabStrip, createToolbar);


    // Public add tab method.
    window.addExampleTab = function (id, url, text, icon) {
        X.util.addMainTab(mainTabStrip, id, url, text, icon);
    };

}

