function action_tpltree1(url,para){
  $.ajax({
         type:"POST",
         url: "manager_tpltree1_"+url,
         data:"beanname=Tpltree1&"+para,
         cache: false,
         success: function(html){
        	 document.getElementById('div_tpltree1_tree').innerHTML=html;
        	 tip_info();
           }
  });  
}


