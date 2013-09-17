function action_customer(url,para){
  
    $.ajax({
        type:"POST",
        url: "manager_customer_"+url,
        data:"beanname=Customer&"+para,
        cache: false,
        success: function(html){
        	if(url=="update.do"){
        		document.getElementById('div_action_result').innerHTML=html;
        	}else{
        	    document.getElementById('div_customer_table').innerHTML=html;
        	}
       	 	tip_info();   	 
     	 
        }
    });  
}

