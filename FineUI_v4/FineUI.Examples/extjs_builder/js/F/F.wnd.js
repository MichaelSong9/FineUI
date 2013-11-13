﻿

(function () {

    // 计算黄金分割点的位置
    // bodySize : 整个页面的Body的大小 
    // windowSize : 窗口的大小
    function _calculateGoldenPosition(bodySize, windowSize) {
        var top = (bodySize.height - (bodySize.height / 1.618)) - windowSize.height / 2;
        if (top < 0) {
            top = 0;
        }
        var left = (bodySize.width - windowSize.width) / 2;
        if (left < 0) {
            left = 0;
        }
        return { left: left, top: top };
    }

    // 计算中间的位置
    // bodySize : 整个页面的Body的大小 
    // windowSize : 窗口的大小
    function _calculateCenterPosition(bodySize, windowSize) {
        var top = (bodySize.height - windowSize.height) / 2;
        if (top < 0) {
            top = 0;
        }
        var left = (bodySize.width - windowSize.width) / 2;
        if (left < 0) {
            left = 0;
        }
        return { left: left, top: top };
    }



    // 创建IFrame节点片段
    function _createIFrameHtml(iframeUrl, iframeName) {
        return '<iframe frameborder="0" style="overflow:auto;height:100%;width:100%;" name="' + iframeName + '" src="' + iframeUrl + '"></iframe>';
    }

    // 获取窗体的外部容器
    function _getWrapperNode(panel) {
        return Ext.get(panel.el.findParentNode('.x-window-wrapper'));
    }

    // FineUI窗口域（Window）
    F.wnd = {

        closeButtonTooltip: "Close this window",
        formModifiedConfirmTitle: "Close Confrim",
        formModifiedConfirmMsg: "Current form has been modified.<br/><br/>Abandon changes?",

        createIFrameHtml: function (iframeUrl, iframeName) {
            return _createIFrameHtml(iframeUrl, iframeName);
        },

        // 显示一个弹出窗体
        // 在 panel 实例中，定义了几个自定义属性，用于标示此实例的状态（在PanelBase中定义）
        // 属性 - f_iframe/f_iframe_url/f_iframe_name/f_iframe_loaded
        // panel : 当前弹出的窗体（Ext-Window）
        // iframeUrl : 弹出窗体中包含的IFrame的地址
        // windowTitle : 弹出窗体的标题
        // left/top : 弹出窗体的左上角坐标（如果为空字符串，则使用中间位置或黄金分隔位置）
        // isGoldenSection : 弹出窗体位于页面的黄金分隔位置
        // hiddenHiddenFieldID : 隐藏表单字段记录此窗体是否弹出，也页面回发时保持状态用
        show: function (panel, iframeUrl, windowTitle, left, top, isGoldenSection, hiddenHiddenFieldID, width, height) {
            var target = F.util.getTargetWindow(panel['f_property_target']);
            var guid = panel['f_property_guid'];
            if (window.frameElement && target !== window) {
                // 当前页面在IFrame中（也即时 window.frameElement 存在）
                // 此弹出窗体需要在父窗口中弹出
                if (!target.X[guid]) {
                    // 父窗口中已经创建了这个Ext-Window对象
                    var wrapper = guid + '_wrapper';
                    if (!target.Ext.get(wrapper)) {
                        target.F.util.appendFormNode('<div class="x-window-wrapper" id="' + wrapper + '"></div>');
                    } else {
                        target.Ext.get(wrapper).dom.innerHTML = '';
                    }
                    // Ext.apply 的第三个参数是default obejct
                    var config = Ext.apply({}, {
                        'renderTo': wrapper,
                        //'manager': target.F.f_window_manager,
                        'id': guid,
                        //'bof_hide': null,
                        //'bof_hide_refresh': null,
                        //'bof_hide_postback': null,
                        // 'f_show': null,
                        // 在 F.wnd.getActiveWindow 中需要用到这个参数
                        //'bof_property_frame_element_name': window.frameElement.name,
                        //'bof_property_client_id': panel.getId(),
                        'f_property_window': window,
                        'f_property_ext_window': panel
                    }, panel.initialConfig);

                    // 在父页面中创建一个Ext-Window的幻影（拷贝）
                    // 在这个幻影中，通过“f_property_frame_element_name”属性标示这是一个幻影
                    // f_property_frame_element_name: 并且真正的Ext-Window在当前页面中的哪个IFrame中
                    // f_property_client_id: 并且真正的Ext-Window在所在页面中的客户端ID
                    target.X[guid] = target.Ext.create('Ext.window.Window', config);
                }
                panel = target.X[guid];
            }
            if (iframeUrl !== '') {
                F.wnd.updateIFrameNode(panel, iframeUrl);
            }
            if (windowTitle != '') {
                panel.setTitle(windowTitle);
            }

            if (width && height) {
                panel.setSize(width, height);
            }

            Ext.get(hiddenHiddenFieldID).dom.value = 'false';
            panel.show();

            if (left !== '' && top !== '') {
                panel.setPosition(parseInt(left, 10), parseInt(top, 10));
            } else {
                var bodySize = target.window.Ext.getBody().getViewSize();
                var panelSize = panel.getSize(), leftTop;
                if (isGoldenSection) {
                    leftTop = _calculateGoldenPosition(bodySize, panelSize);
                } else {
                    leftTop = _calculateCenterPosition(bodySize, panelSize);
                    //panel.alignTo(target.Ext.getBody(), "c-c");
                }
                panel.setPosition(leftTop.left, leftTop.top);
            }

            if (panel.maximizable) {
                F.wnd.fixMaximize(panel);


                // 改变浏览器大小可以自动调整窗体控件的大小（窗体控件最大化时）
                target.Ext.EventManager.onWindowResize(function () {
                    F.wnd.fixMaximize(panel);
                });

            }
        },

        // 获取真正的Window实例
        getRealWindow: function (panel, targetName, guid) {
            var target = F.util.getTargetWindow(targetName);
            if (window.frameElement && target !== window) {
                // 从父页面中查找幻影Ext-Window对象
                panel = target.X[guid];
            }
            return panel;
        },

        // 隐藏Ext-Window（比如用户点击了关闭按钮）
        hide: function (panel, targetName, enableIFrame, hiddenHiddenFieldID, guid) {
            var wnd = F.wnd.getRealWindow(panel, targetName, guid);
            // 修改当前页面中记录弹出窗口弹出状态的隐藏表单字段
            Ext.get(hiddenHiddenFieldID).dom.value = 'true';
            // 如果启用IFrame，则清空IFrame的内容，防止下次打开时显示残影
            if (enableIFrame) {
                //wnd.body.query('iframe')[0].src = 'about:blank';
                //wnd['f_iframe_url'] = 'about:blank';
                wnd['f_iframe_loaded'] = false;
                wnd.update("");
            }
            wnd.hide();
        },

        // 最大化
        maximize: function (panel, targetName, guid) {
            var wnd = F.wnd.getRealWindow(panel, targetName, guid);
            wnd.maximize();
        },

        // 最小化
        minimize: function (panel, targetName, guid) {
            var wnd = F.wnd.getRealWindow(panel, targetName, guid);
            wnd.minimize();
        },

        // 恢复窗体大小
        restore: function (panel, targetName, guid) {
            var wnd = F.wnd.getRealWindow(panel, targetName, guid);
            wnd.restore();
        },

        // 这是 Extjs 的一个 bug，如果 Window 控件不是渲染在 document.body 中，则 maximize 函数并不能真正的最大化
        // 现在的 Window 控件时渲染在 from 表单里面的一个 DIV 中的
        fixMaximize: function (panel) {
            if (panel.maximized) {
                var target = F.util.getTargetWindow(panel['f_property_target']);
                var bodySize = target.window.Ext.getBody().getViewSize();
                panel.setSize(bodySize.width, bodySize.height);
                // 不要忘记左上角坐标
                panel.setPosition(0, 0);
            }
        },

        // 创建或更新IFrame节点，同时更新panel实例中的自定义属性值
        updateIFrameNode: function (panel, iframeUrl) {
            var iframeUrlChanged = false;
            // 如果此Panel中包含有IFrame
            if (panel && panel['f_iframe']) {
                if (iframeUrl && panel['f_iframe_url'] !== iframeUrl) {
                    panel['f_iframe_url'] = iframeUrl;
                    iframeUrlChanged = true;
                }
                // 如果此Panel中包含的IFrame还没有加载
                if (!panel['f_iframe_loaded']) {
                    window.setTimeout(function () {
                        // 如果此Panel已经创建完毕，但有时Panel可能是延迟创建的（比如TabStrip中的Tab，只有点击这个Tab时才创建Tab的内容）
                        panel['f_iframe_loaded'] = true;
                        panel.update(_createIFrameHtml(panel['f_iframe_url'], panel['f_iframe_name']));
                    }, 0);
                }
                else {
                    if (iframeUrlChanged) {
                        panel.body.query('iframe')[0].src = panel['f_iframe_url'];
                    }
                }
            }
        },


        // 处理表单中有任何字段发生变化时，关闭当前窗口时的提示
        confirmFormModified: function (closeFn) {
            if (F.util.isPageStateChanged()) {
                Ext.MessageBox.show({
                    title: F.wnd.formModifiedConfirmTitle,
                    msg: F.wnd.formModifiedConfirmMsg,
                    buttons: Ext.MessageBox.OKCANCEL,
                    icon: 'ext-mb-warning',
                    fn: function (btn) {
                        if (btn == 'cancel') {
                            return false;
                        } else {
                            closeFn.apply(window, arguments);
                        }
                    }
                });
            } else {
                closeFn.apply(window, arguments);
            }
        },


        // Ext-Window中IFrame里页面中的表单发生变化时弹出确认消息
        extWindowIFrameFormModifiedConfirm: function (panel, closeFn) {
            // 这个页面所在的Window对象
            var pageWindow = F.wnd.getIFrameWindowObject(panel);
            // 如果弹出的页面没能正常加载（比如说网络暂时连接中断）
            // 则直接关闭弹出的Ext-Window，而不会去检查页面表单变化，因为页面对象不存在
            if (pageWindow.X) {
                pageWindow.F.wnd.confirmFormModified(closeFn);
            }
            else {
                panel.f_hide();
            }
        },

        // 取得panel的Iframe节点的window对象（可以是幻影Ext-Window中的页面window对象）
        getIFrameWindowObject: function (panel) {
            // 当前页面在IFrame中（也即时 window.frameElement 存在）
            // 此Ext-Window需要在父窗口中弹出
            if (window.frameElement && panel['f_property_show_in_parent']) {
                panel = parent.X[panel['f_property_guid']];
            }
            var iframeNode = Ext.query('iframe', panel.body.dom);
            if (iframeNode.length === 0) {
                // 当前panel（Ext-Window）不包含iframe
                return window;
            }
            else {
                return iframeNode[0].contentWindow;
            }
        },


        // 这是老方法，虽然也能正常工作，但是绕了一个弯 => 在幻影ExtWindow中保存当前IFrame的parent.window以及iframe name。
        // 其实没必要，直接在幻影ExtWindow中保存真实的ExtWindow对象即可（只不过这个对象可能是在其他页面中）。
        // 取得当前页面所在的Ext-Window实际的对象，返回[实际的Ext-Window对象，实际的Ext-Window对象所在的window对象]
        // 注意
        // 1. 如果是在当前页面弹出窗口的话，“实际的Ext-Window对象”存在于父页面（parent.box）中
        // 2. 如果是在父页面弹出窗口的话，“实际的Ext-Window对象”存在于父页面（parent）下面的IFrame页面中
        // 3. 通过判断当前的Ext-Window是否存在“bof_property_frame_element_name”属性，可知当前的Ext-Window是否幻影（即时实际Ext-Window对象在父页面的一个拷贝），在F.wnd.show中设置的属性
        /*
        getActiveWindow: function () {
        var activeWindow = parent.window;
        var activeExtWindow = parent.F.f_window_manager.getActive();
        if (activeExtWindow['bof_property_frame_element_name']) {
        var iframeParentWindow = activeExtWindow['bof_property_parent_window'];
        activeWindow = iframeParentWindow.Ext.query('iframe[name=' + activeExtWindow['bof_property_frame_element_name'] + ']')[0].contentWindow;
        activeExtWindow = activeWindow.Ext.getCmp(activeExtWindow['bof_property_client_id']);
        }

        return [activeExtWindow, activeWindow];
        },
        */

        getActiveWindow: function () {
            var activeWindow = parent.window;
            var activeExtWindow = parent.Ext.WindowManager.getActive(); //parent.F.f_window_manager.getActive();
            if (activeExtWindow['f_property_window']) {
                activeWindow = activeExtWindow['f_property_window'];
                activeExtWindow = activeExtWindow['f_property_ext_window'];
            }

            return [activeExtWindow, activeWindow];
        },


        //    // 从url中提取bof_parent_client_id参数的值
        //    window.bof_getParentClientIdFromUrl = function() {
        //        var result = '';
        //        var url = window.location.href;
        //        var startIndex = url.indexOf('bof_parent_client_id');
        //        if (startIndex >= 0) {
        //            result = url.substr(startIndex + 'bof_parent_client_id'.length + 1);
        //        }

        //        return result;
        //    };

        //    // 取得当前页面所在窗口，返回数组[当前窗口对象，当前窗口所在的window对象]
        //    window.bof_getActiveWindow = function() {
        //        var aw = null;
        //        var window2 = null;

        //        var parentClientID = bof_getParentClientIdFromUrl();
        //        if (parentClientID) {
        //            window2 = parent.window;
        //            aw = parent.window.Ext.getCmp(parentClientID);
        //            if (aw.bof_property_frame_element_name) {
        //                window2 = parent.Ext.query('iframe[name=' + aw.bof_property_frame_element_name + ']')[0].contentWindow;
        //                aw = eval('window2.F.' + aw.id);
        //            }
        //        }

        //        if (aw) {
        //            return [aw, window2];
        //        }
        //        else {
        //            return null;
        //        }
        //    };

        // 向弹出此Ext-Window的页面写入值
        writeBackValue: function () {
            var aw = F.wnd.getActiveWindow();
            var controlIds = aw[0]['f_property_save_state_control_client_ids'];
            var controlCount = Math.min(controlIds.length, arguments.length);
            for (var i = 0; i < controlCount; i++) {
                aw[1].Ext.getCmp(controlIds[i]).setValue(arguments[i]);
            }
            //        var controlClientIds = (function() {
            //            if (aw) {
            //                return eval('aw[1].F.' + aw[0].id + '.bof_string_state');
            //            }
            //        })();
            //        if (typeof (controlClientIds) == 'string') {
            //            aw[1].Ext.getCmp(controlClientIds).setValue("哈哈");
            //        } else {
            //            aw[1].Ext.getCmp(controlClientIds[0]).setValue("哈哈");
            //            var controlValues = ['哈哈 的值', '哈哈 的值2'];
            //            var controlCount = Math.min(controlClientIds.length - 1, controlValues.length);
            //            for (var i = 0; i < controlCount; i++) {
            //                aw[1].Ext.getCmp(controlClientIds[i + 1]).setValue(controlValues[i]);
            //            }
            //        }
            //        var aw = F.wnd.getActiveWindow();
            //        if (aw) {
            //            aw[0].bof_hide();
            //        }
        }

    };

})();
