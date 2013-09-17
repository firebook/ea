function action_rolegroup(url,para){
  $.ajax({
         type:"POST",
         url: "ea_rolegroup_"+url,
         data:"beanname=Rolegroup&"+para,
         cache: false,
         success: function(html){
        	 document.getElementById('div_rolegroup_tree').innerHTML=html;
        	
        	 $('#div_action_result',window.parent.frames['topFrame'].document).html(document.getElementById('div_action_result').innerHTML);
        	 setTimeout( " $('#div_action_result',window.parent.frames['topFrame'].document).html('')", 2000);
           }
  });  
}

