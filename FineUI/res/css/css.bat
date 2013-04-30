
type ux\FineUI.css > ux\ux.css
type ux\PageLoading.css >> ux\ux.css
type ux\CheckBox-disable.css >> ux\ux.css
type ux\FormViewport.css >> ux\ux.css
type ux\box-panel-big-header.css >> ux\ux.css
type ux\BigFont.css >> ux\ux.css
type ux\FileUploadField.css >> ux\ux.css
type ux\ux.css > .ux

type ext\ext-all-notheme.css > .notheme

type ext\xtheme-blue.css > .xtheme-blue
type ux\blue_ux.css >> .xtheme-blue

type ext\xtheme-gray.css > .xtheme-gray
type ux\gray_ux.css >> .xtheme-gray

type ext\xtheme-access.css > .xtheme-access
type ux\access_ux.css >> .xtheme-access


java -jar ..\..\..\tools\yuicompressor-2.4.6\build\yuicompressor-2.4.6.jar --type css --charset utf-8 -o ux.css .ux

java -jar ..\..\..\tools\yuicompressor-2.4.6\build\yuicompressor-2.4.6.jar --type css --charset utf-8 -o notheme.css .notheme

java -jar ..\..\..\tools\yuicompressor-2.4.6\build\yuicompressor-2.4.6.jar --type css --charset utf-8 -o blue.css .xtheme-blue

java -jar ..\..\..\tools\yuicompressor-2.4.6\build\yuicompressor-2.4.6.jar --type css --charset utf-8 -o gray.css .xtheme-gray

java -jar ..\..\..\tools\yuicompressor-2.4.6\build\yuicompressor-2.4.6.jar --type css --charset utf-8 -o access.css .xtheme-access

