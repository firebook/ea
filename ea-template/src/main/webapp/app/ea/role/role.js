function action_role(url,para){
  $.ajax({
         type:"POST",
         url: "ea_role_"+url,
         data:"beanname=Role&"+para,
         cache: false,
         success: function(html){
        	 document.getElementById('div_role_tree').innerHTML=html;
        	 setTimeout( "document.getElementById('div_action_result').innerHTML=''", 2000);
           }
  });  
}

