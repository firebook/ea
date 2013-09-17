<#include "../../../common/freemarker/include_header.ftl">
<script type="text/javascript" src="../../common/ckeditor363/ckeditor.js"></script>
<script type="text/javascript">
	window.onload = function()
	{
		CKEDITOR.replace( 'textarea',
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
<form action="ea_edit_ftl.do" method="post">
	<textarea cols="170"   id="textarea" name="content" >${rhs["content"]?if_exists}</textarea>
	<input type="hidden" name="op" value="w" />	
	<input type="hidden" name="filefoldname" value="${rhs["filefoldname"]?if_exists}" />
	<input type="hidden" name="filename" value="${rhs["filename"]?if_exists}" /		
	<p align=center><input type="submit" value="保存" />
			<span  class="small text-${rhs["info_type"]?if_exists} ">
			${rhs["info"]?if_exists}</span>
	</p>	
</span>
</form>

