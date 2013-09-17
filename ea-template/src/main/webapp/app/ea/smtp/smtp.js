function ajax_smtp(id,column,columnValue){
  $.ajax({
         type:"POST",
         url: "ea_smtp_update.do",
         data:"column="+column+"&id="+id+"&columnValue="+columnValue,
         cache: false,
         success: function(html){
           document.getElementById('div_result').innerHTML="更新成功!";
           setTimeout( "document.getElementById('div_result').innerHTML=''", 1000);
           }
  });  
}

function ajax_page_smtp(column,columnValue){
	  $.ajax({
	         type:"POST",
	         url: "ea_smtp_update.do",
	         data:"column="+column+"&columnValue="+columnValue,
	         cache: false,
	         success: function(html){
	        	 location.reload();
	           }
	  });  
	}

function new_smtp(){
  $.ajax({
         type:"POST",
         url: "smtp_create.do",
         data:"",
         cache: false,
         success: function(html){
           document.getElementById('smtp').innerHTML=html;
           document.getElementById('div_result').innerHTML="新建成功!";
           setTimeout( "document.getElementById('div_result').innerHTML=''", 1000);
           }
  }); 
}

function delete_smtp(id){
  $.ajax({
         type:"POST",
         url: "smtp_delete.do",
         data:"id="+id,
         cache: false,
         success: function(html){
           document.getElementById('smtp').innerHTML=html;
           }
  }); 
}

function getPage_smtp(pageId){
  $.ajax({
         type:"POST",
         url: "smtp_get_page_data.do",
         data:"pageId="+pageId,
         cache: false,
         success: function(html){
           document.getElementById('smtp').innerHTML=html;
           }
  }); 
}