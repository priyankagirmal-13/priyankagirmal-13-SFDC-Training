function validate(jobt,jobcrt) {
	console.log('validate');
    var type=document.getElementById(jobt).value;
	console.log('type'+type);
   /* var manager=document.getElementById("{!$Component.manager}");
	console.log('manager'+manager);
    var position=document.getElementById("{!$Component.No_Of_Pos}");
	console.log('position'+position);
    var ReqiredSkill=document.getElementById("{!$Component.Rid}");
		console.log('ReqiredSkill'+ReqiredSkill);

    var Qualification=document.getElementById("{!$Component.QualificationId}");
	console.log('Qualification'+Qualification);*/
	
	var certification=document.getElementById(jobcrt).value;
		console.log('certification'+certification);

	/*var check=document.getElementById("{!$Component.check}");
	var date=document.getElementById("{!$Component.date}");*/


    
    try
    {
        if(type == null && certification==null  )
        {
            alert("all details are mandetory");
            return false;
        }
		else{
			alert("saving data");
        return true;
		
		}
		
    }
    catch(e)
    {
        alert(e);
        return false;
    }
}