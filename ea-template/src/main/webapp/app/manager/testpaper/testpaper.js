function action_testpaper(url,para){
  
    $.ajax({
        type:"POST",
        url: "manager_testpaper_"+url,
        data:"beanname=Testpaper&"+para,
        cache: false,
        success: function(html){
        	if(url=="update.do"){
        		document.getElementById('div_action_result').innerHTML=html;
        	}else{
        	    document.getElementById('div_testpaper_table').innerHTML=html;
        	}
       	 	tip_info();   	 
     	 
        }
    });  
}

