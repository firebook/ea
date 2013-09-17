function action_organizegroup(url,para){
  $.ajax({
         type:"POST",
         url: "ea_organizegroup_"+url,
         data:"beanname=Organizegroup&"+para,
         cache: false,
         success: function(html){
        	 document.getElementById('div_organizegroup_tree').innerHTML=html;
        	 setTimeout( "document.getElementById('div_action_result').innerHTML=''", 2000);
           }
  });  
}

