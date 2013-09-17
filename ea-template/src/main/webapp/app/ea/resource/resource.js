
var resourceId; 
function action_resource(url,para){
	  $.ajax({
	         type:"POST",
	         url: "ea_resource_"+url,
	         data:"beanname=Resource&"+para,
	         cache: false,
	         success: function(html){
	        	 document.getElementById('div_resource_tree').innerHTML=html;
	        	 $('#div_action_result',window.parent.frames['topFrame'].document).html(document.getElementById('div_action_result').innerHTML);
	        	 setTimeout( " $('#div_action_result',window.parent.frames['topFrame'].document).html('')", 2000);
	 
	           }
	  }); 
	}

function get_resource_rolegroup_list(resourceId) {
	$.ajax({
        type:"POST",
     	url: "ea_ea_ajax_resource_rolegroup_list.do",
     	data:"resourceId="+resourceId,
     	cache: false,
     	success: function(html){
       		document.getElementById('ajax_resource').innerHTML=html;      
       }	
    });  
}



function action_ea_resource_relation(url,para){
    if(resourceId==null){
    	alert("必须选择资源");
    	return;
    }
	  $.ajax({
	         type:"POST",
	         url: url,
	         data:para,
	         cache: false,
	         success: function(html){
	        	 document.getElementById('div_action_result').innerHTML=html;
	        	 $('#div_action_result',window.parent.frames['topFrame'].document).html(document.getElementById('div_action_result').innerHTML);
	        	 setTimeout( " $('#div_action_result',window.parent.frames['topFrame'].document).html('')", 2000);
	 
	           }
	  }); 
	}

function resource_role_relation(resourceId,roleId) {
	//alert("resourceId="+resourceId+"&roleId="+roleId);
    if(resourceId==null){
    	alert("必须选择资源");
    	location.reload() ;
    }
	$.ajax({
     type:"POST",
     url: "ea_ea_create_resource_role_relation.do",
     data:"resourceId="+resourceId+"&roleId="+roleId,
     cache: false,
     success: function(html){
       document.getElementById('div_resource_result').innerHTML=html;
       }
	}); 
}
	









	
function get_resource_role_list(resourceId) {

	$.ajax({
        type:"POST",
     	url: "ea_ea_ajax_resource_role_list.do",
     	data:"resourceId="+resourceId,
     	cache: false,
     	success: function(html){
       		document.getElementById('ajax_resource').innerHTML=html;      
       }	
    });  
}

function get_resource_user_list(resourceId) {
	$.ajax({
        type:"POST",
     	url: "ea_ea_ajax_resource_user_list.do",
     	data:"resourceId="+resourceId,
     	cache: false,
     	success: function(html){
       		document.getElementById('ajax_resource').innerHTML=html;      
       }	
    });  
}



function createResourceUserRelation(resourceId,userId) {
	$.ajax({
        type:"POST",
     	url: "ea_ea_create_resource_user_relation.do",
     	data:"resourceId="+resourceId+"&userId="+userId,
     	cache: false,
     	success: function(html){
       		//document.getElementById('div_organize_rolelist').innerHTML=html;      
       }	
    });  
}

