<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../ext3/resources/css/ext-all.css" />
    <link rel="stylesheet" type="text/css" href="../ext3/resources/css/xtheme-blue.css" /> 
    <link rel="stylesheet" type="text/css" href="../ext3/resources/css/xtheme-blue.css"  title="blue"/> 

	<link rel="stylesheet" type="text/css" media="screen" href="../css/image.css" />
	<script type="text/javascript" src="../ext3/adapter/ext/ext-base.js" ></script>
	<script type="text/javascript" src="../ext3/ext-all.js"></script>
    <script type="text/javascript">
        Ext.onReady(function(){
            Ext.QuickTips.init(); 
            var panel_ueaac = new Ext.Panel({
                title:'UEAAC图标',
                renderTo: 'panel_ueaac',
                tbar:[                    
                    {iconCls:'ico-org-root',tooltip:'组织根节点'},
                    {iconCls:'ico-tree-type',tooltip:'树形第一层类别'},
                    {iconCls:'icon-new',text:'新建'},
                    {iconCls:'icon-edit',text:'编辑'},
                    {iconCls:'icon-delete',text:'删除'}
                ]
            });  
            <#--          
            var panel1 = new Ext.Panel({
                title:'工具条图标',
                renderTo: 'panel1',
                iconCls:'tag',
                height:30,
                tbar:[
                      {iconCls:'icon-complete'},
                      {iconCls:'icon-show-active'},
                      {iconCls:'icon-show-complete'},
                      {iconCls:'icon-show-all'},
                      {iconCls:'icon-active'},
                      {iconCls:'icon-complete'},
                      {iconCls:'icon-complete'},

                     {text:'空白',iconCls:'page',tooltip:'page'},
                    {text:'新建',iconCls:'page_add',tooltip:'page_add'},
                    {text:'编辑',iconCls:'page_edit',tooltip:'page_edit'},
                    {text:'删除',iconCls:'page_delete',tooltip:'page_delete'},
                    {text:'查询',iconCls:'page_find',tooltip:'page_find'},
                    {text:'设置',iconCls:'page_gear',tooltip:'page_gear'},
                    {text:'附加',iconCls:'page_attach',tooltip:'page_attach'},
                    {text:'链接',iconCls:'page_link',tooltip:'page_link'},
                    {text:'转到',iconCls:'page_goto',tooltip:'page_goto'},
                    {text:'审核',iconCls:'page_key',tooltip:'page_key'},
                    {text:'保存',iconCls:'page_save',tooltip:'page_save'},
                    {text:'刷新',iconCls:'page_refresh',tooltip:'page_refresh'},
                    {text:'表格',iconCls:'page_excel',tooltip:'page_excel'},
                    {text:'文档',iconCls:'page_word',tooltip:'page_word'}
                ]
            });
            var panel2 = new Ext.Panel({
                title:'工具条图标',
                renderTo: 'panel2',
                iconCls:'tag_add',
                height:30,                
                tbar:[                    
                    {text:'空白',iconCls:'table',tooltip:'table'},
                    {text:'新建',iconCls:'table_add',tooltip:'table_add'},
                    {text:'编辑',iconCls:'table_edit',tooltip:'table_edit'},
                    {text:'删除',iconCls:'table_delete',tooltip:'table_delete'},
                    {text:'查询',iconCls:'table_find',tooltip:'table_find'},
                    {text:'设置',iconCls:'table_gear',tooltip:'table_gear'},
                    {text:'附加',iconCls:'table_attach',tooltip:'table_attach'},
                    {text:'链接',iconCls:'table_link',tooltip:'table_link'},
                    {text:'转到',iconCls:'table_goto',tooltip:'table_goto'},
                    {text:'审核',iconCls:'table_key',tooltip:'table_key'},
                    {text:'保存',iconCls:'table_save',tooltip:'table_save'},
                    {text:'刷新',iconCls:'table_refresh',tooltip:'table_refresh'},
                    {text:'增记录',iconCls:'table_row_insert',tooltip:'table_row_insert'},
                    {text:'删记录',iconCls:'table_row_delete',tooltip:'table_row_delete'}
                ]
            });
            var panel3 = new Ext.Panel({
                title:'工具条图标',
                renderTo: 'panel3',
                iconCls:'tag_edit',
                height:30,                
                tbar:[                    
                    {text:'空白',iconCls:'mail',tooltip:'mail'},
                    {text:'新建',iconCls:'mail_add',tooltip:'mail_add'},
                    {text:'编辑',iconCls:'mail_edit',tooltip:'mail_edit'},
                    {text:'删除',iconCls:'mail_delete',tooltip:'mail_delete'},
                    {text:'查询',iconCls:'mail_find',tooltip:'mail_find'},
                    {text:'已读',iconCls:'mail_open',tooltip:'mail_open'},
                    {text:'附加',iconCls:'mail_attach',tooltip:'mail_attach'},
                    {text:'链接',iconCls:'mail_link',tooltip:'mail_link'},
                    {text:'转到',iconCls:'mail_goto',tooltip:'mail_goto'}
                ]
            });
            var panel4 = new Ext.Panel({
                title:'工具条图标',
                renderTo: 'panel4',
                iconCls:'tag_delete',
                height:30,                
                tbar:[                    
                    {text:'空白',iconCls:'feed',tooltip:'feed'},
                    {text:'新建',iconCls:'feed_add',tooltip:'feed_add'},
                    {text:'编辑',iconCls:'feed_edit',tooltip:'feed_edit'},
                    {text:'删除',iconCls:'feed_delete',tooltip:'feed_delete'},
                    {text:'查询',iconCls:'feed_find',tooltip:'feed_find'},
                    {text:'链接',iconCls:'feed_link',tooltip:'feed_link'},
                    {text:'转到',iconCls:'feed_goto',tooltip:'feed_goto'},
                    {text:'审核',iconCls:'feed_key',tooltip:'feed_key'},
                    {text:'保存',iconCls:'feed_save',tooltip:'feed_save'}
                ]
            });
            -->
        });
    </script>
</head>
<body>
    <p>在IE6中，ext直接使用ico图片，是有问题，所以用GIF文件代替</p>
	<div id="panel_ueaac" class="content"></div>
	<#--
    <div id="panel1" class="content"></div>
    <div id="panel2" class="content"></div>
    <div id="panel3" class="content"></div>
    <div id="panel4" class="content"></div>
-->
<br><br>

<span class="icon icon-addmember "></span>
<span class="icon icon-plus "></span>
<span class="icon icon-sub "></span>	
<span class="icon icon-t "></span>
<span class="icon icon-b "></span>	
<span class="icon icon-show "></span>
<span class="icon icon-hide "></span>
<span class="icon icon-add "></span>
<span class="icon icon-check "></span>
<span class="icon icon-input "></span>
<span class="icon icon-radio "></span>
<br>
<span class="icon icon-quick "></span>
<span class="icon icon-member "></span>
<span class="icon icon-height "></span>
<span class="icon icon-width "></span>
<span class="icon icon-mov "></span>
<span class="icon icon-link "></span>
<span class="icon icon-dir "></span>
<span class="icon icon-del "></span>
<span class="icon icon-home "></span>
<span class="icon icon-filedown "></span>
<span class="icon icon-guestword "></span>
<span class="icon icon-del2 "></span>
<span class="icon icon-addir "></span>
<span class="icon icon-import "></span>
<span class="icon icon-export "></span>
<span class="icon icon-single "></span>
<span class="icon icon-vdo " ></span>
<span class="icon icon-img "></span>
<span class="icon icon-edit "></span>
<span class="icon16 icon-d "></span>
<span class="icon16 icon-u "></span>
<span class="icon16 icon-l "></span>
<span class="icon16 icon-r "></span>
<span class="icon42 icon-11 " ></span>
<span class="icon42 icon-13 " ></span>
<span class="icon42 icon-31 " ></span>
<span class="icon42 icon-121 "></span>        	
<span class="icon10 icon-hw1 "></span> 
<span class="icon10 icon-hw2 "></span> 
<span class="icon10 icon-hw3 "></span> 
<span class="icon10 icon-hw4 "></span> 
<span class="icon10 icon-hw5 "></span>         	
<span class="icon10 icon-hw6 "></span>   
<span class="icon10 icon-hw7 "></span>  
<span class="icon10 icon-hw8 "></span>  
<span class="icon10 icon-hw9 "></span>  
<span class="icon10 icon-hw10 " ></span>          	
<span class="icon10 icon-hw11 " ></span>
<span class="icon10 icon-hw12 " ></span>
<span class="icon10 icon-hw13 " ></span>
<span class="icon10 icon-hw14 " ></span>	
<span class="icon10 icon-hw15 " ></span>
<span class="icon10 icon-hw16 " ></span>
<span class="icon10 icon-hw17 " ></span>
<span class="icon10 icon-hw18 " ></span>
<span class="icon10 icon-hw19 " ></span>

    
</body>
</html>
