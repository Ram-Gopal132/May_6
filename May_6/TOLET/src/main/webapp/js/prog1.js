/**
 * 
 */

 function makeRequestObject()
	 {
		 var xmlHttp=false;
		 
		 try
		 {
			xmlHttp=new ActiveXObject('Msxml2.XMLHTTP');	 
		 }
		 catch(e)
		 	{
				 try
				 {
					 xmlHttp=new ActiveXObject('Microsoft.XMLHTTP');
					 
				 }
				 catch(E)
				 	{
						 
						 xmlHttp=false;
					 }
				 
			 }
			 
	if(!xmlHttp && typeof(XMLHttpRequest)!='undefined')
		{
			
			xmlHttp=new XMLHttpRequest();
		}
			 
	return xmlHttp;
		 
	 }
	 
	 
function crossCheck(val)
	{
		var xmlHttp=makeRequestObject();
		
		var _url='CrossCheck.jsp?uid='+val;
		xmlHttp.open('GET',_url,true);
		
		xmlHttp.onreadystatechange=function()
										{
											if(xmlHttp.readyState==4 && xmlHttp.status==200)
												{
													var content=xmlHttp.responseText;
													if(content)
													{
														
														document.getElementById("info").innerHTML=content;
													}	
													else
													{
														
														document.getElementById("info").innerHTML="";
													}
													
												}
											
											
										}	
		
		xmlHttp.send(null);
	}
	
	
	
	function getQuest()
		{
			var xmlHttp=makeRequestObject();
			var _url= 'GetQuestion.jsp?uid='+document.getElementById("userid").value;
			
			xmlHttp.open('GET',_url,true);
			
			xmlHttp.onreadystatechange=function()
											{
												if(xmlHttp.readyState==4 && xmlHttp.status==200)
													{
														var content=xmlHttp.responseText;
														if(content)
															{
																
																
																document.getElementById("info").innerHTML=content;
															}
														
														
													}
												
												
												
											}
											
											
			
			xmlHttp.send(null);
		}
		
		
		function populateSub(val)
		{
				var xmlHttp=makeRequestObject();
			var _url= 'PopulateSub.jsp?category='+val;
			
			xmlHttp.open('GET',_url,true);
			
			xmlHttp.onreadystatechange=function()
											{
												if(xmlHttp.readyState==4 && xmlHttp.status==200)
													{
														var content=xmlHttp.responseText;
														if(content)
															{
																
																
																document.getElementById("info").innerHTML=content;
															}
														
														
													}
												
												
												
											}
											
											
			
			xmlHttp.send(null);
		}
		
		
		function populateOneBHK(val)
		{
				var xmlHttp=makeRequestObject();
			var _url= 'SearchOneBhk.jsp?address='+val;
			
			xmlHttp.open('GET',_url,true);
			
			xmlHttp.onreadystatechange=function()
											{
												if(xmlHttp.readyState==4 && xmlHttp.status==200)
													{
														var content=xmlHttp.responseText;
														if(content)
															{
																
																
																document.getElementById("info").innerHTML=content;
															}
														
														
													}
												
												
												
											}
											
											
			
			xmlHttp.send(null);
		}
		
			function addCart(val)
		{
			
		
				var xmlHttp=makeRequestObject();
			var _url= 'AddToCart.jsp?pid='+val;
			
			xmlHttp.open('GET',_url,true);
			
			xmlHttp.onreadystatechange=function()
											{
												if(xmlHttp.readyState==4 && xmlHttp.status==200)
													{
														var content=xmlHttp.responseText;
														if(content)
															{
																
																alert(content);
																
															}
														
														
													}
												
												
												
											}
											
											
			
			xmlHttp.send(null);
		}