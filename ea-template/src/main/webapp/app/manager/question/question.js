function action_question(url,para){
  
    $.ajax({
        type:"POST",
        url: "manager_question_"+url,
        data:"beanname=Question&"+para,
        cache: false,
        success: function(html){
        	if(url=="update.do"){
        		document.getElementById('div_action_result').innerHTML=html;
        	}else{
        	    document.getElementById('div_question_table').innerHTML=html;
        	}
       	 	tip_info();   	 
     	 
        }
    });  
}

