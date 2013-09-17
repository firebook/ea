<script type="text/javascript" src="../../common/ckeditor363/ckeditor.js"></script>
<script type="text/javascript">
	window.onload = function()
	{
		CKEDITOR.replace( 'textarea_duty',
		{   
			skin : 'office2003',
			toolbar : [ 
							['Preview','Cut','Copy','Paste','PasteText','PasteFromWord','Undo','Redo'] ,
							['Bold','Italic','Underline','NumberedList','BulletedList','Outdent','Indent' ,
							'JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'] ,
							['Styles','Format','Font','FontSize','TextColor','BGColor' ]
					  ]
		}); 
	}	
</script>
<form action="ea_edit_bean_property.do" method="post">
	<textarea cols="170"   id="textarea_duty" name="content" >${rhs["content"]?if_exists}</textarea>
	<input type="hidden" name="objectname" value="${rhs["objectname"]?if_exists}" />
	<input type="hidden" name="op" value="w" />
	<input type="hidden" name="id" value="${rhs["id"]?if_exists}" />
	<input type="hidden" name="propertyname" value="${rhs["propertyname"]?if_exists}" />			
	<p align=center><input type="submit" value="保存" /><p>	
</form>

