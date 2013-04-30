

1. 对 ext-all-notheme.css 的修改，去掉cursor定义。

	.x-unselectable, .x-unselectable * {
		user-select: none;
		-o-user-select: none;
		-ms-user-select: none;
		-moz-user-select: -moz-none;
		-webkit-user-select: none;
		
		/*cursor:default;*/
	}