
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />  
<script src="http://code.jquery.com/jquery-1.9.1.js"></script> 
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
<style>  #draggable { width: 150px; height: 150px; padding: 0.5em; }  </style> 
<script>  $(function() {    $( "#draggable" ).draggable();  }); </script>
 <div id="draggable" class="ui-widget-content">  <p>Drag me around</p></div> 

<style type="text/css">
<!--

.zz {

	height: 1200px;
	width: 958px auto;
	border: 0px solid #CCCCCC;
	margin-top: 5px;
	margin-bottom: 5px;
	margin-left:auto;
	margin-right:auto; 
}
a {font-family: "宋体";
	font-size: 12px;
	color: #666666;
	text-decoration: none;}
-->
</style>


<script language="javascript">

function offset(node){
	var x = node.offsetLeft;
	var y = node.offsetTop;
	var w = node.offsetWidth;
	var h = node.offsetHeight;
	var parent = node.offsetParent;
	while (parent != null){
		x += parent.offsetLeft;
		y += parent.offsetTop;
		parent = parent.offsetParent;
	}
	if(w==0){
		w+=parseInt(node.currentStyle.width);
		w+=parseInt(node.currentStyle.paddingRight);
		w+=parseInt(node.currentStyle.paddingLeft);
		w+=parseInt(node.currentStyle.borderWidth) * 2;
	}
	if(h==0){
		h+=parseInt(node.currentStyle.height);
		h+=parseInt(node.currentStyle.paddingTop);
		h+=parseInt(node.currentStyle.paddingBottom);
		h+=parseInt(node.currentStyle.borderWidth) * 2;
	}
	return {x: x, y: y, w: w, h: h};
}

function OrgNode(){
	this.Text=null;
	this.Link=null;
	this.Description="点击查看相关人员";
	this.BoxWidth=null;
	this.BoxHeight=null;
	this.parentNode=null;
	this.NodeGroupId=null; //同一层的级别序号,从零开始
	this.NodeOrderId=null; //同一级中的序号,从零开始
	this.TopLine=null;
	this.BottomLine=null;
	this.Depth=null;
	this.Top=null;
	this.Left=null;
	this.Type=null;
	this.Nodes=[];
	this.customParam=[]; //节点自定义参数
	var This=this;
	this.Nodes.Add=function(OrgNode_){
		OrgNode_.parentNode=This;
		This.Nodes[This.Nodes.length]=OrgNode_;
	}
	this.Box=null;
	this.Templet=null;
	this.Id="OrgNode_"+ GetRandomId(20);
	
	this.inIt= function(){
		if(this.inIted==true)return;
		var tempDiv=document.createElement("DIV");
		document.body.appendChild(tempDiv);
		var tempHTML=this.Templet;
		tempHTML=tempHTML.replace("{Id}", this.Id);
		tempHTML=tempHTML.replace("{Text}", this.Text);
		tempHTML=(this.Link==null)?tempHTML.replace("{Link}", "JavaScript:void(0)"):tempHTML.replace("{Link}", this.Link);
		tempHTML=tempHTML.replace("{Description}", this.Description);
		for(var Param_ in  this.customParam){
			tempHTML=tempHTML.replace("{"+ Param_ +"}", this.customParam[Param_]);
		}
		tempDiv.innerHTML=tempHTML;
		this.Box=$(this.Id);
		
		if(this.BoxWidth!=null){
			if(offset(this.Box).w < this.BoxWidth){
				this.Box.style.width=this.BoxWidth +"px";
				if(offset(this.Box).w > this.BoxWidth){
					this.Box.style.width=(this.BoxWidth - (offset(this.Box).w - this.BoxWidth)) +"px";
				}
			}
		}
		
		if(this.BoxHeight!=null){
			if(offset(this.Box).h < this.BoxHeight){
				this.Box.style.height=this.BoxHeight +"px";
				if(offset(this.Box).h > this.BoxHeight){
					this.Box.style.height=(this.BoxHeight - (offset(this.Box).h - this.BoxHeight)) +"px";
				}
			}
		}

		this.Width=offset(this.Box).w;
		this.Height=offset(this.Box).h;
		this.inIted=true;
	}

	function GetRandomId(n_){
		var litter="abcdefghijklmnopqrstuvwxyz"
		litter+=litter.toUpperCase()
		litter+="1234567890";
		var idRnd="";
		for(var i=1; i<=n_; i++){
			idRnd+=litter.substr((0 + Math.round(Math.random() * (litter.length - 0))), 1)
		}
        return idRnd;
	}
}


</script>