 var c=0;   
	 function update_value(chk_bx){
		      if(chk_bx.checked)
		         {
		             var a="checked";
		 	   c+=1;
		 }
		         else{
		             var a="not checked";
		 		if(c>0){
		 			c-=1;
		 		}else if(c==0){
		 			c=0;
		 		}
		         }
		      if (c==0)
		    	  {
			         document.getElementById('wish').innerHTML ='Cart : Empty';

		    	  }else{
		         document.getElementById('wish').innerHTML ='Cart : '+c+'';
		    	  }
		     }