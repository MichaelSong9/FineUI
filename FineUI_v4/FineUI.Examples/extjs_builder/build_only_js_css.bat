

mkdir ..\extjs
mkdir ..\extjs\lang
mkdir ..\extjs\res
mkdir ..\extjs\res\images
mkdir ..\extjs\res\css
mkdir ..\extjs\res\ext-theme-access
mkdir ..\extjs\res\ext-theme-classic
mkdir ..\extjs\res\ext-theme-gray
mkdir ..\extjs\res\ext-theme-neptune





type res\FineUI.css > _x
type res\PageLoading.css >> _x
type res\CheckBoxField.css >> _x
type res\FormViewport.css >> _x
type res\box-panel-big-header.css >> _x
type res\BigFont.css >> _x
type res\ColumnHeaderGroup_blue.css >> _x
ajaxminifier\ajaxminifier -css _x -o ..\extjs\res\css\ux.css 










type extjs_source_all\locale\ext-lang-en.js > _x
type js\lang\fineui-lang-en.js >> _x
ajaxminifier\ajaxminifier -js -evals:immediate  _x -o ..\extjs\lang\en.js

type extjs_source_all\locale\ext-lang-pt_BR.js > _x
type js\lang\fineui-lang-pt_BR.js >> _x
ajaxminifier\ajaxminifier -js -evals:immediate  _x -o ..\extjs\lang\pt_BR.js


type extjs_source_all\locale\ext-lang-tr.js > _x
type js\lang\fineui-lang-tr.js >> _x
ajaxminifier\ajaxminifier -js -evals:immediate  _x -o ..\extjs\lang\tr.js


type extjs_source_all\locale\ext-lang-zh_CN.js > _x
type js\lang\fineui-lang-zh_CN.js >> _x
ajaxminifier\ajaxminifier -js -evals:immediate  _x -o ..\extjs\lang\zh_CN.js


type extjs_source_all\locale\ext-lang-zh_TW.js > _x
type js\lang\fineui-lang-zh_TW.js >> _x
ajaxminifier\ajaxminifier -js -evals:immediate  _x -o ..\extjs\lang\zh_TW.js


type extjs_source_all\locale\ext-lang-ru.js > _x
type js\lang\fineui-lang-ru.js >> _x
ajaxminifier\ajaxminifier -js -evals:immediate  _x -o ..\extjs\lang\ru.js










type extjs_source_all\ext-all.js > _x

type extjs_source_all\examples\ux\TabCloseMenu.js >> _x
type extjs_source_all\examples\ux\RowExpander.js >> _x

type js\ux\FormViewport.js >> _x
type js\ux\SimplePagingToolbar.js >> _x

type _x > ..\extjs\ext-debug.js


type js\lib\json2.js > _x
type js\lib\Base64.js >> _x
type js\X\X.util.js >> _x
type js\X\X.ajax.js >> _x
type js\X\X.wnd.js >> _x
type js\X\extender.js >> _x
type js\X\X.simulateTree.js >> _x
type js\X\X.format.js >> _x

type _x > ..\extjs\x-debug.js


type ..\extjs\ext-debug.js > _x
type ..\extjs\x-debug.js >> _x

type ext3-core-compat.js > ..\extjs\ext3-core-compat.js
type ext3-compat.js > ..\extjs\ext3-compat.js

type ext3-core-compat.js >> _x
type ext3-compat.js >> _x


ajaxminifier\ajaxminifier -js -evals:immediate  _x -o ..\extjs\ext.js


del _x /Q

