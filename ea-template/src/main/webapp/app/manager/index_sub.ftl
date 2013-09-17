<link href="../../common/iframe_menu/css/iframemenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="../../common/iframe_menu/js/menu.js"></script>
<script type="text/javascript" >
	function whichBrs() {
		var agt = navigator.userAgent.toLowerCase();
		if (agt.indexOf("opera") != -1) return 'Opera';
		if (agt.indexOf("staroffice") != -1) return 'Star Office';
		if (agt.indexOf("beonex") != -1) return 'Beonex';
		if (agt.indexOf("chimera") != -1) return 'Chimera';
		if (agt.indexOf("netpositive") != -1) return 'NetPositive';
		if (agt.indexOf("phoenix") != -1) return 'Phoenix';
		if (agt.indexOf("firefox") != -1) return 'Firefox';
		if (agt.indexOf("safari") != -1) return 'Safari';
		if (agt.indexOf("skipstone") != -1) return 'SkipStone';
		if (agt.indexOf("msie") != -1) return 'Internet Explorer';
		if (agt.indexOf("netscape") != -1) return 'Netscape';
		if (agt.indexOf("mozilla/5.0") != -1) return 'Mozilla';
		if (agt.indexOf('\/') != -1) {
			if (agt.substr(0, agt.indexOf('\/')) != 'mozilla') {
				return navigator.userAgent.substr(0, agt.indexOf('\/'));
			}else return 'Netscape';
		} else if (agt.indexOf(' ') != -1)
			return navigator.userAgent.substr(0, agt.indexOf(' '));
		else 
			return navigator.userAgent;
	}
	
	function dyniframesize(iframename) {
	    var add_height=30;
		var iframe = null;
		if (document.getElementById) {
			iframe = document.getElementById(iframename);
		}else {
		eval('iframe = ' + iframename + ';');
		}
		//begin resizing iframe
		iframe.style.display = "block"
		
		//alert(iframe.height);
	
		if (iframe.Document) {
			//ie自有属性scrollHeight
			//iframe.height = iframe.contentDocument.body.scrollHeight;
			iframe.height = iframe.Document.body.scrollHeight;
				iframe.height=iframe.Document.body.scrollHeight+add_height;
				iframe.width=iframe.Document.body.scrollWidth+add_height;
		}else if (iframe.contentDocument) {//ie,firefox,chrome,opera,safari 
					if (whichBrs() == "Firefox") {
						iframe.height = iframe.contentDocument.documentElement.offsetHeight; 
						iframe.width=iframe.contentDocument.documentElement.offsetWidth; 
					}
					else { //safari
						iframe.height = iframe.contentDocument.documentElement.scrollHeight; 
						iframe.width=iframe.contentDocument.documentElement.scrollWidth;
					}
			  }
	}
	window.setInterval("dyniframesize('main_iframe')", 1000);
</script>
 

<body onload="javascript:{dyniframesize('main_iframe');}">
	<!--标签页区域开始-->
   	<div class="iframemenu" >
		<script language="javascript">
			addmenu("tpltb1_menu_tpltb1.do","表格模型1");
			addmenu("tpltb2_menu_tpltb2.do","表格模型2");
			addmenu("tpltree1_menu_tpltree1.do","树型");
		</script>
	</div>
	<#--<div id="div_action_result" align=right class="small text-success" >11111</div>-->
	<div class="iframewindow" id="message" >
	      <iframe  framespacing="0" width="100%" Scrolling='no' height=100% frameborder="NO" name="mywin" id="mywin"  src="tpltb1_menu_tpltb1.do"></iframe>	
	</div>
</body>

